//import libraries
import express, { Request, Response, NextFunction } from "express";
import bodyparser from 'body-parser';
import YAML from 'yaml';
import swaggerUI from 'swagger-ui-express';
import morgan from "morgan";
import fs from 'fs';
import path from 'path';
import cors from "cors";
import { config } from "dotenv";
import cookieParser from 'cookie-parser';
import helmet from 'helmet';

import http from "http"; 
import { Server } from "socket.io"; 
import client from "prom-client"; 

import { ErrorWithStatusCode, handleError } from "./class/error";
import api from "./api/v1.api";

config();

const allowedOrigins = [
  "https://domain1.com", 
  "http://localhost:3001", 
  "http://localhost:3002", 
  "http://localhost:3000", 
  "http://localhost:5713", 
  "http://localhost:5714",
  "http://localhost:5174",
  "http://localhost:5173",   
  "http://localhost:8081", 
  "http://localhost:5173",
  "http://localhost:5555",
  "http://localhost:5556",
  "http://localhost:5557",
  "https://imost.ptplnnr.com",
  "http://103.113.134.234:401",
  "http://103.113.134.234",
  "http://103.113.134.234:400",
  "https://idx.google.com",
  "https://pln-nr.vercel.app/",
  "https://pln-nr.vercel.app",
  "https://idx.google.com/appplnnr-2542597",
  "https://alobro.my.id/",
  "https://alobro.my.id",
  "http://localhost:3002"
];

//environment
const NODE_ENV = process.env.NODE_ENV || "development";
const PORT = parseInt(process.env.PORT || "3000", 10);

const file = fs.readFileSync(`${__dirname}/api-docs.yaml`, "utf-8");
const swaggerDocument = YAML.parse(file);

const app = express()

const server = http.createServer(app);

const io = new Server(server);


const register = new client.Registry();
client.collectDefaultMetrics({ register });

const httpRequestDurationMs = new client.Histogram({
  name: "http_request_duration_ms",
  help: "Duration of HTTP requests in ms",
  labelNames: ["method", "route", "status_code"],
  buckets: [50, 100, 200, 500, 1000, 2000, 5000],
});

register.registerMetric(httpRequestDurationMs);

app.use((req: Request, res: Response, next: NextFunction) => {
  const start = Date.now();
  res.on("finish", () => {
    const duration = Date.now() - start;
    httpRequestDurationMs
      .labels(req.method, req.route?.path || req.url, String(res.statusCode))
      .observe(duration);
  });
  next();
});

app.get("/metrics", async (req: Request, res: Response) => {
  res.set("Content-Type", register.contentType);
  res.end(await register.metrics());
});


  app.use(cookieParser())
  .use(express.json())
  .use(helmet.xssFilter())
  .use(helmet.noSniff())
  .use(helmet.frameguard({ action: 'deny' }))
  .use(helmet.hidePoweredBy())
  .use(
    helmet.referrerPolicy({ policy: 'no-referrer' })
  )
  .set('trust proxy', true)
  .use(express.urlencoded({ extended: true }))
  .use(bodyparser.urlencoded({ extended: true }))
  .use("/style.css", express.static(path.join(__dirname, "./style.css")))
  .use(
    "/v1/api-docs",
    swaggerUI.serve,
    swaggerUI.setup(swaggerDocument, {
      customCssUrl: "/style.css"
    })
)
  .use(morgan("dev"))
  .use(
    cors({
      origin: (origin, callback) => {
        if (!origin || allowedOrigins.includes(origin)) {
          callback(null, true);
        } else {
          callback(new ErrorWithStatusCode("Not allowed by CORS", 400));
        }
      },
      methods: ["GET", "POST", "PUT", "DELETE"],
      allowedHeaders: ["Content-Type", "Authorization"],
      credentials: false,
      optionsSuccessStatus: 200,
    })
  )
  .use("/api/v1", api)
  .get('/error', (req: Request, res: Response, next : NextFunction) => {
    try {
      return next(new Error("custom error !"));
    } catch (err) {
      next(err)
    }
  })
  .get("/", (req: Request, res: Response) => {
     res.send(`Hello, TypeScript with Express in ${NODE_ENV} mode!`);
  })
  .use((err : Error, req : Request, res : Response, next : NextFunction) => {
    handleError(req, err, res)
  })
  //404
  .use((req, res, next) => {
    res.status(404).json({
      status: false,
      message: `are you lost? ${req.method} ${req.url} is not registered!`,
      data: null,
    });
  })

  io.on("connection", (socket) => {
    console.log("A client connected for real-time monitoring.");

    app.use((req: Request, res: Response, next: NextFunction) => {
      res.on("finish", () => {
        socket.emit("traffic", {
          method: req.method,
          url: req.url,
          status: res.statusCode,
          timestamp: new Date().toISOString(),
        });
      });
      next();
    });
  });

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT} in ${NODE_ENV} mode.`);
});


export default app