import { Schema, model, Types } from "mongoose";


interface Imentorship {
    mentorship_id: string;
    mentor: String;
    provider_id: string;
    application_id: string;
    transaction_id: string;
    mentorshipSession_id: string;
    mentorshipSessionJoinLink: string;
    credentials: String;
    url: String;
    experties: String;
    bpp_id: String;
    bpp_uri: String;
    active: Boolean
    created_at: number;
    last_modified_at: number;
}

const mentorshipSchema = {
    mentorship_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    provider_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    application_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    transaction_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    mentorshipSession_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    mentor: {
        type: String,
        required: true,
    },
    mentorRating: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    mentorshipTitle: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    data: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    credentials: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    mentorshipSessionJoinLink: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    experties: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_uri: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    active: { type: Boolean, default: false },
    created_at: { type: Number, required: false },
    last_modified_at: { type: Number, required: false }
};

const Mentorships = model<Imentorship>("mentorships", new Schema<Imentorship>(mentorshipSchema));

export { Mentorships, Imentorship };
