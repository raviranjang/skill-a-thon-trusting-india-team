export default class OperationError {
  constructor(private readonly code: number, private readonly msg: string) {
    this.code = code
    this.msg = msg
  }

  getObject() {
    return {
      code: this.code,
      msg: this.msg,
    }
  }

  toString() {
    return this.msg
  }
}
