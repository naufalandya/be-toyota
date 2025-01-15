
import { NextFunction, Request } from 'express';
import Response from 'express';
import { ErrorWithStatusCode } from '../class/error';
import path from 'path';
import { imagekit } from '../libs/imagekit.lib';

export const editProfile = async (req: Request, res: Response, next: NextFunction): Promise<{ success: boolean; message: string }> => {
    try {
      // Validasi apakah file tersedia
      if (!req.file) {
        return { success: false, message: "Image is required." };
      }
  
      const file = req.file;
  
      const allowedMimeTypes = ["image/jpeg", "image/png"];
      if (!allowedMimeTypes.includes(file.mimetype)) {
        return { success: false, message: "Invalid file type. Only JPEG and PNG are allowed." };
      }
  
      const fileBase64 = file.buffer.toString("base64");
      const fileBase64WithPrefix = `data:${file.mimetype};base64,${fileBase64}`;
  
      try {
        const uploadResponse = await imagekit.upload({
          fileName: `${Date.now()}${path.extname(file.originalname)}`,
          file: fileBase64WithPrefix,
        });
  
        console.log("File uploaded successfully:", uploadResponse.url);
        return { success: true, message: "File uploaded successfully." };
      } catch (uploadError) {
        console.error("Error uploading file:", uploadError);
        return { success: false, message: "Failed to upload file. Please try again." };
      }
    } catch (err) {
      console.error("Unexpected error:", err);
      return { success: false, message: "An unexpected error occurred." };
    }
  };
