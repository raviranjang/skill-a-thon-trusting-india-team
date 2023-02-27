import { useState } from "react";
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import cloudWalletService from "../Services/cloudWalletService";
import LocalStorage from "../utils/LocalStorage";
import UserService from "../Services/userService";
import { useNavigate } from "react-router";

const VerifyOtp = () => {
  const navigate = useNavigate()
  const [enableResend, setEnableResend] = useState(false)
  const timer = () => {
    setTimeout(() => {
      setEnableResend(true)
    }, 1000 * 5)
  }
  timer()
  let token = JSON.parse(LocalStorage.getItem('token'))
  const username = JSON.parse(LocalStorage.getItem('username'))
  const [validOtp, setValidOtp] = useState(false)
  const [otp, setOtp] = useState('')
  const submitOtp = async (e: any) => {
    e.preventDefault()
    try {
      const result = await cloudWalletService.confirmSignup(token, otp)
      const { accessToken, did, refreshToken } = result
      LocalStorage.setItem('user', { username, accessToken, did, refreshToken })
      const userInfo = await UserService.getUser()
      LocalStorage.setItem(token, '')
      LocalStorage.setItem(username, '')
      if (userInfo.user) {
        const { user: { name, organization } } = userInfo
        LocalStorage.setItem('user', { username, accessToken, did, refreshToken, name, organization })
        navigate('/dashboard', { replace: true })
      } else {
        navigate('/register')
      }
    }
    catch (error: any) {
      console.log(error)
    }
  }

  const onChangeOtp = (e: any) => {
    const { value } = e.target;
    const valid = stringValPatternValidation(value);
    if (valid) {
      setOtp(value)
    } else {
      setOtp(otp || '')
    }
    setValidOtp(value.length === 6)
  }

  const stringValPatternValidation = (v: string) => {
    const specialCharacterRegex = new RegExp('^[0-9]*$');
    const whiteSpaceRegex = /^\S*$/;
    return specialCharacterRegex.test(v) &&
      whiteSpaceRegex.test(v)
  };

  const resendOtp = async () => {
    try {
      token = await cloudWalletService.login(username, '')
      setEnableResend(false)
      timer()
    } catch (error: any) {
      alert('Something went wrong')
    }
  }

  const handleClose = () => {
    navigate('/', { replace: true })
  };

  return <div className='center'>
    <div className='leftDiv'>
      <div className='jobLogo'></div>
      <div className='loginForm'>
        <div className="backButton" onClick={handleClose}>
        </div>
        <Form onSubmit={(e) => {
          submitOtp(e)
        }}>
          <Form.Group className="mb-3">
            <Form.Label>Enter OTP</Form.Label>
            <Form.Control
              type="text"
              maxLength={6}
              value={otp}
              placeholder="enter otp"
              onChange={(e) => onChangeOtp(e)}
            />
          </Form.Group>
          <Button variant="primary" onClick={(e) => resendOtp()} disabled={!enableResend}>
            Resend Otp
          </Button> { }
          <Button variant="primary" type="submit" disabled={!validOtp}>
            Submit
          </Button>
        </Form>
      </div>
    </div>
    <div className='rightDiv'></div>
  </div>
}
export default VerifyOtp