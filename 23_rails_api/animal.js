class Animal {
  constructor({ name, url }) {
    this.name = name;
    this.url = url;
  }

  render() {
    return `
      <div class="card" style="width: 18rem;">
      <img class="card-img-top" src=${this.url} alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title">${this.name}</h5>
      </div>
    </div>
    `;
  }
}
