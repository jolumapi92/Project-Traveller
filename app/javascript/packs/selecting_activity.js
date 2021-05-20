const header = document.querySelector('#name-location');

const tagsToHide = document.querySelectorAll('.form-check-label')

const collection = Array.from(tagsToHide)

function removeLabels() {
    collection.forEach(function(element){
        if(element.innerText !== header.innerText){
            element.style.display = "none"
        }
    })
}

