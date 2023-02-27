export interface Course {
  name: string
  price: string
  category: string
  instructor: string
  rating: string
  seats: number
}

export interface FieldProp {
  name: string
  rules: Array<{
    required: boolean
    message: string
  }>
  label: string
  field: 'input' | 'checkbox' | 'password'
}

export interface TaskProps {
  onFinish: (values: string) => void
}

export interface Wallet {
  accessToken: string
  did: string
  idToken: string
  refreshToken: string
}

export interface CourseCertificate {
  coursename: string
  applicantname: string
  stepsinvolved: string
  category: string
  completiondate: string
  skills: string
  courseprovider: string
  issuingAuthority: string
}
