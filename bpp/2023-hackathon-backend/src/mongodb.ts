import { mongoUrl } from './constants'
import { MongoClient } from 'mongodb';
const client = new MongoClient(mongoUrl);
export function connect() {
  return client.connect()
}
export default client
