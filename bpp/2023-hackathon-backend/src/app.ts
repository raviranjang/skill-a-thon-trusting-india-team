import express from 'express'
import { port } from './constants'
import initJobRoutes from './jobs/routes'
import initCourseRoute from './courses/routes'
import { connect } from './mongodb'
import { initBPPRoutes } from './courses-bpp/routes'
import initUserRoutes from './users/routes'
import cors from 'cors'

const app = express()

// configure express to parse JSON automatically
app.use(express.json())

app.get("/health", (req, res) => {
  res.status(200).json({
    status: "Ok"
  })
})

app.use(cors())
// configure express to use 4 spaces when sending JSON as response
app.set('json spaces', 4)

initUserRoutes(app)
initCourseRoute(app)
initJobRoutes(app)
initBPPRoutes(app)

connect().then(() => {
  console.log('Mongo DB connected successfully')
  app.listen(port, () => {
    return console.log(`Express is listening at http://localhost:${port}`);
  });
}).catch(e => {
  console.log('Unable connect to Mongo DB')
  console.error(e)
  console.log('Exiting....')
  process.exit(1)
})




