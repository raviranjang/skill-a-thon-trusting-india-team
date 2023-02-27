import { Schema, model, Types } from "mongoose";


interface IUser {
    email: string;
    first_name: string;
    middle_name: string;
    last_name: string;
    full_name: string;
    mobile: number;
    created_at: number;
    last_modified_at: number;
    city: string;
    title: string;
    skills: [string];

}

const UserSchema = {
    name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    email: {
        type: String,
        required: true,
    },
    first_name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    middle_name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    last_name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    full_name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    mobile: { type: Number, required: false },
    created_at: { type: Number, required: false },
    last_modified_at: { type: Number, required: false },
    city: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    title: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    skills: { type: [String], required: false, set: (a:string) => a === null ? undefined : a }

};

const User = model<IUser>("users", new Schema<IUser>(UserSchema));

const models = {
    User,
};

export { models, IUser };
