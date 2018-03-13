import React from "react";
import uuid from "uuid";

export default class ZooContainer extends React.Component {
  sayHello() {
    console.log(this);
  }

  someArrowFunction = () => {
    console.log("arrow", this);
  };
  render() {
    this.sayHello();
    this.someArrowFunction();

    const animals = this.props.zoo.map((animal, index) => (
      <li key={uuid()}>{animal.name}</li>
    ));
    console.log(animals);
    return <div>{this.props.zoo.length > 2 ? <ul>{animals}</ul> : null}</div>;
  }
}

// const BookContainer = () => {
//
//   return <p>Hello Book Container</p>;
// };

// export default BookContainer;
