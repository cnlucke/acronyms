import React, { Component } from 'react';

export default class Lightswitch extends Component {


  // constructor(){
  //   super()
  //   this.clickHandler = this.clickHandler.bind(this)
  // }
 
  
  className(){
    return "lightswitch" + (this.props.onOrOffStatus ? " on" : "");
  }

  render() {
    return (<div className={ this.className() }>
            <button className="switch" onClick={ this.props.clickHandler }>{ this.props.switchTitle }</button>
          </div>)
  }
}