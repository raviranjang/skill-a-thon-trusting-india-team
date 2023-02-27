import { useState } from 'react';
import { Alert } from 'react-bootstrap';
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form';
import { useNavigate } from 'react-router';
import cloudWalletService from '../Services/cloudWalletService'
import UserService from '../Services/userService';
import LocalStorage from '../utils/LocalStorage';


function Login() {
  const navigate = useNavigate()
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [isValid, setValidStatus] = useState(false)
  const [showError, setShowError] = useState(false)
  localStorage.clear()

  const handleSubmit = async (e: any) => {
    e.preventDefault();
    try {
      const validPassword = validatePassword(password)
      if (!validPassword) {
        setShowError(true)
        return
      }
      const result = await cloudWalletService.login(username, password)
      const { accessToken, refreshToken, did } = result
      LocalStorage.setItem('user', { username, accessToken, did, refreshToken })
      const userInfo = await UserService.getUser()
      if (userInfo.user) {
        const { user: { name, organization } } = userInfo
        LocalStorage.setItem('user', { username, accessToken, did, refreshToken, name, organization })
      } else {
        await UserService.registerUser({
          username
        })
        LocalStorage.setItem('user', { username, accessToken, did, refreshToken })
      }
      navigate('/dashboard', { replace: true })
    } catch (error: any) {
      const { response: { data: { message } } } = error
      alert(message || 'Something went wrong')
    }
  }

  const validatePassword = (v: string) => {
    const reg = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/
    return reg.test(v)
  }

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
    setValidStatus(value.length >= 8 && !!username)
  }

  // const timer = () => {
  //   setTimeout(() => setEnableResend(true), 1000 * 120)
  // }
  return (<div className='center'>
    <div className='leftDiv'>
      <div className='jobLogo'></div>
      <div className='portalTitle'> <h2>Bharat’s Best Employer’s Job Portal</h2></div>
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
              minLength={6}
              placeholder="enter password"
              onChange={(e) => onChangePassword(e)}
            />
            {showError ? <Form.Text className="text-muted">
              Password must contain at least one lowercase letter, one uppercase letter, one numeric character and 8 character long.
            </Form.Text> : <></>}
          </Form.Group>
          <Button variant="primary" type="submit" disabled={!isValid}>
            Login
          </Button>
          <h2></h2>
          <Alert variant={'primary'}>
            <Alert.Link onClick={() => {
              navigate('/register')
            }}>New User? Please click here to register.</Alert.Link>.
          </Alert>
        </Form>
      </div>
    </div>
    <div className='rightDiv'></div>
  </div >)
}

export default Login;