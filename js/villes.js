document.addEventListener('DOMContentLoaded', traitementJSON('[{"codePostal":1000, "nom":"Bruxelles"}]'))



function traitementJSON(jsonArray){
    let jsonString = ""
    let i
    jsonArray = JSON.parse(jsonArray)
    for (i = 0; i < jsonArray.length; i++) {
        jsonString = `${jsonArray[i].codePostal} ${jsonArray[i].nom}`
        console.log(jsonString)
        let node = document.createElement('li')
        node.appendChild(document.createTextNode(jsonString))
        document.getElementById('listeVilles').appendChild(node)
    }
}
