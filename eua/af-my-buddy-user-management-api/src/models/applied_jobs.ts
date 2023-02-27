import { Schema, model, Types } from "mongoose";


interface IappliedJobs {
    user_id?: Types.ObjectId;
    job_id: string;
    company: string;
    provider_id: string;
    application_id: string;
    transaction_id: string;
    city: string;
    role: string;
    bpp_id: string;
    bpp_uri: String;
    data: string;
    created_at: number;
    company_logo: string;
    description: string;
    state: string;
    status: string;
    userSavedItem: boolean;
    userAppliedItem: boolean;
    fulfillmentCategory: [Object];
    educationalQualifications: [Object];
    workExperience: Object;
    responsibilities: [Object];
    employmentInformation: Object;
    compensation: Object;

}

const appliedJobSchema = {
    user_id: { type: Types.ObjectId, required: true, ref: "users" },
    job_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    company: {
        type: String,
        required: true,
    },
    provider_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    application_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    transaction_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    city: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    role: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_uri: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    data: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    created_at: { type: Number, required: false },

    company_logo: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    description: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    state: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    status: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    userSavedItem: { type: Boolean, default: false },
    userAppliedItem: { type: Boolean, default: false },
    
    fulfillmentCategory: { type: [Object], required: false},
    educationalQualifications: { type: [Object], required: false},
    workExperience: { type: Object, required: false},
    responsibilities: { type: [Object], required: false},
    employmentInformation: { type: Object, required: false},
    compensation: { type: Object, required: false},


};

const AppliedJobs = model<IappliedJobs>("applied_jobs", new Schema<IappliedJobs>(appliedJobSchema));



export { AppliedJobs };
