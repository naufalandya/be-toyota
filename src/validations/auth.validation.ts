import Joi from 'joi'

export const registerSchema = Joi.object({
  email: Joi.string()
    .email()
    .required()
    .messages({
      "string.email": "Email format is invalid.",
      "any.required": "Email is required.",
    }),
  password: Joi.string()
    .min(8)
    .required()
    .messages({
      "string.min": "Password must be at least 8 characters long.",
      "any.required": "Password is required.",
    }),
  fullname: Joi.string()
    .min(3)
    .required()
    .messages({
      "string.min": "Full name must be at least 3 characters long.",
      "any.required": "Full name is required.",
    }),
  username: Joi.string()
    .alphanum()
    .min(3)
    .max(30)
    .required()
    .messages({
      "string.alphanum": "Username must only contain letters and numbers.",
      "string.min": "Username must be at least 3 characters long.",
      "string.max": "Username cannot exceed 30 characters.",
      "any.required": "Username is required.",
    }),
});


export const loginSchemaUsername = Joi.object({
  username: Joi.string()
    .alphanum()
    .min(3)
    .max(30)
    .required()
    .messages({
      "string.alphanum": "Username must only contain letters and numbers.",
      "string.min": "Username must be at least 3 characters long.",
      "string.max": "Username cannot exceed 30 characters.",
      "any.required": "Username is required.",
    }),
  password: Joi.string()
    .min(8)
    .required()
    .messages({
      "string.min": "Password must be at least 8 characters long.",
      "any.required": "Password is required.",
    }),
});


export const loginSchemaEmail = Joi.object({
  email: Joi.string()
    .email({ tlds: { allow: false } }) // Memvalidasi email
    .required()
    .messages({
      "string.email": "Please provide a valid email address.",
      "any.required": "Email is required.",
    }),
  password: Joi.string()
    .min(8)
    .required()
    .messages({
      "string.min": "Password must be at least 8 characters long.",
      "any.required": "Password is required.",
    }),
});
