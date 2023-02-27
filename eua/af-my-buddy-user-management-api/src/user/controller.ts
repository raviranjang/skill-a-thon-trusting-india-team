import { Request, Response, NextFunction } from "express";
import { models as user } from '.'
import { AppliedCourses } from "../models/applied_courses"
import { AppliedJobs } from "../models/applied_jobs";
import { AppliedMentorship } from "../models/applied_mentorships";
import { AppliedScholarships } from "../models/applied_scholarships";
import { SavedCourses } from "../models/saved_courses";
import { SavedJobs } from "../models/saved_jobs";
import { SavedMentorships } from "../models/saved_mentorships";
import { SavedScholarships } from "../models/saved_scholarships";
import { getUserDetails } from "./service";
import { ObjectId } from "mongodb";
import { models as resumes } from '../resumes'
import { Job } from "../jobs/model";
import { Courses } from "../courses/model";
import { Scholarships } from "../scholarships/model";
import { Mentorships } from "../mentorships/model";

export const UserDetails = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const userDetails = await getUserDetails(req.params.email)
        if (!userDetails) {
            
            res.locals = {
                status: 400,
                success: false,
                message: "User profile could not be retrieved"
            }
            return next()
        }
        return res.json(userDetails)
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/profile/email",
            message: e,
            status: 400
        }
        return next()
    }
}

export const addUser = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const body = req.body
        const data = await user.User.create({
            email: body.email,
            first_name: body.first_name,
            middle_name: body.middle_name,
            last_name: body.last_name,
            full_name: body.full_name,
            created_at: Date.now(),
            last_modified_at: Date.now(),
            city: body.city,
            title: body.title,
            skills: body.skills
        
        })
        if (!data) {
            res.locals = {
                success: false,
                message: "User profile could not be created",
                status: 400
            }
                return next()
        }
        return res.json(data)
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/profile",
            message: e,
            status: 400
        }
        return next()
    }
}

export const savedItems = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const userDetails = await getUserDetails(req.params.email)
        if (!userDetails) {
            res.locals = {
                data: {},
                status: 404,
                success: false,
                message: "saved items not found for user"
            }
            return next()
        }
        let jobs: any = await SavedJobs.find({ user_id: userDetails?.id })
        let mentorship = await SavedMentorships.find({ user_id: userDetails?.id })
        let scholarship = await SavedScholarships.find({ user_id: userDetails?.id })
        let courses = await SavedCourses.find({ user_id: userDetails?.id })
        return res.json({ jobs, mentorship, scholarship, courses })
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/item/saved/email",
            message: e,
            status: 400
        }
        return next()
    }
}

export const appliedItems = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const userDetails = await getUserDetails(req.params.email)
        if (!userDetails) {
            res.locals = {
                data: {},
                status: 404,
                success: false,
                message: "Applied items not found for user"
            }
            return next()
        }
        const jobs = await AppliedJobs.find({ user_id: userDetails?.id })
        const mentorship = await AppliedMentorship.find({ user_id: userDetails?.id })
        const scholarship = await AppliedScholarships.find({ user_id: userDetails?.id })
        const courses = await AppliedCourses.find({ user_id: userDetails?.id })

        return res.json({ jobs, mentorship, scholarship, courses })
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/item/applied/email",
            message: e,
            status: 400
        }
        return next()
    }
}


export const items = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const userDetails = await getUserDetails(req.params.email)
        if (!userDetails) {
            res.locals = {
                data: {},
                status: 400,
                success: false,
                message: "User saved and applied data for dsep categories not found for sessionId"
            }
            return next()
        }
        const savedJobs = await SavedJobs.find({ user_id: userDetails?.id })
        const savedMentorship = await SavedMentorships.find({ user_id: userDetails?.id })
        const savedScholarship = await SavedScholarships.find({ user_id: userDetails?.id })
        const savedCourses = await SavedCourses.find({ user_id: userDetails?.id })
        const appliedJobs = await AppliedJobs.find({ user_id: userDetails?.id })
        const appliedMentorship = await AppliedMentorship.find({ user_id: userDetails?.id })
        const appliedScholarship = await AppliedScholarships.find({ user_id: userDetails?.id })
        const appliedCourses = await AppliedCourses.find({ user_id: userDetails?.id })
        return res.json({
            jobs: { saved: savedJobs, applied: appliedJobs },
            courses: { saved: savedCourses, applied: appliedCourses },
            scholarship: { saved: savedScholarship, applied: appliedScholarship },
            mentorship: { saved: savedMentorship, applied: appliedMentorship }
        })
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/items/email",
            message: e,
            status: 400
        }
        return next()
    }
}

