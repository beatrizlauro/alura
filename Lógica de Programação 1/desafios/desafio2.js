//1
let diaDaSemana = prompt("Qual é o dia da semana? ");

if (diaDaSemana == "Sábado" || "Domingo"){
    alert("Bom fim de semana!");
} else{
    alert("Boa semana!");
}

//2
let numInserido = prompt("Digite um número: ");

if (numInserido < 0){
    alert("Número negativo");
} else{
    alert("Número positivo");
}

//3
let pontuacao = prompt("Qual foi sua pontuação? ");

if (pontuacao >= 100){
    console.log("Parabéns, você venceu!");
} else{
    console.log("Tente novamente para ganhar");
}

//4
let saldo = prompt("Qual é o saldo da sua conta?");

alert(`O seu saldo é de R$${saldo}`);

//5
let nome = prompt("Qual é o seu nome?");

alert(`Seja bem vindo(a) ${nome}`);