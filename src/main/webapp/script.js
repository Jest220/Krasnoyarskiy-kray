let districtSelect = document.getElementById("District")
let settlementSelect = document.getElementById("Settlement")
let streetSelect = document.getElementById("Street")
let domaSelect = document.getElementById("Doma")

window.addEventListener("load", () => {
    let url = window.location.href + "districts.json"
    var request = new XMLHttpRequest();
    request.open("GET", url)
    request.responseType = "json"
    request.send()

    request.onload = () => {
        for (const key in request.response) {
            districtSelect.add(new Option(request.response[key], key))
        }
    }
})


districtSelect.addEventListener("change", () => {
    let i, L = settlementSelect.options.length - 1;
    for(i = L; i > 0; i--) {
        settlementSelect.remove(i);
    }
    let selectedIndex = districtSelect.options.selectedIndex
    let url = window.location.href + "settlements.json?id=" + districtSelect.options[selectedIndex].value
    let xhr = new XMLHttpRequest()
    xhr.open("GET", url)
    xhr.responseType = "json"
    xhr.send()

    xhr.onload = () => {
        for (const key in xhr.response) {
            settlementSelect.add(new Option(xhr.response[key], key))
        }
    }

    L = streetSelect.options.length - 1;
    for(i = L; i > 0; i--) {
        streetSelect.remove(i);
    }
    let xhr2 = new XMLHttpRequest()
    url = window.location.href + "streets.json?districtId=" + districtSelect.options[selectedIndex].value + "&settlementId="
    xhr2.open("GET", url)
    xhr2.responseType = "json"
    xhr2.send()
    xhr2.onload = () => {
        for (const key in xhr2.response) {
            streetSelect.add(new Option(xhr2.response[key], key))
        }
    }
    
})

settlementSelect.addEventListener("change", () => {
    let i, L = streetSelect.options.length - 1;
    for(i = L; i > 0; i--) {
        streetSelect.remove(i);
    }
    let selectedIndex = districtSelect.options.selectedIndex
    let settlementId = settlementSelect.options.selectedIndex
    let url = window.location.href + "streets.json?districtId=" + districtSelect.options[selectedIndex].value + "&settlementId=" + (settlementSelect.options[settlementId].value == 0 ? "" : settlementSelect.options[settlementId].value)
    let xhr = new XMLHttpRequest()
    xhr.open("GET", url)
    xhr.responseType = "json"
    xhr.send()
    xhr.onload = () => {
        for (const key in xhr.response) {
            streetSelect.add(new Option(xhr.response[key], key))
        }
    }
})

streetSelect.addEventListener("change", () => {
    let i, L = domaSelect.options.length - 1;
    for(i = L; i > 0; i--) {
        domaSelect.remove(i);
    }

    let houses = []
    let streetId = streetSelect.options.selectedIndex
    let url = window.location.href + "doma.json?streetId=" + streetSelect.options[streetId].value
    let xhr = new XMLHttpRequest()
    xhr.open("GET", url)
    xhr.responseType = "json"
    xhr.send()
    xhr.onload = () => {
        for (const key in xhr.response) {
            houses = houses.concat(xhr.response[key].split(','))
        }
        houses.sort((a, b) => {
            let numA = parseFloat(a);
            let numB = parseFloat(b);
            
            // Если числовые части равны, сравниваем строки целиком
            if (numA === numB) {
                return a.localeCompare(b);
            }
            
            // Иначе, сравниваем числовые части
            return numA - numB;
        })
        for (let i = 0; i < houses.length; ++i) {
            domaSelect.add(new Option(houses[i], i))
        }
    }
})