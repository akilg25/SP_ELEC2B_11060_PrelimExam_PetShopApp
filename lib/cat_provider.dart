import 'package:flutter/material.dart';
import 'cat.dart';

class CatProvider with ChangeNotifier {
  List<Cat> catBreeds = [
    Cat(
      breedName: 'Persian',
      image: 'assets/pet_shop_2ndPage_1.jfif',
      price: 85,
      weight: '7-12 lbs',
      height: '10-15 in',
      color: 'Black',
      details: 'Persian cats are renowned for their distinctive appearance, characterized by a round face, short nose, and strikingly large eyes. With their long, flowing coats in various colors and patterns, these felines exude elegance.',
    ),
     Cat(
      breedName: 'Sphynx',
      image: 'assets/pet_shop_2ndpage_2.jfif',
      price: 60,
      weight: '7-12 lbs',
      height: '10-15 in',
      color: 'Pink',
      details: 'The Sphynx cat is easily recognizable for its hairless appearance, wrinkled skin, and large ears. Despite its lack of fur, Sphynx cats are known for being warm to the touch due to their body heat being more noticeable without the insulation of fur.',
    ),
     Cat(
      breedName: 'Bengal',
      image: 'assets/pet_shop_2ndPage_3.jfif',
      price: 90.0,
      weight: '7-12 lbs',
      height: '10-15 in',
      color: 'Snow,Brown',
      details: 'The Bengal cat is a striking breed known for its distinctive spotted or marbled coat that resembles that of a wild leopard. With a sleek and athletic build, Bengals showcase a playful and energetic temperament. ',
    ),
     Cat(
      breedName: 'Abyssinian',
      image: 'assets/pet_shop_2ndPage_4.jfif',
      price: 75.0,
      weight: '7-12 lbs',
      height: '10-15 in',
      color: 'Red,Blue',
      details: 'The Abyssinian cat is known for its strikingly beautiful and ticked coat, which gives it a wild appearance reminiscent of the cats depicted in ancient Egyptian art. With a lithe and graceful build, Abyssinians have large, expressive almond-shaped eyes and distinctive, large ears.',
    ),
     Cat(
      breedName: 'Burmese',
      image: 'assets/pet_shop_2ndPage_5.jfif',
      price: 75.0,
      weight: '7-12 lbs',
      height: '10-15 in',
      color: 'Blue',
      details: 'The Burmese cat is a charming and affectionate breed known for its sleek, short coat and expressive golden-yellow eyes. With a compact and muscular build, Burmese cats have a distinctive, rounded head and a short, fine coat that lies close to their body.',
    ),
     Cat(
      breedName: 'Russian Blue',
      image: 'assets/pet_shop_2ndPage_6.png',
      price: 60.0,
      weight: '7-12 lbs',
      height: '10-15 in',
      color: 'Lilac',
      details: 'The Russian Blue is a captivating cat breed known for its striking appearance and gentle demeanor. Characterized by a short, dense coat of bluish-gray fur that shimmers in the light, these cats have luminous green eyes and a plush, double coat. ',
    ),
  ];

  void addCat(Cat cat) {
    catBreeds.add(cat);
    notifyListeners();
  }
}