export const addResume = async (req: Request, res: Response, next: NextFunction) => {
    try {
        console.log('yfduvgjhvgyuctuy')
        const body = req.body
        const data = await resumes.Resume.create({
            user_id: new ObjectId(body.user_id),
            document: body.document,
            document_type: body.document_type,
            active: false,
            created_at: Date.now(),
            last_used_at: Date.now(),
            last_modified_at: Date.now(),
        })
        if (!data) {
            res.locals = {
                success: false,
                message: "User resume could not be uploaded",
                status: 400
            }
            return next()
        }
        return res.json(data)
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/resume",
            message: e,
            status: 400
        }
        return next()
    }
}

export const getResumeDetails = async (req: Request, res: Response, next: NextFunction) => {
    try {
        const userDetails = await getUserDetails(req.params?.email)
        if (!userDetails) {
            res.locals = {
                success: false,
                message: "User not found",
                status: 400
            }
            return next()
        }
        const data = await resumes.Resume.find({ user_id: userDetails?.id })
        if (!data) {
            res.locals = {
                success: false,
                message: "User profile could not be retrieved",
                status: 400
            }
            return next()
        }
        return res.json(data)
    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/resume/email",
            message: e,
            status: 400
        }
        return next()
    }
}

export const myItem = async (req: Request, res: Response, next: NextFunction) => {
    const action = req?.params?.action
    const category = req?.params?.category
    const email = req?.params?.email
    const userDetails = await getUserDetails(email)
    const body = req.body
    try {
        if (category === 'job' && action === 'save') {
            const saved = await SavedJobs.findOne({ job_id: body?.job_id, provider_id: body?.provider_id })
            if (saved) {
                return res.json({ message: "Job already saved" })
            }
            console.log("job save input body: ")
            console.log(JSON.stringify(body));
            const jobData = await SavedJobs.create({
                user_id: userDetails?.id,
                job_id: body.job_id,
                company: body.company,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                city: body.city,
                role: body.role,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                data: body.data,
                location_type: body?.location_type ?? null,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now(),
                company_logo: body?.company_logo ?? null,
                description: body?.description ?? null,
                state: body?.state ?? null,
                status: body?.status ?? null,
                userSavedItem: body?.userSavedItem ?? false,
                userAppliedItem: body?.userAppliedItem ?? false,

                fulfillmentCategory: body?.fulfillmentCategory,
                educationalQualifications: body?.educationalQualifications,
                workExperience: body?.workExperience,
                responsibilities: body?.responsibilities,
                employmentInformation: body?.employmentInformation,
                compensation: body?.compensation,
            
            
            })
            return res.json(jobData)
        }
        if (category === 'job' && action === 'applied') {
            const deleteSave = await SavedJobs.deleteOne({ job_id: body?.job_id, user_id: userDetails?.id })
            const jobData = await AppliedJobs.create({
                user_id: userDetails?.id,
                job_id: body.job_id,
                company: body.company,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                city: body.city,
                role: body.role,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                data: body.data,
                location_type: body?.location_type ?? null,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now(),
                company_logo: body?.company_logo ?? null,
                description: body?.description ?? null,
                state: body?.state ?? null,
                status: body?.status ?? null,
                userSavedItem: body?.userSavedItem ?? false,
                userAppliedItem: body?.userAppliedItem ?? false,
                fulfillmentCategory: body?.fulfillmentCategory,
                educationalQualifications: body?.educationalQualifications,
                workExperience: body?.workExperience,
                responsibilities: body?.responsibilities,
                employmentInformation: body?.employmentInformation,
                compensation: body?.compensation,

            })
            return res.json(jobData)
        }
        if (category === 'course' && action === 'save') {
            let response;
            const saved: any = await SavedCourses.findOne({ course_id: body?.course_id, provider_id: body?.provider_id })
            if (saved) {
                return res.json({ message: "Course Already Saved" })
            }
            const courseData = await SavedCourses.create({
                user_id: userDetails?.id,
                course_id: body.course_id,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                title: body.title,
                duration: body.duration,
                description: body.description,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                data: body.data,
                courseUrl: body?.courseUrl ?? null,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now(),
                provider_name: body.provider_name,
                category_name: body.category_name,
                price: body.price,
                startDate: body.startDate,
                endDate: body.endDate,
                rating: body.rating,
                credits: body.credits,
                instructors: body.instructors,
                offeringInstitue: body.offeringInstitue,
                enrollmentEndDate: body.enrollmentEndDate,
                additionalFormUrl: body.additionalFormUrl,
                status: body.status,
                image_url: body.image_url,
                userSavedItem: body.userSavedItem,
                userAppliedItem:body.userAppliedItem
            })
            return res.json(courseData)
        }
        if (category === 'course' && action === 'applied') {
            let response;
            const deleteSave = await SavedCourses.deleteOne({ course_id: body?.course_id, user_id: userDetails?.id })
            const courseData = await AppliedCourses.create({
                user_id: userDetails?.id,
                course_id: body.course_id,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                title: body.title,
                duration: body.duration,
                description: body.description,
                courseUrl: body?.courseUrl ?? null,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                data: body.data,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now(),
                provider_name: body.provider_name,
                category_name: body.category_name,
                price: body.price,
                startDate: body.startDate,
                endDate: body.endDate,
                rating: body.rating,
                credits: body.credits,
                instructors: body.instructors,
                offeringInstitue: body.offeringInstitue,
                enrollmentEndDate: body.enrollmentEndDate,
                additionalFormUrl: body.additionalFormUrl,
                status: body.status,
                image_url: body.image_url,
                userSavedItem: body.userSavedItem,
                userAppliedItem:body.userAppliedItem,
                course_completion_vc_did: body.course_completion_vc_did,
            })
            
            return res.json(courseData)
        }
        if (category === 'course' && action === 'unsave') {
            const deleteSave = await SavedCourses.deleteOne({ course_id: body?.course_id, user_id: userDetails?.id })
            return res.json({})
        }
        if (category === 'job' && action === 'unsave') {
            const deleteSave = await SavedJobs.deleteOne({ job_id: body?.job_id, user_id: userDetails?.id })
            return res.json({})
        }

        if (category === 'scholarship' && action === 'save') {
            let response;
            const saved: any = await SavedScholarships.findOne({ scholarship_id: body?.scholarship_id, provider_id: body?.provider_id })
            if (saved) {
                return res.json({ message: "Scholarship Already Saved" })
            }
            const scholarshipData = await SavedScholarships.create({
                user_id: userDetails?.id,
                scholarship_id: body.scholarship_id,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                fulfillment_id: body.fulfillment_id,
                title: body.title,
                category: body.category,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                data: body.data,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now()
            })
            return res.json(scholarshipData)
        }
        if (category === 'scholarship' && action === 'applied') {
            let response;
            const deleteSave = await SavedScholarships.deleteOne({ scholarship_id: body?.scholarship_id, user_id: userDetails?.id })
            const scholarshipData = await AppliedScholarships.create({
                user_id: userDetails?.id,
                scholarship_id: body.scholarship_id,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                fulfillment_id: body.fulfillment_id,
                title: body.title,
                category: body.category,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                data: body.data,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now()
            })
            return res.json(scholarshipData)
        }
        if (category === 'mentorship' && action === 'save') {
            let response;
            const saved: any = await SavedMentorships.findOne({ mentorship_id: body?.mentorship_id, provider_id: body?.provider_id })
            if (saved) {
                return res.json({ message: "Mentorship Already Saved" })
            }
            const mentorshipData = await SavedMentorships.create({
                user_id: userDetails?.id,
                mentorship_id: body.mentorship_id,
                mentor: body.mentor,
                mentorRating: body?.mentorRating ?? null,
                mentorshipTitle: body?.mentorshipTitle ?? null,
                provider_id: body.provider_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                mentorshipSession_id: body?.mentorshipSession_id ?? null,
                mentorshipSessionJoinLink: body?.mentorshipSessionJoinLink ?? null,
                credentials: body.credentials,
                experties: body.experties,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now()
            })
            return res.json(mentorshipData)

        }
        if (category === 'mentorship' && action === 'applied') {
            const deleteSave = await SavedMentorships.deleteOne({ mentorship_id: body?.id, user_id: userDetails?.id })
            const mentorshipData = await AppliedMentorship.create({
                user_id: userDetails?.id,
                mentorship_id: body.mentorship_id,
                application_id: body?.application_id ?? null,
                transaction_id: body?.transaction_id ?? null,
                mentor: body.mentor,
                mentorRating: body?.mentorRating ?? null,
                mentorshipTitle: body?.mentorshipTitle ?? null,
                credentials: body.credentials,
                provider_id: body.provider_id,
                mentorshipSession_id: body?.mentorshipSession_id ?? null,
                mentorshipSessionJoinLink: body?.mentorshipSessionJoinLink ?? null,
                experties: body.experties,
                bpp_id: body.bpp_id,
                bpp_uri: body.bpp_uri,
                active: true,
                created_at: Date.now(),
                last_modified_at: Date.now()
            })

            return res.json(mentorshipData)
        }

    }
    catch (e) {
        res.locals = {
            success: false,
            path: "/user/resume/email",
            message: e,
            status: 400
        }
        return next()
    }
}
