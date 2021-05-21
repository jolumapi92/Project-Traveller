const header = document.querySelector('#name-location');

const tagsToHide = document.querySelectorAll('.form-check-label')

const collection = Array.from(tagsToHide)

function removeLabels() {
    collection.forEach(function(element){
        if(element.innerText.toString().split(' ')[0].toLowerCase() !== header.innerText.toLowerCase()) {
            element.style.display = "none";
            console.log(element.innerText = element.innerText.toString().split(' ').slice(1)) 
        }
        })
    };
removeLabels();