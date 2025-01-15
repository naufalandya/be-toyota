import { NextFunction, Request, Response } from "express"
import prisma from "../../libs/prisma.lib";
import { UserRequest } from './../../middlewares/authenticate.middleware';
import { startOfMonth, endOfMonth } from "date-fns"; 


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
      
          const newIncentiveData: any = {
            nik,
            nama : name,
            jabatan,
            periode_awal: periodeAwalDate,
            periode_akhir: periodeAkhirDate,
            customer,
            t_do_dms: tDoDmsDate,
            t_lunas_ar: tLunasArDate,
            nama_unit,
            poin : Number(poin),
            nilai_per_poin : Number(poin),
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
      
          const startOfThisMonth = startOfMonth(now);
          const endOfThisMonth = endOfMonth(now);
      
          const incentives = await prisma.insentive.findMany({
            where: {
              periode_awal: { gte: startOfThisMonth },
              periode_akhir: { lte: endOfThisMonth },
            },
            include: {
              user_profile: true,
            },
          });
      
          const result = incentives.map((incentive) => {
            const totalInsentif = (incentive.poin ?? 0) * (incentive.jumlah_insentif ?? 0);
            const tInsentifPromotion = (incentive.contest_insentif ?? 0) + (incentive.sbi_insentif ?? 0);
      
            return {
              nama: incentive.nama,
              supervisor: incentive.user_profile?.supervisor,
              totalInsentif: totalInsentif,
              tInsentifPromotion: tInsentifPromotion,
              status: incentive.status,
            };
          });
      
          res.status(200).json({
            success: true,
            data: result,
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
      
          if (insentive.status !== "pending") {
            res.status(400).json({
              success: false,
              message: "Insentif sudah tidak dalam status pending.",
            });
            return 
          }
      
          const updatedInsentive = await prisma.insentive.update({
            where: {
              id: id,
            },
            data: {
              status: "success", 
            },
          });
      
          res.status(200).json({
            success: true,
            message: "Status insentif berhasil diubah menjadi success.",
            data: updatedInsentive,
          });
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
}




