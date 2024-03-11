let titulo = document.querySelector("h1");
titulo.innerHTML = "Hora do Desafio";

function verifyClick(){
    console.log("O botão foi clicado");
}

function alertMessage(){
    alert("Eu amo JS");
}

function promptMessage(){
    let cidade = prompt("Insira uma cidade: ");
    alert(`Estive em ${cidade} e lembrei de você`);
}

function somaFunction(){
    let valor1 = parseInt(prompt("Insira um valor: "));
    let valor2 = parseInt(prompt("Insira outro valor: "));
    let soma = valor1 + valor2;
    alert(`A soma entre ${valor1} e ${valor2} é ${soma}`);
}