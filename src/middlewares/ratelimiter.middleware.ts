import rateLimit from 'express-rate-limit';

export const specificLimiterPost = rateLimit({
  windowMs: 1 * 60 * 1000,
  max: 200,
  message: {
    error: 'Too much request, try again later.',
  },
  standardHeaders: true,
  legacyHeaders: false,
});

export const specificLimiterGet = rateLimit({
    windowMs: 1 * 60 * 1000,
    max: 200,
    message: {
      error: 'Too much request, try again later.',
    },
    standardHeaders: true,
    legacyHeaders: false,
});
  