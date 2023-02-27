import { Schema, model, Types } from "mongoose";


interface Icourses {
    course_id: string;
    provider_id: String
    application_id: string;
    transaction_id: string;
    title: String;
    duration: String;
    description: String;
    course_url: String;
    bpp_id: String;
    bpp_uri: String;
    active: Boolean;
    data: string;
    created_at: number;
    last_modified_at: number;
    provider_name: string;
    category_name: string;
    price: string;
    startDate: string;
    endDate: string;
    rating: string;
    credits: string;
    instructors: string;
    offeringInstitue: string;
    courseUrl: string;
    enrollmentEndDate: string;
    additionalFormUrl: string;
    status: string;
    image_url: string;
    userSavedItem: boolean;
    userAppliedItem:boolean;
    course_completion_vc_did: string;
}

const courseSchema = {
    course_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    provider_id: {
        type: String,
        required: true,
    },
    application_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    transaction_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    title: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    data: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    duration: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    description: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    course_url: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_uri: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    active: { type: Boolean, default: false },
    created_at: { type: Number, required: false },
    last_modified_at: { type: Number, required: false },
    provider_name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    category_name: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    price: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    startDate: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    endDate: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    rating: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    credits: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    instructors: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    offeringInstitute: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    courseUrl: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    enrollmentEndDate: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    additionalFormUrl: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    status: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    image_url: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    course_completion_vc_did: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    userSavedItem: { type: Boolean, required: false},
    userAppliedItem: { type: Boolean, required: false},

};

const Courses = model<Icourses>("courses", new Schema<Icourses>(courseSchema));

export { Courses, Icourses };
