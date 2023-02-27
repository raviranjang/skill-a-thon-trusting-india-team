import moment from 'moment';
import { useState } from 'react';
import Button from 'react-bootstrap/Button';
import FormGroup from 'react-bootstrap/esm/FormGroup';
import Form from 'react-bootstrap/Form';
import JobSchema, { qualificationMapping } from '../utils/JobSchema';
import { useNavigate } from 'react-router';
import jobService from '../Services/jobService';
import shortid from 'shortid';
const PostJob = () => {
  const navigate = useNavigate()
  const [job, setJob] = useState(JobSchema)
  const [onsite, setOnsite] = useState(false)
  const [remote, setRemote] = useState(false)
  const [hybrid, setHybrid] = useState(false)
  const [skills, setSkills] = useState([''])
  const [responsibilities, setResponsibilities] = useState([''])
  const stringValPatternValidation = (v: string) => {
    const specialCharacterRegex = new RegExp('^[0-9]*$');
    const whiteSpaceRegex = /^\S*$/;
    return specialCharacterRegex.test(v) &&
      whiteSpaceRegex.test(v)
  };

  const onInputSalary = (index: number, value: string, key: number) => {
    const valid = stringValPatternValidation(value)
    if (valid) {
      job.salary.pay[index][key === 0 ? 'maxValue' : 'minValue'] = +value
    }
    setJob({ ...job })
  }
  const handleSubmit = async (e: any) => {
    e.preventDefault()
    const nonEmptySkills = skills.filter(s => s.trim().length > 0)
    if (nonEmptySkills.length === 0) {
      alert('Please add skills')
      return
    }
    job.skills = [...nonEmptySkills]
    const nonEmptyResponsibility = responsibilities.filter(s => s.trim().length > 0)
    if (nonEmptyResponsibility.length === 0) {
      alert('Please add responsibilities')
      return
    }
    job.responsibilities = [...nonEmptyResponsibility]
    job.datePosted = new Date().toISOString()
    job.validThrough = moment().add(30, 'days').toISOString()
    job.jobLocation.name = job.jobLocation.address.name
    job.hiringOrganization.name = job.jobLocation.address.name
    job.identifier.value = shortid.generate()
    job.jobLocationType = []
    if (remote) job.jobLocationType.push('Remote')
    if (hybrid) job.jobLocationType.push('Hybrid')
    if (onsite) job.jobLocationType.push('Onsite')
    try {
      const { jobId } = await jobService.postJob(job)
      alert(`Job created successfully: ${jobId}`)
      navigate('/dashboard', { replace: true })

    } catch (error: any) {
      const { status, data: { message } } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
      alert(message || 'Something went wrong')
    }
  }
  return <div style={{ margin: 30 }}>
    <Form onSubmit={handleSubmit}>
      <Form.Group className="mb-3">
        <Form.Label>Job Title</Form.Label>
        <Form.Control type="text" placeholder="Title" value={job.title} onChange={(e) => {
          const { value } = e.target
          job.title = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-3">
        <Form.Label>Job Description</Form.Label>
        <Form.Control as="textarea" rows={3} value={job.description} onChange={(e) => {
          const { value } = e.target
          job.description = value
          setJob({ ...job })
        }} />
      </Form.Group>

      <Form.Group className="mb-3">
        <Form.Label>Job Type</Form.Label>
        <Form.Control type='text' value={job.employmentType[0]} onChange={(e) => {
          const { value } = e.target
          job.employmentType = [value]
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-3">
        <Form.Label>Job Type</Form.Label>
        <span> </span>
        <Form.Check
          inline
          label="Remote"
          name="group1"
          type="checkbox"
          onChange={(e) => {
            setRemote(e.target.checked)
          }}
          id={`inline-checkbox-1`}
        />
        <Form.Check
          inline
          label="Hybrid"
          name="group1"
          type="checkbox"
          onChange={(e) => {
            setHybrid(e.target.checked)
          }}
          id={`inline-checkbox-2`}
        />
        <Form.Check
          inline
          label="Onsite"
          type="checkbox"
          onChange={(e) => {
            setOnsite(e.target.checked)
          }}
          id={`inline-checkbox-3`}
        />
      </Form.Group>



      <h6>Location</h6>
      <Form.Group className="mb-4">
        <Form.Control type="text" placeholder="name" onChange={(e) => {
          const { value } = e.target
          job.hiringOrganization.address.name = value
          job.jobLocation.address.name = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Control type="text" placeholder="street" onChange={(e) => {
          const { value } = e.target
          job.hiringOrganization.address.streetAddress = value
          job.jobLocation.address.streetAddress = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Control type="text" placeholder="locality" onChange={(e) => {
          const { value } = e.target
          job.hiringOrganization.address.addressLocality = value
          job.jobLocation.address.addressLocality = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Control type="text" placeholder="city" onChange={(e) => {
          const { value } = e.target
          job.hiringOrganization.address.addressRegion = value
          job.jobLocation.address.addressRegion = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Control type="text" placeholder="country" onChange={(e) => {
          const { value } = e.target
          job.hiringOrganization.address.addressCountry = value
          job.jobLocation.address.addressCountry = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Control type="text" maxLength={6} value={job.hiringOrganization.address.postalCode} placeholder="pin" onChange={(e) => {
          const { value } = e.target
          const valid = stringValPatternValidation(value)
          if (!valid) {
            setJob({ ...job })
            return
          }
          job.hiringOrganization.address.postalCode = value
          job.jobLocation.address.postalCode = value
          setJob({ ...job })
        }} />
      </Form.Group>
      <h6>Minimum Educational Qualification</h6>
      <Form.Group className="mb-4">
        <Form.Select aria-label="Default select example" defaultValue={0} onChange={(e) => {
          const { value } = e.target
          const minimumQualification: any[] = qualificationMapping[value]
          job.qualifications[0].values = minimumQualification
          if (+value < 4) job.qualifications[1].values = qualificationMapping[`${+value + 1}`]
          setJob({ ...job })
        }}>
          <option value="0" disabled>Select</option>
          <option value="1">10th</option>
          <option value="2">12th</option>
          <option value="3">Bachelors or Equivalent Practical Experience</option>
          <option value="4">Master's degree or PhD in Computer Science or related technical field</option>
        </Form.Select>
      </Form.Group>
      <h6>Skills</h6>
      <Form.Group className="mb-4">
        {skills.map((s, i) => {
          return <>
            <Form.Control className="mb-2" key={i} type="text" placeholder="skill" value={skills[i]} onChange={(e) => {
              const { value } = e.target
              skills[i] = value
              setSkills([...skills])
            }} />
            {i !== 0 ? <Button key={`r${i}`} variant='danger' onClick={() => {
              skills.splice(i, 1)
              setSkills([...skills])
            }}>X</Button> : <></>}
          </>
        })}
        <h2></h2>
        <Button onClick={() => {
          setSkills([...skills, ''])
        }}> Add skill</Button>
      </Form.Group>
      <Form.Group className="mb-3">
        <Form.Label>Working Experience</Form.Label>
        <Form.Control type="text" placeholder="Working Experience" onChange={(e) => {
          const { value } = e.target
          job.qualifications[2].values = [{
            value
          }]
          setJob({ ...job })
        }} />
      </Form.Group>
      <h6>Responsibilities</h6>
      <Form.Group className="mb-4">
        {responsibilities.map((s, i) => {
          return <>
            <Form.Control className="mb-2" key={i} type="text" placeholder="Responsibility" value={responsibilities[i]} onChange={(e) => {
              const { value } = e.target
              responsibilities[i] = value
              setResponsibilities([...responsibilities])
            }} />
            {i !== 0 ? <Button key={`r${i}`} variant='danger' onClick={() => {
              responsibilities.splice(i, 1)
              setResponsibilities([...responsibilities])
            }}>X</Button> : <></>}
          </>
        })}
        <h2></h2>
        <Button onClick={() => {
          setResponsibilities([...responsibilities, ''])
        }}> Add Responsibilities</Button>
      </Form.Group>

      <h6>Salary Information</h6>
      <Form.Group className="mb-4">
        <Form.Label>Base Salary</Form.Label>
        <Form.Control type="number" placeholder="Max" onChange={(e) => {
          const { value } = e.target
          onInputSalary(0, value, 0)
        }} />
        <Form.Control type="number" placeholder="Min" onChange={(e) => {
          const { value } = e.target
          onInputSalary(0, value, 1)
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Label>Variable Salary</Form.Label>
        <Form.Control type="number" placeholder="Max" onChange={(e) => {
          const { value } = e.target
          onInputSalary(1, value, 0)
        }} />
        <Form.Control type="number" placeholder="Min" onChange={(e) => {
          const { value } = e.target
          onInputSalary(1, value, 1)
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Label>Allowance</Form.Label>
        <Form.Control type="number" placeholder="Max" onChange={(e) => {
          const { value } = e.target
          onInputSalary(2, value, 0)
        }} />
        <Form.Control type="number" placeholder="Min" onChange={(e) => {
          const { value } = e.target
          onInputSalary(2, value, 1)
        }} />
      </Form.Group>
      <Form.Group className="mb-4">
        <Form.Label>Commission</Form.Label>
        <Form.Control type="number" placeholder="Max item" onChange={(e) => {
          const { value } = e.target
          onInputSalary(3, value, 0)
        }} />
        <Form.Control type="number" placeholder="Min item" onChange={(e) => {
          const { value } = e.target
          onInputSalary(3, value, 1)
        }} />
      </Form.Group>

      <Form.Group className="mb-4">
        <Form.Label>Overtime</Form.Label>
        <Form.Control type="number" placeholder="Max hour" onChange={(e) => {
          const { value } = e.target
          onInputSalary(4, value, 0)
        }} />
        <Form.Control type="number" placeholder="Min Hour" onChange={(e) => {
          const { value } = e.target
          onInputSalary(4, value, 1)
        }} />
      </Form.Group>

      <FormGroup>
        <Button variant="secondary" onClick={() => {
          navigate('/dashboard')
        }}>
          Back
        </Button> <span>{ }</span>
        <Button variant="primary" type="submit">
          Submit
        </Button>
      </FormGroup>
    </Form>
  </div >
}

export default PostJob