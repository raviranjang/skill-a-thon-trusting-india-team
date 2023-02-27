const LocalStorage = {
  setItem(key: string, value: any) {
    window.localStorage.setItem(key, JSON.stringify(value))
  },

  getItem(key: string): string {
    return window.localStorage.getItem(key) || ''
  },
  removeItem(key: string) {
    window.localStorage.removeItem(key)
  },
}

export default LocalStorage
