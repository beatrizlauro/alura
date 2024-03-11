//1
function helloWorld(){
    console.log("Olá, mundo!");
}

helloWorld();

//2
function name(nome){
    console.log(`Olá, ${nome}`)
}

name("Jimin");

//3
function dobro(num){
    return num * 2;
}

let resultDobro = dobro(7);
console.log(dobro);

//4
function media(num1, num2, num3){
    return (num1 + num2 + num3) / 3;
}

let calcMedia = media(7, 10, 13);
console.log(calcMedia);

//5
function findBigger(num4, num5){
    if(num4 > num5){
        return num4;
    } else{
        return num5;
    }
}

let maior = findBigger(7, 13);
console.log(maior);

//6
function quadrado(num6){
    return num6 * num6;
}

let square = quadrado(7);
console.log(square);