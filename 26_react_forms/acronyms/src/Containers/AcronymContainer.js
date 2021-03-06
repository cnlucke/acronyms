import React, { Component } from "react";

import AcronymList from "../Components/AcronymList";
import AcronymForm from "../Components/AcronymForm";
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

  addAcronym = acronym => {
    let newArray = [...this.state.acronyms, acronym];

    this.setState({
      acronyms: newArray
    });
  };

  filterAcronyms = () => {
    return this.state.acronyms.filter((acronym) => {
      return acronym.short.toLowerCase().includes(this.props.search.toLowerCase()) || acronym.long.toLowerCase().includes(this.props.search.toLowerCase())
    })
  }

  render() {
    return (
      <div className="row">
        <AcronymList acronyms={this.filterAcronyms()} />
        <AcronymForm handleAdd={this.addAcronym} />
      </div>
    );
  }
}

export default AcronymContainer;
