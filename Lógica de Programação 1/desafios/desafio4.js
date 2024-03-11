//1
console.log("Seja bem vindo(a)!");

//2
let nome1 = "Beatriz";
console.log(`Olá, ${nome1}`);

//3
let nome2 = "Beatriz";
alert(`Olá, ${nome2}`);

//4
let linguagemPreferida = prompt("Qual a linguagem de programação que você mais gosta?");
console.log(`A sua linguagem de programação favorita é ${linguagemPreferida}`);

//5
let valor1 = 7;
let valor2 = 13;
let resultado = valor1 + valor2;

console.log(`A soma de ${valor1} e ${valor2} é ${resultado}`);

//6
let valor1x = 13;
let valor2x = 10;
let resultadox = valor1x - valor2x;

console.log(`A diferença entre ${valor1x} e ${valor2x} é ${resultadox}`);

//7
let idade = prompt("Insira sua idade: ");
let palavraIdade = idade >= 18 ? "Maior" : "Menor";
console.log(`${palavraIdade} de idade`);

// if (idade >= 18){
//     console.log("Maior de idade");
// } else{
//     console.log("Menor de idade")
// }

//8
let numero = parseFloat(prompt("Insira um número: "));

if(numero > 0){
    console.log("Número positivo");
} else if(numero == 0){
    console.log("Número zero");
} else{
    console.log("Número negativo");
}

//9
let num0 = 1;

while(num0<=10){
    console.log(num);
    num0++;
}

//10
let nota = 8;
let estaAprovado = nota >= 7 ? "Aprovado" : "Reprovado";

// if(nota >= 7){
//     console.log("Aprovado");
// } else{
//     console.log("Reprovado");
// }

//11
let num1 = Math.random();
console.log(num1);

//12
let num2 = parseInt(Math.random() * 10 + 1);
console.log(num2);

//13
let num3 = parseInt(Math.random() * 1000 +1);
console.log(num3);