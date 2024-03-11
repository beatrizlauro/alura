//1
let altura = 1.84;
let peso = 113;

function calculoIMC(altura, peso){
    let imc = peso / (altura * altura);
}
//============================================================
//2
function calcularFatorial(numero) {
    if (numero === 0 || numero === 1) {
      return 1;
    }
  
    let fatorial = 1;
    for (let i = 2; i <= numero; i++) {
      fatorial *= i;
    }
  
    return fatorial;
}
  
// Exemplo de uso
let numeroFato = 5;
let resultado = calcularFatorial(numero);
console.log(`O fatorial de ${numero} é ${resultado}`);
//============================================================

//3
/*let dollar = 4.8;

function conversaoRealDolar(dollar){
    let valor = 50;
    return valor * dollar;
}

conversaoRealDolar();*/

function converterDolarParaReal(valorEmDolar) {
    let cotacaoDolar = 4.80;
    let valorEmReais = valorEmDolar * cotacaoDolar;
    return valorEmReais.toFixed(2);
}
  
// Exemplo de uso
let valorEmDolar = 50;
let valorEmReais = converterDolarParaReal(valorEmDolar);
console.log(`${valorEmDolar} dólares equivalem a R$ ${valorEmReais}`);
//============================================================

//4
/*let alturaParede = 2.5;
let largura = 4;

function areaPerimetro(altura, largura){
    return altura * largura;
    return (altura * 2) + (largura * 2);
}

areaPerimetro();*/

function calcularAreaPerimetroSalaRetangular(altura, largura) {
    let area = altura * largura;
    let perimetro = 2 * (altura + largura);
    
    console.log(`Área da sala: ${area} metros quadrados`);
    console.log(`Perímetro da sala: ${perimetro} metros`);
}
  
// Exemplo de uso
let alturaParede = 3; // em metros
let largura = 5; // em metros
calcularAreaPerimetroSalaRetangular(altura, largura);
  
//============================================================

//5
/*let raio = 5;

function areaPerimetroCirculo(raio){
    let pi = 3.14;
    return pi * (raio * raio);
    return 2 * pi * raio;
}

areaPerimetroCirculo();*/

function calcularAreaPerimetroSalaCircular(raio) {
    let area = Math.PI * raio * raio;
    let perimetro = 2 * Math.PI * raio;
    
    console.log(`Área da sala circular: ${area.toFixed(2)} metros quadrados`);
    console.log(`Perímetro da sala circular: ${perimetro.toFixed(2)} metros`);
  }
  
  // Exemplo de uso
  let raio = 4; // em metros
  calcularAreaPerimetroSalaCircular(raio);
//============================================================

//6
function mostrarTabuada(numero) {
    for (let i = 1; i <= 10; i++) {
      let resultado = numero * i;
      console.log(`${numero} x ${i} = ${resultado}`);
    }
}
  
// Exemplo de uso
let numero = 7;
mostrarTabuada(numero);