import { AFFINIDI_WALLET_KEY } from '../constants/LocalStorageItems'
import { Wallet } from '../typings'
import EncodingUtil from '../utils/EncodingUtil'
import LocalStorage from '../utils/LocalStorage'

class WalletService {
  wallet?: Wallet

  init() {
    const encodedStr = JSON.parse(LocalStorage.getItem(AFFINIDI_WALLET_KEY))
    const decodedStr = EncodingUtil.decodeFromBase64(encodedStr)
    this.wallet = JSON.parse(decodedStr)
  }

  getDid() {
    return this.wallet?.did
  }

  getAccessToken() {
    return this.wallet?.accessToken
  }

  getRefreshToken() {
    return this.wallet?.refreshToken
  }
}

const walletService = new WalletService()
export default walletService
