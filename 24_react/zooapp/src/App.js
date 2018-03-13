import React, { Component } from "react";
import logo from "./logo.svg";
import "./App.css";
import NavBar from "./NavBar";
import ZooContainer from "./ZooContainer";

class App extends Component {
  // constructor(props) {
  //   super(props);
  //   this.state = {
  //     beef: "steak"
  //   };
  // }

  state = {
    animals: [{ name: "Lion" }, { name: "Giraffe" }, { name: "Rhino" }],
    zooKeepers: [{ name: "Declan" }]
  };

  render() {
    console.log(this.state.animals);
    return (
      <div>
        <NavBar />
        <ZooContainer zoo={this.state.animals} />
      </div>
    );
  }
}

export default App;
