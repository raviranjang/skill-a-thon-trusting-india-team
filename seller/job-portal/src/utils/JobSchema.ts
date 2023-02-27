import shortId from 'shortid'
export const qualificationMapping: { [k: string]: any[] } = {
  '1': [
    {
      "kind": "degree",
      "value": "SSC"
    },
    {
      "value": "10th Pass"
    }
  ],
  '2': [
    {
      "kind": "degree",
      "value": "HS"
    },
    {
      "value": "12th Pass"
    }
  ],
  '3': [
    {
      "kind": "degree",
      "value": "Bachelors"
    },
    {
      "value": "Bachelors or Equivalent Practical Experience"
    }
  ],
  '4': [
    {
      "kind": "degree",
      "value": "Masters"
    },
    {
      "kind": "degree",
      "value": "PhD"
    },
    {
      "value": "Master's degree or PhD in Computer Science or related technical field."
    }
  ]
}
export default {
  title: '',
  datePosted: '',
  validThrough: '',
  description: '',
  hiringOrganization: {
    name: "",
    url: "",
    about: '',//"Affinidi focuses on changing data ownership for good, empowering communities with control and ownership of their data. We do that through enabling the creation, sharing and verification of Verifiable Credentials – a secure and cryptographically verifiable way of sharing sensitive data. Headquartered in Singapore, with offices in India, Germany and Ukraine, Affinidi offers a myriad of solutions deploying decentralized technology and verifiable credentials that create a delightful experience for different groups of customers. These include industries such as health, travel, finance, education and employment. Affinidi, along with\u202FTrustana\u202Fand\u202FGoodWorker, are businesses under LemmaTree.We’re\u202Fmore than just a workplace. In our company, you’ll discover a world of passionate people guided by an inclusive purpose. We love the journey as much as the destination, and belonging to a team that prides itself on mutual respect. If you're passionate about decentralised technologies, we’d love to speak with you",
    address: {
      name: "",
      streetAddress: "",
      addressLocality: "",
      addressRegion: "",
      addressCountry: "",
      postalCode: ""
    },
  },
  jobLocation: {
    name: "",
    address: {
      name: "",
      streetAddress: "",
      addressLocality: "",
      addressRegion: "",
      addressCountry: "",
      postalCode: ""
    },
  },
  jobLocationType: [''
  ],
  employmentType: [
    ''
  ],
  jobImmediateStart: true,
  qualifications: [{
    type: "Minimum Educational Qualifications",
    values: <any[]>[],
  }, {
    type: "Preferred Educational Qualifications",
    values: <any[]>[]
  }, {
    type: "Work Experience",
    values: <any[]>[]
  }],
  salary: {
    currency: "INR",
    pay: [
      {
        minValue: 0,
        maxValue: 0,
        unitText: "YEAR",
        type: "baseSalary"
      },
      {
        minValue: 0,
        maxValue: 0,
        unitText: "YEAR",
        type: "variableSalary"
      },
      {
        minValue: 0,
        maxValue: 0,
        unitText: "YEAR",
        type: "allowance"
      },
      {
        minValue: 0,
        maxValue: 0,
        unitText: "item",
        type: "commission"
      },
      {
        minValue: 5,
        maxValue: 8,
        unitText: "hour",
        type: "overtime"
      }
    ]
  },
  identifier: {
    name: "INTERNAL ID",
    value: ''
  },
  responsibilities: <any[]>[],
  skills: <any[]>[]
}