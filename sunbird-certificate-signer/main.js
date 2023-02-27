const { config } = require('dotenv')
config()


const {generateCredentialsRoute, verifyCredentialsRoute} = require("./src/routes/signerController");
const http = require('http');

const prefix = process.env.API_PREFIX || "/certificate-signer";

const port = process.env.PORT || 8079;

// process.env.CONFIG_BASE_PATH="./../../certificates"
// process.env.CERTIFICATE_CONTROLLER_ID="did:web:12701wspvk.execute-api.ap-south-1.amazonaws.com"

const server = http.createServer(async (req, res) => {
    console.time(req.url);
    console.log(`API ${req.method} ${req.url} called`);
    try {
        if (req.method === 'GET' && req.url.startsWith(`/health`)) {
            res.end("OK")
        } else if (req.method === 'GET' && req.url.endsWith("/did.json")) {
            res.setHeader("Content-Type", "application/json");
            res.end(JSON.stringify(require('./certificates/did.json')))
        } else if (req.method === 'POST' && req.url.startsWith(`${prefix}/sign`)) {
            const signedData = await generateCredentialsRoute(req, res)
            res.setHeader("Content-Type", "application/json");
            res.end(JSON.stringify(signedData))

        } else if (req.method === 'POST' && req.url.startsWith(`${prefix}/verify`)) {
            try {
                const signedData = await verifyCredentialsRoute(req, res)
                res.setHeader("Content-Type", "application/json");
                res.end(JSON.stringify(signedData))
            } catch (ex) {
                console.debug(ex);
                if (ex.code >=400) {
                    res.statusCode = ex.code;
                }
                return res.end(ex.message)
            }

        } else {
            res.statusCode = 404;
            res.end(`{"error": "${http.STATUS_CODES[404]}"}`)
        }
        console.timeEnd(req.url)
    } catch (e) {
        console.error(e)
        res.statusCode = e["code"] || 500;
        res.end(`{"error": "${http.STATUS_CODES[res.statusCode]}", "message": ${e.message}}`)
    }
});


server.listen(port, async () => {
    // add custom schema contexts
    // todo: let contextsFromUrls = await getContextsFromUrls(config.CACHE_CONTEXT_URLS);
   // const customDocumentLoader = {...contextsFromUrls};
    console.log(`Server listening on port ${port}`);
});

