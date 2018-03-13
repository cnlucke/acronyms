import React, { Component } from "react";
import "./App.css";
import AcronymContainer from "./Containers/AcronymContainer";
import NavBar from "./Components/NavBar";
class App extends Component {
  state = {
    search: ''
  }

  search = (event) => {
    this.setState({ search: event.target.value})
  }

  render() {
    return (
      <div>
        <NavBar handleSearch={this.search}/>
        <div className="container">
          <div className="jumbotron">
            <AcronymContainer search={this.state.search}/>
          </div>
        </div>
      </div>
    );
  }
}

export default App;
