import React, { Component } from 'react';
import Lightswitch from './Lightswitch.js';


export default class Switches extends Component {

  state = {
    switches: [
      {
        title: "Switch",
        onOrOffStatus: false,
        key: "a"
      },
      {
        title: "Swetch",
        onOrOffStatus: true,
        key: "b"
      },
      {
        title: "Swatch",
        onOrOffStatus: false,
        key: "c"
      },
      {
        title: "Switcaaah",
        onOrOffStatus: true,
        key: "a1"
      },
      {
        title: "Swetchaaa",
        onOrOffStatus: false,
        key: "b1"
      },
      {
        title: "Swatchaa",
        onOrOffStatus: false,
        key: "c1"
      }
    ]
  }

  clickHandler = (event, theSwitch) => {
    const indexOfSwitch = this.state.switches.findIndex((oneSwitch) => {
      return oneSwitch.key === theSwitch.key;
    });

    let firstSlice = this.state.switches.slice(0, indexOfSwitch)
    
    theSwitch.onOrOffStatus = !theSwitch.onOrOffStatus;

    let secondSlice = this.state.switches.slice(indexOfSwitch + 1)

    let newArray = [...firstSlice, theSwitch, ...secondSlice]

    this.setState({
      switches: newArray
    })
  }

  handleAllOn = () => {
    this.handleAllSame((currentSwitch) => {
      currentSwitch.onOrOffStatus = true;
    })
  }

  handleAllOff = () => {
    this.handleAllSame((currentSwitch) => {
      currentSwitch.onOrOffStatus = false;
    })
  }

  handleAllFlip = () => {
    this.handleAllSame((currentSwitch) => {
      currentSwitch.onOrOffStatus = !currentSwitch.onOrOffStatus;
    })
  }



  handleAllSame = (modify) => {
    const newSwitches = this.state.switches.map((theSwitch) => {
      modify(theSwitch);
      return theSwitch;
    })

    this.setState({
      switches: newSwitches
    })
  }


  render() {
    const switchesChunk = this.state.switches.map((theSwitch) => {
      return <Lightswitch onOrOffStatus={ theSwitch.onOrOffStatus } clickHandler={ (friedCheese) => { this.clickHandler(friedCheese, theSwitch)} } key={ theSwitch.key } switchTitle={ theSwitch.title } />
    })
    return (<div>
        <div className="container">
          { switchesChunk }
        </div>
        <button onClick={this.handleAllOn}>All on</button>
        <button onClick={this.handleAllOff}>All off</button>
        <button onClick={this.handleAllFlip}>All flip</button>
        </div>)
  }

}