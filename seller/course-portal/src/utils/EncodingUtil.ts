export default class EncodingUtil {
  static encodeToBase64(obj: any): string {
    if (typeof obj === 'string') {
      return btoa(obj)
    }
    return btoa(JSON.stringify(obj))
  }

  static decodeFromBase64(str: string): string {
    return atob(str)
  }
}
