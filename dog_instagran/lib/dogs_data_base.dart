import 'model/dog.dart';

class Dogs {
  static Dog roberto = Dog(
    id: 1,
    nome: "Roberto",
    idade: 4,
    sexo: "M",
    briquedoFavorito: "bola",
    raca: "vira-lata",
    foto: "assets/imagens/dogs/dog3.jpg"
  );

  static Dog lapa = Dog(
    id: 2 ,
    nome: "Lapa",
    idade: 2,
    sexo: "F",
    briquedoFavorito: "cano de pvc",
    raca: "vira-lata",
    foto: "assets/imagens/dogs/dog4.jpg"
  ); 

  static Dog guts = Dog(
    id: 3,
    nome: "Guts",
    idade: 1,
    sexo: "M",
    briquedoFavorito: "sword",
    raca: "pastor alemão",
    foto: "assets/imagens/dogs/dog1.jpeg",
  ); 
}