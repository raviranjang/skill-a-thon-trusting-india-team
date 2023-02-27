import { Schema, model, Types } from "mongoose";


interface IappliedScholarship {
    user_id?: Types.ObjectId;
    scholarship_id: string;
    provider_id: String;
    application_id: string;
    transaction_id: string;
    fulfillment_id: string;
    title: String;
    category: String;
    data: string;
    bpp_id: String;
    bpp_uri: String;
    created_at: number;
}

const appliedScholarshipSchema = {
    user_id: { type: Types.ObjectId, required: true, ref: "users" },
    scholarship_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    provider_id: {
        type: String,
        required: true,
    },
    application_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    transaction_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    fulfillment_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    title: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    category: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    data: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_uri: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    active: { type: Boolean, default: false },
    created_at: { type: Number, required: false },
    last_modified_at: { type: Number, required: false }
};

const AppliedScholarships = model<IappliedScholarship>("applied_scholarships", new Schema<IappliedScholarship>(appliedScholarshipSchema));


export { AppliedScholarships };
