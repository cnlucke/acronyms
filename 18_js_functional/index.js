const superUnderscore = (function() {
  return {
    map: function(array, callback) {
      filter();
      let newArray = [];
      for (let i = 0; i < array.length; i++) {
        newArray.push(callback(array[i]));
      }
      return newArray;
    },

    filter: function(array, callback) {
      let newArray = [];
      for (let element of array) {
        if (callback(element)) {
          newArray.push(element);
          // then include
        }
      }
      return newArray;
    }
  };
})();

/*

  ["1,3,4,5"].select do |item|
    item % 2 == 0
  end


  class Pet

    def meow
      "Meow Meow"
      wag
    end

    def wag
    end
  end


*/

const BlackJack = {
  deck: ["Ace of Clubs"],
  score: 0,
  drawCard: function() {
    // pretend random value
    return deck.pop();
  },
  hit: function() {
    return deck.shift();
  }
};
