$('#example-14-content').hide();
$('#example14').bt({
    trigger: 'click',
    contentSelector: "$('#example-14-content').html()", /*get text of inner content of hidden div*/
    width: 500,
    fill: '#00FF4E',
    strokeWidth: 0, /*no stroke*/
    spikeLength: 40,
    spikeGirth: 10,
    padding: 20,
    cornerRadius: 15,
    cssStyles: {
        fontFamily: '"lucida grande",tahoma,verdana,arial,sans-serif',
        fontSize: '13px'
    }
});

$(function () {
    var currentPosition = 0;
    var slideWidth = 682;
    var slides = $('.slide');
    var numberOfSlides = slides.length;
    setInterval(changePosition, 4000);
    slides.wrapAll('<div id="slidesHolder"></div>');
    slides.css({ 'float': 'left' });
    $('#slidesHolder').css('width', slideWidth * numberOfSlides);
    function changePosition() {
        if (currentPosition == numberOfSlides - 1) {
            currentPosition = 0;
        }
        else {
            currentPosition++;
        }
        moveSlide();
    }
    function moveSlide() {
        $('#slidesHolder').animate({ 'marginLeft': slideWidth * (-currentPosition) });
    }
});

$(function () {
    $(document).tooltip();
});

/*  FUNKCJA POBIERA Z BUTTONA DANE I TWORZY NOWY WIERSZ W TABLICY "KOSZYK" (JEŚLI NIE MA TAM JESZCZE PRODUKTU)  */
function dodajDoKoszyka(produktId, produktNazwa, produktCena) {

    document.getElementById("pustyKoszyk").innerHTML = "Zawartość Twojego koszyka:";

    var id = document.getElementById(produktId);
    var nazwa = document.getElementById(produktNazwa);
    var cena = document.getElementById(produktCena);
    //alert(id.value + nazwa.innerHTML + cena.innerHTML);

    if (!czyZawieraProdukt(id.value, nazwa.innerHTML, cena.innerHTML)) {    /*  jeśli funkcja nie znajdzie w tabeli produktu, 
                                                                                zwróci false i wiersz zostanie dodany */

        var table = document.getElementById("koszykTable");
        var rowCount = table.rows.length;
        var row = table.insertRow(rowCount);

        /*  NAZWA PRODUKTU  */
        var cell0 = row.insertCell(0);
        var element0 = document.createElement("text");
        element0.type = "text";
        element0.name = "nazwa";
        element0.innerHTML = nazwa.innerHTML;
        cell0.appendChild(element0);

        /*  ILOŚĆ SZTUK */
        var cell1 = row.insertCell(1);
        var element1 = document.createElement("input");
        element1.type = "text";
        element1.name = "iloscSztuk";
        element1.value = "1";
        cell1.appendChild(element1);

        /*  LABEL - "SZT." */
        var cell2 = row.insertCell(2);
        var element2 = document.createElement("text");
        element2.type = "text";
        element2.name = "labelSzt";
        element2.innerHTML = "szt.";
        cell2.appendChild(element2);

        /*  WARTOŚĆ (SUMA SZTUK * CENA) */
        var cell3 = row.insertCell(3);
        var element3 = document.createElement("text");
        element3.type = "text";
        element3.name = "cenaProd";
        element3.innerHTML = cena.innerHTML;
        cell3.appendChild(element3);

        /*  LABEL - "ZŁ." */
        var cell4 = row.insertCell(4);
        var element4 = document.createElement("text");
        element4.type = "text";
        element4.name = "labelZl";
        element4.innerHTML = "zł";
        cell4.appendChild(element4);

        /*  LINKBUTTON "AKTUALIZUJ" */
        //var cell5 = row.insertCell(5);
        //var element5 = document.createElement("button");
        //var t2 = document.createTextNode("Aktualizuj");
        //element5.appendChild(t2);
        //element5.name = "buttonAktualizuj";
        //element5.addEventListener('click', function () { aktualizuj(); }, false);
        //cell5.appendChild(element5);

        var cell5 = row.insertCell(5);
        var element5 = document.createElement("text");
        element5.type = "text";
        element5.name = "aktualizujLink";
        element5.innerHTML = "aktualizuj";
        element5.className += 'linkButtonKoszyk';
        element5.addEventListener('click', function () { aktualizuj(); }, false);
        cell5.appendChild(element5);


        var cell6 = row.insertCell(6);
        var element6 = document.createElement("text");
        element6.type = "text";
        element6.name = "usunLink";
        element6.innerHTML = "usuń";
        element6.className += 'linkButtonKoszyk';
        element6.addEventListener('click', function () { usun(); }, false);
        cell6.appendChild(element6);

        /*  UKRYTE POLE ZAIERAJĄCE ID PRODUKTU  */
        var cell7 = row.insertCell(7);
        var element7 = document.createElement("input");
        element7.type = "hidden";
        element7.name = "id";
        element7.value = id.value;
        cell7.appendChild(element7);

        sumujProdukty();
    }
}

