import courseBPPController from "./course.bpp.controller"

export const initBPPRoutes = (app) => {
    app.post("/bpp/search", courseBPPController.search)

    app.post("/bpp/init", courseBPPController.init)

    app.post("/bpp/confirm", courseBPPController.confirm)

    app.post("/bpp/select", courseBPPController.select)
}
