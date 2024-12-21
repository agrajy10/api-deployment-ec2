import express from "express";

const app = express();

app.listen(3000, () => {
  console.log("Server running on port 3000");
});

app.get("/", (req, res) => {
  res.json({
    message: "Hello World",
  });
});

app.get("/users", (req, res) => {
  res.json({
    users: [
      { id: 1, name: "John Doe" },
      { id: 2, name: "Jane Doe" },
    ],
  });
});
