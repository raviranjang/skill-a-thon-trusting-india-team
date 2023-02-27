import { Request, Response, NextFunction } from 'express';
import { validationResult, ValidationChain } from 'express-validator';

export const validate = (validations: ValidationChain[]) => {
    return async (req: Request, res: Response, next: NextFunction) => {
        await Promise.all(validations.map(validation => validation.run(req)));
        const errors = validationResult(req);
        if (errors.isEmpty()) {
            return next();
        }
        res.status(400).json({ errors: errors.array() });
    };

    // return async (req: Request, res: Response, next: NextFunction) => {
    //     for (let validation of validations) {
    //         const result: any = await validation.run(req);
    //         if (result?.errors?.length) break;
    //     }

    //     const errors = validationResult(req);
    //     if (errors.isEmpty()) {
    //       return next();
    //     }

    //     res.status(400).json({ errors: errors.array() });
    // };
}