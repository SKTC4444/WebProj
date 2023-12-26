
 function buildCardsUsinJSAPI(containter, data) {
    let cardDiv = document.createElement("div");
    cardDiv.setAttribute("class", "product-card"); 
    let imgDiv = document.createElement("img"); 
    imgDiv.setAttribute("src", data.thumbnail); 
    imgDiv.setAttribute("class", "prod-img"); 
    let infoDiv = document.createElement("div");
    infoDiv.setAttribute("class", "prod-info");
    let titleP = document.createElement("p"); 
    let costP = document.createElement("p");
    titleP.setAttribute("class", "prod-title"); 
    costP.setAttribute("class", "prod-cost"); 
    titleP.appendChild(document.createTextNode(data.title)); 
    costP.appendChild(document.createTextNode(data.price)); 
    infoDiv.appendChild(titleP) 
    infoDiv.appendChild(costP)  
    cardDiv.appendChild(imgDiv)  
    cardDiv.appendChild(infoDiv); 
    containter.appendChild(cardDiv);  
  }
  
  function fetchPhotos() {
    
    var url = "https://dummyjson.com/products";
    fetch(url)
      .then((response) => { 
        return response.json();
      })
      .then((data) => {
        let containerDiv = document.getElementById("product-list");
        let products = data.products;
        let containerFragment = document.createDocumentFragment();
        products.forEach((product) => {
          buildCardsUsinJSAPI(containerFragment, product);
        });
        containerDiv.appendChild(containerFragment);
      })
      .catch((error) => {
        console.log(error);
      });
      
    function buildCardsUsingDOMAPI(container, data) {
        let cardDiv = document.createElement('div');
        cardDiv.addEventListener('click', function(ev){
        ev.currentTarget.style.opacity = "0.5"
      })}
  }
  fetchPhotos();