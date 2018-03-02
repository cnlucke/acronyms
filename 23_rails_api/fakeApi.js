const store = (function() {
  let someAnimals = [
    {
      name: "Koala",
      url: "https://media.giphy.com/media/eDUHhtooZxyhi/giphy.gif"
    },
    {
      name: "Giraffe",
      url: "https://media.giphy.com/media/hFmIU5GQF18Aw/giphy.gif"
    }
  ];
  return {
    animals: someAnimals
  };
})();
