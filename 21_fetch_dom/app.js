class App {
  constructor() {
    this.list = document.getElementById("movie-list");
  }

  getMovies() {
    fetch(
      "https://api.themoviedb.org/3/movie/now_playing?api_key=84ff24e54dc5337932a5dcb4614390b3"
    )
      .then(res => res.json())
      .then(json => {
        this.setUpPage(json);
      });
  }

  setUpPage(data) {
    let { results } = data;
    results.forEach(item => {
      let { poster_path } = item;
      let imageUrl = `https://image.tmdb.org/t/p/w185/${poster_path}`;
    });
  }
}
