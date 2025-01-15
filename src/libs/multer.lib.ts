import type { Request } from "express";
import multer from "multer";
import { ErrorWithStatusCode } from "../class/error";
import path from "path";
import { uuidv7 } from "uuidv7";

const imageUpload = multer({
  storage: multer.memoryStorage(),
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    const mimetypes = ["image/png", "image/jpg", "image/jpeg"];
    if (mimetypes.includes(file.mimetype)) {
      callback(null, true); 
    } else {
      callback(new Error(`Only ${mimetypes.join(", ")} are allowed to upload!`)); 
    }
  },
  limits: {
    fileSize: 1024 * 1024 * 5,
  },
});

const pdfUpload = multer({
  storage: multer.memoryStorage(),  
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    console.log("lol")
    console.log(file)
    const mimetypes = ["application/pdf"];
    if (mimetypes.includes(file.mimetype)) {
      callback(null, true);
    } else {
      callback(new ErrorWithStatusCode(`Only ${mimetypes.join(", ")} are allowed to upload!`, 400));
    }
  },
  limits: {
    fileSize: 20 * 1024 * 1024, 
  },
});

const pdfUploadCustom = multer({
  storage: multer.memoryStorage(),  
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    console.log("lol")
    console.log(file)
    const mimetypes = ["application/pdf"];
    if (mimetypes.includes(file.mimetype)) {
      callback(null, true);
    } else {
      callback(new ErrorWithStatusCode(`Only ${mimetypes.join(", ")} are allowed to upload!`, 400));
    }
  },
  limits: {
    fileSize: 20 * 1024 * 1024, 
  },
});

const UPLOAD_DIR = process.env.UPLOAD_DIR || "/app/uploads";

const storage = multer.diskStorage({
    filename: (req, file, cb) => {
      cb(null, `${uuidv7()}-${file.originalname}`);
    },
});


export const uploadLegal =  multer({
  storage,
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    const mimetypes = ["image/jpeg", "image/png", "application/pdf"];
      if (mimetypes.includes(file.mimetype)) {
        callback(null, true);
      } else {
        callback(new ErrorWithStatusCode(`Only ${mimetypes.join(", ")} are allowed to upload!`, 400));
      }
  },
  limits: { fileSize: 20 * 1024 * 1024 }, // Maks 5 MB
});



const storage_one = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, UPLOAD_DIR);
  },
  filename: (req, file, cb) => {
    cb(null, `${uuidv7()}-${file.originalname}`);
  },
});

const storageA = multer.memoryStorage(); // Simpan file di memori
export const uploadA= multer({
  storage : storageA,
  limits: { fileSize: 5 * 1024 * 1024 }, // Maksimal 5 MB
  fileFilter: (req, file, cb) => {
    console.log(file)
    const allowedMimeTypes = ["image/jpeg", "image/png"];
    if (allowedMimeTypes.includes(file.mimetype)) {
      cb(null, true);
    } else {
      cb(new Error("Invalid file type. Only JPEG and PNG are allowed."));
    }
  },
});

export const uploadMiddleware = multer({
  storage : storage_one,
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    const allowedTypes = ["application/pdf"];
    if (allowedTypes.includes(file.mimetype)) {
      callback(null, true);
    } else {
      callback(new ErrorWithStatusCode("Only PDF files are allowed!", 400));
    }
  },
  limits: { fileSize: 20 * 1024 * 1024 }, // Maksimal 20 MB per file
}).array("pdf", 5); // Maksimal 5 file

export const uploadMiddlewareMore = multer({
  storage : storage_one,
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    const allowedTypes = ["image/jpeg", "image/png", "application/pdf"];
    if (allowedTypes.includes(file.mimetype)) {
      callback(null, true);
    } else {
      callback(new ErrorWithStatusCode("Only PDF files are allowed!", 400));
    }
  },
  limits: { fileSize: 20 * 1024 * 1024 }
}).array("pdf", 5); 

const storage_two = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, UPLOAD_DIR);
  },
  filename: (req, file, cb) => {
    cb(null, `${uuidv7()}-${file.originalname}`);
  },
});

export const uploadMiddlewareFlexible = multer({
  storage : storage_two,
  fileFilter: (req: Request, file: Express.Multer.File, callback: multer.FileFilterCallback) => {
    const allowedTypes = ["application/pdf"];
    if (allowedTypes.includes(file.mimetype)) {
      callback(null, true);
    } else {
      callback(new ErrorWithStatusCode("Only PDF files are allowed!", 400));
    }
  },
  limits: { fileSize: 20 * 1024 * 1024 }, // Maksimal 20 MB per file
}).single("pdf"); 

export default {
  image: imageUpload,
  pdf: pdfUpload.fields([{ name: "pdf", maxCount: 10 }]), 
  pdfSize : pdfUploadCustom,
  legal : uploadLegal.single("image")
};