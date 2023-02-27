# Sunbird Certificate signer API

## set env 
`
CONFIG_BASE_PATH="./../../certificates"
CERTIFICATE_CONTROLLER_ID="did:web:12701wspvk.execute-api.ap-south-1.amazonaws.com"
PORT=8079
`

## start
`npm i`
`npm start`

## Sample CURL Calls
`
curl --location 'http://localhost:8079/certificate-signer/sign' \
--header 'Content-Type: application/json' \
--data-raw '{
    "data": {
        "claimId": "claimId:84c8a2f365bf19ed",
        "holderDid": "did:elem:EiBeXNL7q8kaUeW65lFQAeYwg277vVxpEjwfDIS3c1phGA",
        "phoneNumber": "9876543211",
        "school": "AP Public School",
        "name": "Paramesh 9876543211",
        "email": "student-9876543211@upps.in",
        "issuanceDate": "2023-02-17T13:33:24.756Z",
        "issuer": "did:web:12701wspvk.execute-api.ap-south-1.amazonaws.com:dsep"
    },
    "credentialTemplate": {
        "@context": [
            "https://www.w3.org/2018/credentials/v1",
            "https://schema.affinidi.com/ResumeVCV1-2.jsonld"
        ],
        "id": "{{claimId}}",
        "type": [
            "VerifiableCredential",
            "ResumeVC"
        ],
        "holder": {
            "id": "{{holderDid}}"
        },
        "credentialSubject": {
            "data": {
                "name": "{{name}}",
                "phoneNumber": "{{phoneNumber}}",
                "email": "{{email}}",
                "linkedIn": "https://linkedin.com/in/paramesh.k",
                "nationality": "Indian",
                "resumeName": "{{school}}",
                "resumeFilePathUrl": "https://example.com/resume"
            }
        },
        "credentialSchema": {
            "id": "https://schema.affinidi.com/ResumeVCV1-2.json",
            "type": "JsonSchemaValidator2018"
        },
        "issuanceDate": "{{issuanceDate}}",
        "issuer": "{{issuer}}"
    }
}'
`

Verify API
`
curl --location 'http://localhost:8079/certificate-signer/verify' \
--header 'Content-Type: application/json' \
--data-raw '{
    "signedCredentials": {"@context":["https://www.w3.org/2018/credentials/v1","https://schema.affinidi.com/ResumeVCV1-2.jsonld"],"id":"claimId:84c8a2f365bf19e1","type":["VerifiableCredential","ResumeVC"],"holder":{"id":"did:elem:EiA-hByLx07oSlz2klz0jLfBuce4zY2V7mOnuYFPpm6fHQ"},"credentialSubject":{"data":{"name":"Paramesh A","phoneNumber":"9876543211","email":"student-A@upps.in","linkedIn":"https://linkedin.com/in/paramesh.k","nationality":"Indian","resumeName":"AP Public School","resumeFilePathUrl":"https://example.com/resume"}},"credentialSchema":{"id":"https://schema.affinidi.com/ResumeVCV1-2.json","type":"JsonSchemaValidator2018"},"issuanceDate":"2023-02-17T13:33:24.756Z","issuer":"did:web:12701wspvk.execute-api.ap-south-1.amazonaws.com:dsep","proof":{"type":"RsaSignature2018","created":"2023-02-21T10:06:48Z","verificationMethod":"did:web:12701wspvk.execute-api.ap-south-1.amazonaws.com:dsep#key-0","proofPurpose":"assertionMethod","jws":"eyJhbGciOiJQUzI1NiIsImI2NCI6ZmFsc2UsImNyaXQiOlsiYjY0Il19..hIAqlBcB8QuiE2kpVPGBTnTeHail_2VgzF_hWmJ-840O-WK3V-ZhJJLKSekPR9vhcnQlJ9UMhiBNOtMF4rZzugw2Pg6JTr5fQgKx4sU0P4C8B9GjHVL5mpIn5jzmElf2_1-qIMhSvMrNOHlqA7cnUW_z8XpDkzSn6Vx4RiAP7lYpzT-Nd-hn_-V0f4cTZ9QNXDFprIgT7bav_4EQWzFGrV0787L-VlaVupN9VAZSf2PPD3SpGyqFrX_fAZXMD-XettpQKI_nQ-_8QQ7_GkjZoxGvXiNPOGUdgb88OQ72iPCcXX0Jr0gF2L6GpgYsyQueyXTynAfO8GC--jBhTwTOcw"}}
}'
`