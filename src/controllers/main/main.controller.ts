import { NextFunction, Request, Response } from "express"
import prisma from "../../libs/prisma.lib";
import { UserRequest } from './../../middlewares/authenticate.middleware';
import { startOfMonth, endOfMonth } from "date-fns"; 
import { sendEmail } from "../../libs/nodemailer.lib";


export default new class MainController {
    async createIncentive(req: Request, res: Response, next: NextFunction) {
        try {
          const { 
            nik, 
            name, 
            jabatan, 
            periode_awal, 
            periode_akhir, 
            customer, 
            t_do_dms, 
            t_lunas_ar, 
            nama_unit, 
            poin, 
            nilai_per_poin 
          } = req.body;

          console.log(req.body)
      
          if (!nik || !name || !jabatan || !periode_awal || !periode_akhir) {
           res.status(400).json({
              success: false,
              message: "NIK, Nama, Jabatan, Periode Awal, dan Periode Akhir harus diisi.",
            });
            return 
          }
      
          const periodeAwalDate = new Date(periode_awal);
          const periodeAkhirDate = new Date(periode_akhir);
          const tDoDmsDate = t_do_dms ? new Date(t_do_dms) : null;
          const tLunasArDate = t_lunas_ar ? new Date(t_lunas_ar) : null;
      
          if (periodeAkhirDate < periodeAwalDate) {
            res.status(400).json({
              success: false,
              message: "Periode Akhir tidak boleh lebih kecil dari Periode Awal.",
            });
            return 
          }
      
          let jumlahInsentif = 0;
          if (poin && nilai_per_poin) {
            jumlahInsentif = poin * nilai_per_poin;
          }

          console.log(poin, nilai_per_poin)

          const user = await prisma.users.findUnique({
            where : {
              nik : nik
            }
          })

          if (!user) {
            res.status(400).json({
              success: false,
              message: "NIK doessnt belong to any account",
            });
            return 
          }
      
          const newIncentiveData: any = {
            nik,
            nama : name,
            jabatan,
            periode_awal: periodeAwalDate,
            periode_akhir: periodeAkhirDate,
            customer,
            user_profile_id : user.id,
            t_do_dms: tDoDmsDate,
            t_lunas_ar: tLunasArDate,
            nama_unit,
            poin : Number(poin),
            nilai_per_poin : Number(nilai_per_poin),
            jumlah_insentif: Number(jumlahInsentif),
            status: "pending",
          };
      
          const newIncentive = await prisma.insentive.create({
            data: newIncentiveData,
          });
      
          res.status(201).json({
            success: true,
            message: "Data insentif berhasil ditambahkan.",
            data: newIncentive,
          });
        } catch (err) {
          next(err);
        }
      }

      async updateIncentiveById(req: Request, res: Response, next: NextFunction) {
        try {
          const { id } = req.params; // ID insentif dari parameter URL
          const { 
            nik, 
            name, 
            jabatan, 
            periode_awal, 
            periode_akhir, 
            customer, 
            t_do_dms, 
            t_lunas_ar, 
            nama_unit, 
            poin, 
            nilai_per_poin 
          } = req.body;
      
          if (!id) {
            res.status(400).json({
              success: false,
              message: "ID insentif harus disediakan.",
            });
            return 
          }
      
          const existingIncentive = await prisma.insentive.findUnique({
            where: { id: id },
          });
      
          if (!existingIncentive) {
             res.status(404).json({
              success: false,
              message: "Data insentif tidak ditemukan.",
            });
            return
          }
      
          const updateData: any = {};
      
          if (nik) {
            const user = await prisma.users.findUnique({ where: { nik } });
            if (!user) {
              res.status(400).json({
                success: false,
                message: "NIK tidak terdaftar dalam akun manapun.",
              });
              return 
            }
            updateData.nik = nik;
            updateData.user_profile_id = user.id;
          }
      
          if (name) updateData.nama = name;
          if (jabatan) updateData.jabatan = jabatan;
          if (periode_awal) updateData.periode_awal = new Date(periode_awal);
          if (periode_akhir) {
            const periodeAkhirDate = new Date(periode_akhir);
            if (updateData.periode_awal && periodeAkhirDate < updateData.periode_awal) {
              res.status(400).json({
                success: false,
                message: "Periode Akhir tidak boleh lebih kecil dari Periode Awal.",
              }); return 
            }
            updateData.periode_akhir = periodeAkhirDate;
          }
      
          if (customer) updateData.customer = customer;
          if (t_do_dms) updateData.t_do_dms = new Date(t_do_dms);
          if (t_lunas_ar) updateData.t_lunas_ar = new Date(t_lunas_ar);
          if (nama_unit) updateData.nama_unit = nama_unit;
          if (poin) updateData.poin = Number(poin);
          if (nilai_per_poin) updateData.nilai_per_poin = Number(nilai_per_poin);
          if (poin && nilai_per_poin) {
            updateData.jumlah_insentif = Number(poin) * Number(nilai_per_poin);
          }
      
          const updatedIncentive = await prisma.insentive.update({
            where: { id:id },
            data: updateData,
          });
      
          res.status(200).json({
            success: true,
            message: "Data insentif berhasil diperbarui.",
            data: updatedIncentive,
          });

          return 
        } catch (err) {
          next(err);
        }
      }
      

      async getAllIncentives(req: Request, res: Response, next: NextFunction) {
        try {

           const id = Number((req as any as UserRequest).user?.id)
            
          const allIncentives = await prisma.insentive.findMany(
            {
                where : {
                    user_profile_id : id
                }
            }
          );
          if (!allIncentives) {
            res.status(400).json({
               success: false,
               message: "data not found",
             });
             return 
           }
      
          res.status(200).json({
            success: true,
            data: allIncentives,
          });
        } catch (err) {
          next(err);
        }
      }

      async getAllIncentivesAllTime(req: Request, res: Response, next: NextFunction) {
        try {

          console.log("lol")

           const id = Number((req as any as UserRequest).user?.id)
            
          const allIncentives = await prisma.insentive.findMany(
          );
          console.log(allIncentives)
          if (!allIncentives) {
            res.status(400).json({
               success: false,
               message: "data not found",
             });
             return 
           }
      
          res.status(200).json({
            success: true,
            data: allIncentives,
          });
        } catch (err) {
          next(err);
        }
      }



      async getIncentivesThisMonth(req: Request, res: Response, next: NextFunction) {
        try {
          const now = new Date();
          
          // Get the start and end of the current month
          const startOfThisMonth = new Date(now.getFullYear(), now.getMonth(), 1);
          const endOfThisMonth = new Date(now.getFullYear(), now.getMonth() + 1, 0, 23, 59, 59);
          
          // Grouping and aggregation using Prisma
          const incentives = await prisma.insentive.groupBy({
            by: ['user_profile_id'],
            where: {
              periode_awal: { gte: startOfThisMonth },
              periode_akhir: { lte: endOfThisMonth },
            },
            _sum: {
              poin: true,
              jumlah_insentif: true,
              contest_insentif: true,
              sbi_insentif: true,
            },
          });
          
          // Fetch related user profiles
          const userProfiles = await prisma.users.findMany({
            where: {
              id: { in: incentives.map((i) => i.user_profile_id) },
            },
            select: {
              id: true,
              nama: true,
              supervisor: true,
              nik: true,
              insentives: {
                where: {
                  created_at: {
                    gte: startOfThisMonth, // Greater than or equal to the first day of the month
                    lte: endOfThisMonth,   // Less than or equal to the last day of the month
                  },
                },
                select: {
                  status: true,
                },
              },
            },
          });
          
          // Merge user profile data with aggregated incentives
          const result = incentives.map((incentive) => {
            const userProfile = userProfiles.find((user) => user.id === incentive.user_profile_id);
      
            return {
              id: userProfile?.id,
              status: userProfile?.insentives[0]?.status ?? 'Unknown',
              nama: userProfile?.nama ?? 'Unknown',
              supervisor: userProfile?.supervisor ?? 'Unknown',
              totalPoin: incentive._sum.poin ?? 0,
              totalInsentif: incentive._sum.jumlah_insentif ?? 0,
              totalPromotion: (incentive._sum.contest_insentif ?? 0) + (incentive._sum.sbi_insentif ?? 0),
            };
          });
      
          res.status(200).json({
            success: true,
            result: result,
          });
        } catch (err) {
          next(err);
        }
      }

      async getIncentiveById(req: Request, res: Response, next: NextFunction) {
        try {
          const { id } = req.params; // Mengambil id dari parameter URL
          
          // Menarik data insentif berdasarkan id
          const incentive = await prisma.insentive.findUnique({
            where: {
              id: id, // Pencarian berdasarkan ID
            },
            include: {
              user_profile: true, // Jika perlu menyertakan profil pengguna terkait
            },
          });
    
          if (!incentive) {
            res.status(404).json({
              success: false,
              message: 'Incentive not found',
            });

            return 
          }
    
          // Kalkulasi total insentif dan insentif promotion jika diperlukan
          const totalInsentif = (incentive.poin ?? 0) * (incentive.jumlah_insentif ?? 0);
          const tInsentifPromotion = (incentive.contest_insentif ?? 0) + (incentive.sbi_insentif ?? 0);
    
          const result = {
            nama: incentive.nama,
            nik: incentive.nik,
            jabatan: incentive.jabatan,
            periode_awal: incentive.periode_awal,
            periode_akhir: incentive.periode_akhir,
            customer: incentive.customer,
            tDoDms: incentive.t_do_dms,
            tLunasAr: incentive.t_lunas_ar,
            nama_unit: incentive.nama_unit,
            poin: incentive.poin,
            nilai_per_poin: incentive.nilai_per_poin,
            jumlah_insentif: incentive.jumlah_insentif,
            contest_insentif: incentive.contest_insentif,
            sbi_insentif: incentive.sbi_insentif,
            status: incentive.status,
            user_profile: incentive.user_profile, // Menyertakan informasi profil pengguna
            totalInsentif,
            tInsentifPromotion,
          };
    
         res.status(200).json({
            success: true,
            data: result,
          });
        } catch (err) {
          next(err); // Menangani error secara global
        }
      }
    

      async editStatusToSuccess(req: Request, res: Response, next: NextFunction) {
        try {
          const { id } = req.params; 
      
          // Get the start and end of the current month
          const now = new Date();
          const startOfMonth = new Date(now.getFullYear(), now.getMonth(), 1);
          const endOfMonth = new Date(now.getFullYear(), now.getMonth() + 1, 0, 23, 59, 59);
      
          // Update the status of incentives for the specific user
          const data = await prisma.insentive.updateMany({
            where: {
              user_profile_id: Number(id),
              created_at: {
                gte: startOfMonth,
                lte: endOfMonth,
              },
            },
            data: {
              status: "success",
            },
          });
      
          // Fetch the user's details
          const user = await prisma.users.findUnique({
            where: {
              id: Number(id),
            },
          });
      
          // If the user exists, prepare the email content
          if (user) {
            // Calculate the total points and incentive amount for the user
            const incentives = await prisma.insentive.aggregate({
              _sum: {
                poin: true,
                jumlah_insentif: true,
                contest_insentif: true,
                sbi_insentif: true,
              },
              where: {
                user_profile_id: Number(id),
                created_at: {
                  gte: startOfMonth,
                  lte: endOfMonth,
                },
              },
            });
      
            // Prepare the email content with incentive details
            const message = `
              <h1>Incentive Status Update</h1>
              <p>Dear ${user.nama},</p>
              <p>Your incentive status has been updated to <strong>Success</strong> for the period of ${startOfMonth.toLocaleDateString()} to ${endOfMonth.toLocaleDateString()}.</p>
              <p><strong>Total Points:</strong> ${incentives._sum.poin ?? 0}</p>
              <p><strong>Total Incentive Amount:</strong> ${incentives._sum.jumlah_insentif ?? 0}</p>
              <p><strong>Total Promotion Amount:</strong> ${(incentives._sum.contest_insentif ?? 0) + (incentives._sum.sbi_insentif ?? 0)}</p>
              <p>Thank you for your continued efforts!</p>
              <p>Best regards,</p>
              <p>Your Company Team</p>
            `;

            console.log(message)
      
            // Send the email to the user
            await sendEmail('Incentive Status Update', message, user.email);
      
            // Return success response
            res.json({
              success: true,
              message: 'Incentive status updated and email sent successfully!',
              data,
            });
          } else {
            res.status(404).json({ success: false, message: 'User not found' });
          }
        } catch (err) {
          next(err);
        }
      }
      
      
      async deleteInsentive(req: Request, res: Response, next: NextFunction) {
        try {
          const { id } = req.params; 
      
          const insentive = await prisma.insentive.findUnique({
            where: {
              id: id, 
            },
          });
      
          if (!insentive) {
            res.status(404).json({
              success: false,
              message: "Insentif tidak ditemukan.",
            });
            return 
          }
      
          await prisma.insentive.delete({
            where: {
              id: id,
            },
          });
      
          res.status(200).json({
            success: true,
            message: "Insentif berhasil dihapus.",
          });
        } catch (err) {
          next(err); 
        }
      }


      async getDataThisMonth(req: Request, res: Response, next: NextFunction) {
        try {
            const now = new Date();

            // Mendapatkan waktu mulai dan akhir bulan ini
            const startOfThisMonth = startOfMonth(now);
            const endOfThisMonth = endOfMonth(now);

            // Mengambil data yang dibuat di bulan ini
            const dataThisMonth = await prisma.insentive.findMany({
                where: {
                    created_at: {
                        gte: startOfThisMonth,
                        lte: endOfThisMonth,
                    },
                },
            });

            // Menyusun response jika data ditemukan
            if (dataThisMonth.length === 0) {
                res.status(404).json({
                    success: false,
                    message: "Tidak ada data untuk bulan ini.",
                });
                return;
            }

            res.status(200).json({
                success: true,
                data: dataThisMonth,
            });
        } catch (err) {
            next(err);
        }
    }
}




