const express = new require("express");
const dotenv = require("dotenv")


dotenv.config()

const app = express();

// port

const port = process.env.PORT || 5000;

app.get("/", (req, res) => {
    return res.status(200).send("<h1>Hello from Dockerized app!</h1>")
})

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`)
})