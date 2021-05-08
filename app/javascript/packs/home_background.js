let YOUR_ACCESS_KEY = "Lgm4kQI5x0Okj5nuCgtrEb3FhesUWSh5gpZ4O6K4cyw"


let requestOptions = {
        method: "GET",
    }

let container = document.querySelector('.main-container')

console.log(container)

fetch(`https://api.unsplash.com/search/photos?page=1&query=mexico&client_id=${YOUR_ACCESS_KEY}`, requestOptions)
  .then(response => response.json())
  .then(data => { console.log(data)

    container.style.backgroundImage = `url(${data.results[0].links.html})`

  });
