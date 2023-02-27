import { useState } from 'react';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import { useNavigate } from 'react-router';
import cloudWalletService from '../Services/cloudWalletService';
import UserService from '../Services/userService';
import LocalStorage from '../utils/LocalStorage';

const Register = () => {
  localStorage.clear()
  const navigate = useNavigate()
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [name, setName] = useState('')
  const [organization, setOrganization] = useState('')
  const [isValid, setValidStatus] = useState(false)
  const [showError, setShowError] = useState(false)

  const stringValPatternValidation = (v: string) => {
    const whiteSpaceRegex = /^\S*$/;
    return whiteSpaceRegex.test(v)
  };
  const onChangeUsername = (e: any) => {
    const { value } = e.target;
    const valid = stringValPatternValidation(value);
    if (valid) {
      setUsername(value.replace(/[^\w\s]/gi, ""))
    } else {
      setUsername(username || '')
    }
    setValidStatus(!!value && password.length >= 8)
  };

  const onChangePassword = (e: any) => {
    const { value } = e.target;
    setShowError(false)
    const valid = stringValPatternValidation(value);
    if (valid) {
      setPassword(value)
    } else {
      setPassword(password || '')
    }
    setValidStatus(value.length >= 6 && !!username)
  }
  const validatePassword = (v: string) => {
    const reg = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/
    return reg.test(v)
  }
  const handleSubmit = async (e: any) => {
    e.preventDefault();
    try {
      const validPassword = validatePassword(password)
      if (!validPassword) {
        setShowError(true)
        return
      }
      const result: any = await cloudWalletService.signUp(username, password)
      const { accessToken, refreshToken, did } = result
      LocalStorage.setItem('user', { username, accessToken, did, refreshToken, name, organization })
      await UserService.registerUser({
        username,
        name,
        organization
      })
      navigate('/dashboard', { replace: true })
    } catch (error: any) {
      const { status, data: { message } } = error?.response
      if (status === 401) {
        navigate('/login', { replace: true })
        return
      }
      if (status === 400) {
        navigate('/dashboard', { replace: true })
        return
      }
      alert(message)
    }
  }
  return <div className='center'>
    <div className='leftDiv'>
      <div className='jobLogo'></div>
      <div className='portalTitle'><h2>Bharat's Best Employer's Job Portal</h2></div>
      <div className='loginForm'>
        <Form onSubmit={e => { handleSubmit(e) }}>
          <Form.Group className="mb-3">
            <Form.Label>Username</Form.Label>
            <Form.Control
              type="text"
              value={username}
              placeholder="enter username"
              onChange={(e) => onChangeUsername(e)}
            />
          </Form.Group>
          <Form.Group className="mb-3">
            <Form.Label>Password</Form.Label>
            <Form.Control
              type="password"
              value={password}
              minLength={8}
              placeholder="enter password"
              onChange={(e) => onChangePassword(e)}
            />
            {showError ? <Form.Text className="text-muted">
              Password must contain at least one lowercase letter, one uppercase letter, one numeric character and 8 character long.
            </Form.Text> : <></>}
          </Form.Group>
          <Form.Group className="mb-3">
            <Form.Label>Name</Form.Label>
            <Form.Control
              type="text"
              value={name}
              placeholder="Enter name"
              onChange={(e) => {
                const { value } = e.target
                setName(value)
              }}
            />
          </Form.Group>
          <Form.Group className="mb-3">
            <Form.Label>Organization</Form.Label>
            <Form.Control
              type="text"
              value={organization}
              placeholder="Enter organization"
              onChange={(e) => {
                const { value } = e.target
                setOrganization(value)
              }}
            />
          </Form.Group>
          <Button variant="secondary" onClick={() => {
            navigate('/')
          }}>
            Back
          </Button>
          <span> </span>
          <Button variant="primary" type="submit" disabled={!isValid}>
            Register
          </Button>
        </Form>
      </div>
    </div>
    <div className='rightDiv'></div>
  </div>
}

export default Register