import HttpClient from './http_client'

class IssuanceService extends HttpClient {
  constructor() {
    super(process.env.REACT_APP_MOCK_ISSUANCE_SERVICE || '')
    this.interceptRequest({})
    this.interceptResponse()
  }

  protected interceptRequest(headers: Record<string, any>): void {
    console.log('HEADERS', headers)
    super.interceptRequest({})
  }

  async issueCourseVC(
    did: string,
    accessToken: string,
    subject: Record<string, any>,
  ): Promise<any> {
    try {
      const data = await this.post(
        '/issuer/issue-vc',
        {
          typeName: 'MyBuddyFinalCourse',
          jsonLdContextUrl: 'https://schema.affinidi.com/MyBuddyFinalCourseV1-0.jsonld',
          jsonSchemaUrl: 'https://schema.affinidi.com/MyBuddyFinalCourseV1-0.json',
          credentialSubject: subject,
          holderDid: did,
          issuer: process.env.REACT_APP_ISSUER_DID,
          selfDeclared: true,
        },
        {
          Authorization: accessToken,
        },
      )
      return data
    } catch (err) {
      console.log('Issuance Error', err)
      throw err
    }
  }

  async issueSunbirdVC(
    did: string,
    accessToken: string,
    subject: Record<string, any>,
  ): Promise<any> {
    try {
      const data = await this.post(
        '/issuer/issue-vc',
        {
          typeName: 'MyBuddyCourseCertificateSunbirdRC',
          jsonLdContextUrl:
            'https://schema.affinidi.com/MyBuddyCourseCertificateSunbirdRCV1-0.jsonld',
          jsonSchemaUrl: 'https://schema.affinidi.com/MyBuddyCourseCertificateSunbirdRCV1-0.json',
          credentialSubject: subject,
          holderDid: did,
          issuer: process.env.REACT_APP_ISSUER_DID,
          selfDeclared: true,
        },
        {
          Authorization: accessToken,
        },
      )
      return data
    } catch (err) {
      console.log('Issuance Error', err)
      throw err
    }
  }

  async getCredentials(accessToken: string) {
    try {
      const data = this.get('/issuer/issued-credentials', {
        Authorization: accessToken,
      })
      return data
    } catch (err) {
      console.log('Error fetching credentials', err)
      throw err
    }
  }
}

const issuanceService: IssuanceService = new IssuanceService()
export default issuanceService
