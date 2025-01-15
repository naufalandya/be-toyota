import { NextFunction, Request, Response } from "express"
import { imagekit } from "../../libs/imagekit.lib";
import path from "path";
import prisma from "../../libs/prisma.lib";
import { UserRequest } from "../../middlewares/authenticate.middleware";

export default new class UserController {
    async editProfile(req: Request, res: Response, next: NextFunction) {
        try {

            const id = Number((req as any as UserRequest).user?.id)
            const user = await prisma.users.findUnique({
                where: {
                  id: id,
                },
              });   
              
            if (!user) {
                res.status(404).json({ success: true, message: "no profile is found" });
                return;
            }

            const { nama, nik, email,  password  } = req.body;
        
            let avatarUrl: string | undefined;

            console.log(req.file)
        
            if (req.file) {
              const file = req.file;
              const allowedMimeTypes = ["image/jpeg", "image/png"];
              if (!allowedMimeTypes.includes(file.mimetype)) {
                res.status(400).json({ success: false, message: "Invalid file type. Only JPEG and PNG are allowed." });
                return;
              }
        
              const fileBase64 = file.buffer.toString("base64");
              const fileBase64WithPrefix = `data:${file.mimetype};base64,${fileBase64}`;
        
              try {
                const uploadResponse = await imagekit.upload({
                  fileName: `${Date.now()}${path.extname(file.originalname)}`,
                  file: fileBase64WithPrefix,
                });
        
                avatarUrl = uploadResponse.url;
              } catch (uploadError) {
                console.error("Error uploading file:", uploadError);
                res.status(500).json({ success: false, message: "Failed to upload file. Please try again." });
                return;
              }
            }
        
            try {
              const updatedUser = await prisma.users.update({
                where: {
                  id : id,
                },
                data: {
                  nama,
                  nik,
                  password,
                  email,
                  avatar_link: avatarUrl || undefined, 
                },
              });
        
              res.status(200).json({
                success: true,
                message: "Profile updated successfully.",
                data: updatedUser,
              });
            } catch (dbError) {
              console.error("Database error:", dbError);
              res.status(500).json({ success: false, message: "Failed to update profile. Please try again." });
            }
          } catch (err) {
            next(err);
          }
    }


    async getProfile(req: Request, res: Response, next: NextFunction) {
        try {

            const id = Number((req as any as UserRequest).user?.id)
            const user = await prisma.users.findUnique({
                where: {
                  id: id,
                },
              });        

              res.status(200).json({
                success: true,
                message: "success.",
                data: user,
              });
        
            } catch (err) {
            next(err);
        }
    }

    async editProfileByAdmin(req: Request, res: Response, next: NextFunction) {
        try {
          const { id, nama, jabatan, email, supervisor } = req.body;
      
          const updateData: any = {};
      
          if (nama) updateData.nama = nama;
          if (jabatan) updateData.jabatan = jabatan;
          if (email) updateData.email = email;
          if (supervisor) updateData.supervisor = supervisor;
      
          if (!id) {
             res.status(400).json({
              success: false,
              message: "ID pengguna harus disertakan.",
            });
            return
          }
      
          const updatedUser = await prisma.users.update({
            where: {
              id: id, 
            },
            data: updateData, 
          });
      
          res.status(200).json({
            success: true,
            message: "Profil pengguna berhasil diperbarui.",
            data: updatedUser,
          });
        } catch (err) {
          next(err);
        }
      }


      async addUser(req: Request, res: Response, next: NextFunction) {
        try {
          // Ambil data dari body request
          const { nama, jabatan, email, supervisor } = req.body;
      
          const existingUser = await prisma.users.findUnique({
            where: { email },
          });
      
          if (existingUser) {
            res.status(400).json({
              success: false,
              message: "Email sudah terdaftar.",
            });
            return 
          }
      
          const newUserData: any = {};
      
          if (nama) newUserData.nama = nama;
          if (jabatan) newUserData.jabatan = jabatan;
          if (email) newUserData.email = email;
          if (supervisor) newUserData.supervisor = supervisor;
      
          const newUser = await prisma.users.create({
            data: newUserData,
          });
      
          res.status(201).json({
            success: true,
            message: "Akun pengguna berhasil ditambahkan.",
            data: newUser,
          });
        } catch (err) {
          next(err);
        }
      }
      
      async deleteUserById(req: Request, res: Response, next: NextFunction) {
        try {
          const id = Number(req.params.id);
      
          if (isNaN(id)) {
           res.status(400).json({
              success: false,
              message: "ID tidak valid.",
            });
            return 
          }
      
          const user = await prisma.users.findUnique({
            where: {
              id: id,
            },
          });
      
          if (!user) {
            res.status(404).json({
              success: false,
              message: "Pengguna tidak ditemukan.",
            });
            return 
          }
      
          await prisma.users.delete({
            where: {
              id: id,
            },
          });
      
          res.status(200).json({
            success: true,
            message: "Pengguna berhasil dihapus.",
          });
        } catch (err) {
          next(err);
        }
      }
      
      async getUsers(req: Request, res: Response, next: NextFunction) {
        try {
      
          const user = await prisma.users.findMany({
            select : {
                nama : true,
                email : true,
                jabatan : true,
                supervisor : true,
            }
          });
      
      
          res.status(200).json({
            success: true,
            message: "Pengguna berhasil dihapus.",
            data : user,
          });
        } catch (err) {
          next(err);
        }
      }

    async forgotPassword(req: Request, res: Response, next: NextFunction) {
        try {
            // Logic here
        } catch (err) {
            next(err);
        }
    }
}
