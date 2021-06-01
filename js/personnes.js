document.addEventListener('DOMContentLoaded', traitementJSON())


function traitementJSON(){
    let xhr = new XMLHttpRequest()
    xhr.open('get', 'http://localhost:666/personnes', true)
    xhr.onload = function() {
        let jsonArray = JSON.parse(xhr.responseText)
        console.log(jsonArray)
        for (let i in jsonArray) {
            row = document.getElementById('tbodyPersonnesFiltrees').insertRow(i)
            row.insertCell(0).innerHTML += jsonArray[i].id
            row.insertCell(1).innerHTML += jsonArray[i].persPre
            row.insertCell(2).innerHTML += jsonArray[i].persNom
            row.insertCell(3).innerHTML += jsonArray[i].dateNaiss
        }
    }
    xhr.send()
    return false
}
