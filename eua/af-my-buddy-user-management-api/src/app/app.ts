import express, {
    Express,
    Router,
    Request,
    Response,
    NextFunction
} from "express";
import cors from "cors";
import dotenv from "dotenv";
import { routes, connectMongo } from ".";

interface InitAppParams {
    app: Express;
}

const initApp = ({ app }: InitAppParams) => {
    const router: Router = express.Router();
    dotenv.config();
    app.use(cors());
    app.set("trust proxy", true);
    app.use(express.urlencoded({ extended: true, limit: "200mb" }));
    app.use(express.json({ limit: "200mb" }));
    app.use(router);
    connectMongo();

    app.use((err: Error, req: Request, res: Response, next: NextFunction) => {
        if (process.env.NODE_ENV === "dev") {
            console.log("Error", err);
            res.status(500).json({
                message: err?.message,
                err
            });
        } else {
            res.status(500).json({
                message: "Internal server error"
            });
        }
    });

    const port: string = process.env.PORT || "3000";
    router.use("/ping", (req: Request, res: Response) => {
        res.json({
            status: 200,
            message: "Ping successfully",
            deployMessage: "Removed validation for description in project create"
        });
    });

    router.use("/", routes());


    app.listen(port, () => {
        console.log(`Server is running on port ${port}`);
    });
};

export { initApp };
