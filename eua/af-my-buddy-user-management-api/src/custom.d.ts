declare namespace Express {
    export interface Request {
        auth?: JwtPayload;
    }
}
