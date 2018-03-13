const path = require("path");

const config = {
  entry: "./src/index.js",
  output: {
    path: path.resolve(__dirname, "build"),
    filename: "bundle.js",
    publicPath: "build/"
  },
  module: {
    rules: [
      {
        loader: "babel-loader",
        test: /\.js$/,
        query: {
          presets: ["react", "es2015", "stage-1"]
        },
        exclude: /node_modules/
      }
    ]
  }
};

module.exports = config;
