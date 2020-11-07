import 'package:parallax_app/parallax/entities/animal.dart';

class MockAnimal {
  Animal valida() {
    return Animal(
        image: "parrot.jpg",
        name: "Parrot",
        livingPlace: "Place A",
        maxAge: 21,
        weight: 25.7);
  }

  List<Animal> validList() {
    return [
      Animal(
          image: "bunny.jpg",
          name: "Bunny",
          livingPlace: "Place A",
          maxAge: 12,
          weight: 11.7),
      Animal(
          image: "cat.jpg",
          name: "Cat",
          livingPlace: "Place B",
          maxAge: 27,
          weight: 15.7),
      Animal(
          image: "duck.jpg",
          name: "Duck",
          livingPlace: "Place C",
          maxAge: 11,
          weight: 11.7),
      Animal(
          image: "fox.jpg",
          name: "Fox",
          livingPlace: "Place D",
          maxAge: 32,
          weight: 35.7),
      Animal(
          image: "hamster.jpg",
          name: "Hamster",
          livingPlace: "Place E",
          maxAge: 9,
          weight: 5.7),
      Animal(
          image: "lion.jpg",
          name: "Lion",
          livingPlace: "Place F",
          maxAge: 44,
          weight: 126.7),
      Animal(
          image: "panda.jpg",
          name: "Panda",
          livingPlace: "Place G",
          maxAge: 34,
          weight: 145.6),
      Animal(
          image: "parrot.jpg",
          name: "Parrot",
          livingPlace: "Place H",
          maxAge: 21,
          weight: 25.7),
      Animal(
          image: "raccoon.jpg",
          name: "Raccoon",
          livingPlace: "Place I",
          maxAge: 22,
          weight: 35.0),
      Animal(
          image: "sheep.jpg",
          name: "Sheep",
          livingPlace: "Place J",
          maxAge: 21,
          weight: 45.4),
      Animal(
          image: "tiger.jpg",
          name: "Tiger",
          livingPlace: "Place K",
          maxAge: 44,
          weight: 134.8),
      Animal(
          image: "turtle.jpg",
          name: "Turtle",
          livingPlace: "Place L",
          maxAge: 121,
          weight: 43.1),
    ];
  }
}