function czyZawieraProdukt(id, nazwa, cena) {    /*  true - jesli koszyk zawiera id produktu, false -> jeśli nie zawiera, oraz zmodyfikuj wiersz */

    var table = document.getElementById("koszykTable");
    var zawiera = false;
    var numerWierszaDoModyfikacji;

    for (var i = 0; i < table.rows.length; i++) {
        var row = table.rows.item(i);
        if (row.cells.item(7).firstChild.value == id) {          /* w 7. wierszu znajduje sie wartość id */
            zawiera = true;
            numerWierszaDoModyfikacji = i;                      /*  numer wiersza, który będzie trzeba zmodyfikować */
        }
    }
    if (zawiera) {                                              /* tutaj - modyfikacja wiersza tabeli i sumy */
        //  dodaj + 1 do liczby produktów
        table.rows.item(numerWierszaDoModyfikacji).cells.item(1).firstChild.value = 
            parseInt(table.rows.item(numerWierszaDoModyfikacji).cells.item(1).firstChild.value) + 1;
        //  dodaj cenę do ceny produktów (zamień przecinek na kropkę itd..)

        var cenaStaraRepl = (table.rows.item(numerWierszaDoModyfikacji).cells.item(3).firstChild.innerHTML).replace(",", ".");
        var cenaDetalRepl = cena.replace(",", ".");
        var cenaNowaRepl = (parseFloat(cenaStaraRepl) + parseFloat(cenaDetalRepl)).toFixed(2);
        //alert("cena stara repl: " + cenaStaraRepl + " cena deal : " + cenaDetalRepl + " suma: " + cenaNowaRepl);
        var temp = cenaNowaRepl.toString();
        var cenaFinal = temp.replace(".", ",");
        //alert(cenaFinal.toString());

        table.rows.item(numerWierszaDoModyfikacji).cells.item(3).firstChild.innerHTML = cenaFinal;
        sumujProdukty();

        return true;
    }
    else {
        return false;
    }
}

function sumujProdukty() {          /*  podsumuj wartość koszyka po zmianie ceny   */
    var suma = document.getElementById("LabelSuma").innerHTML;
    var table = document.getElementById("koszykTable");
    var temp;
    var sumaJS = 0;
    var sumaGotowa;

    for (var i = 0; i <= table.rows.length; i++) {
        temp = (table.rows.item(i).cells.item(3).firstChild.innerHTML).replace(",", "."); /*  w wierszu 3. znajduje się pole "cena"   */
        //alert((parseFloat(temp)).toString());
        sumaJS = sumaJS + parseFloat(temp);
        //alert(sumaJS);
        sumaGotowa = sumaJS.toFixed(2);
        document.getElementById('LabelSuma').innerHTML = "Do zapłaty: " + sumaGotowa.replace(".", ",") + " zł";
    }
}

function aktualizuj() {
    alert("aktualizuj");
    return false;
}

function usun() {
    alert("usun");
    return false;
}

