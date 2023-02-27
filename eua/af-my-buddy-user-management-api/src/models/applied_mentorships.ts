import { Schema, model, Types } from "mongoose";


interface IAppliedMentorship {
    user_id?: Types.ObjectId;
    mentorship_id: string;
    mentor: String;
    mentorRating: string;
    mentorshipTitle: string;
    provider_id: string;
    application_id: string;
    transaction_id: string;
    mentorshipSession_id: string;
    mentorshipSessionJoinLink: string;
    credentials: String;
    bpp_id: String;
    bpp_uri: String;
    created_at: number;
}

const appliedMentorshipSchema = {
    user_id: { type: Types.ObjectId, required: true, ref: "users" },
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
    mentorshipSessionJoinLink: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_id: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    bpp_uri: { type: String, required: false, set: (a:string) => a === null ? undefined : a },
    created_at: { type: Number, required: false },

};

const AppliedMentorship = model<IAppliedMentorship>("applied_mentorships", new Schema<IAppliedMentorship>(appliedMentorshipSchema));



export { AppliedMentorship };
