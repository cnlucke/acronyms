import React, { Component } from "react";

import AcronymList from "../Components/AcronymList";
class AcronymContainer extends Component {
  state = {
    acronyms: [
      {
        short: "LOL",
        long: "Laugh Out Loud",
        url: "https://media.giphy.com/media/1ZDDyyFQYRYYdYrL6o/giphy.gif"
      },
      {
        short: "TTYL",
        long: "Talk to Yall later",
        url:
          "https://media.giphy.com/media/l4FGn8asw5EJrm10s/giphy-downsized.gif"
      }
    ]
  };

  render() {
    return (
      <div className="row">
        <AcronymList acronyms={this.state.acronyms} />
      </div>
    );
  }
}

export default AcronymContainer;
