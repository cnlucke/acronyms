class App {
  constructor() {
    this.movieContainer = document.getElementById("movie-list");
  }

  // https://api.themoviedb.org/3/movie/now_playing?api_key=84ff24e54dc5337932a5dcb4614390b3
  /// What do I want to do
  // Show some movies from themoviedb on my page
  /// 1. Fetch some data from moviedb
  /// 2. parse data  from api
  /// 3. I need to know where on the page it should go
  /// 4. Using my data I should create DOM elements
  /// 5. Using those DOM elements I should add them to the page

  fetchMovies() {
    fetch(
      "https://api.themoviedb.org/3/movie/now_playing?api_key=84ff24e54dc5337932a5dcb4614390b3"
    )
      .then(res => res.json())
      .then(json => this.populateData(json));
  }

  populateData(json) {
    let movieResults = json.results;
    console.log(this.movieContainer);
    movieResults.forEach(movie => {
      this.createMovieItem(movie);
    });
  }

  createMovieItem(data) {
    let li = document.createElement("li");
    li.innerText = data.original_title; /// COME BACK TO THIS LATER
    li.setAttribute("data-movieid", data.id);
    this.movieContainer.appendChild(li);

    li.addEventListener("click", event => {
      this.onMovieItemClick(event);
    });
  }

  onMovieItemClick(event) {
    console.log(event.target.dataset.movieid);
  }

  /*
    Instructions

    Problem: I want to click a list item and see more information from that item
    -> Add an event listener
    -> Make another request to the api
    -> Create HTML to place info on the page
    -> Put HTML on the page

  */
}
