document.addEventListener('DOMContentLoaded', traitementJSON())


function traitementJSON(){
    let xhr = new XMLHttpRequest()
    xhr.open('get', 'http://localhost:666/personnes', true)
    let jsonString = ""
    xhr.onload = function() {
        let jsonArray = JSON.parse(xhr.responseText)
        console.log(jsonArray)
        for (let i in jsonArray) {
            document.getElementById('personneFiltreeTitreId').innerHTML += `<td>${jsonArray[i].id}</td>`
            document.getElementById('personneFiltreeTitrePrenom').innerHTML += `<td>${jsonArray[i].persPre}</td>`
            document.getElementById('personneFiltreeTitreNom').innerHTML += `<td>${jsonArray[i].persNom}</td>`
            document.getElementById('personneFiltreeTitreNaissance').innerHTML += `<td>${jsonArray[i].dateNaiss}</td>`
        }
    }
    xhr.send()
    return false
}
