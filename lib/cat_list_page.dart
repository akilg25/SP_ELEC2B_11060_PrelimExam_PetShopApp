import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cat_provider.dart';
import 'cat_details_page.dart';
import 'homePage.dart';

class CatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var catProvider = Provider.of<CatProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Store',
        style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: catProvider.catBreeds.length,
        itemBuilder: (context, index) {
           return CatCard(
            catImage: catProvider.catBreeds[index].image,
            catBreed: catProvider.catBreeds[index].breedName, 
            catPrice: catProvider.catBreeds[index].price.toString(), 
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CatDetailsPage(cat: catProvider.catBreeds[index]),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          if(index == 0){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage())
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Catalog',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CatCard extends StatelessWidget {
  final String catImage;
  final String catBreed;
  final String catPrice;
  final VoidCallback onTap;

  CatCard({
    required this.catImage,
    required this.catBreed,
    required this.catPrice,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        child: Stack(
          children: [
            Image.asset(
              catImage,
              fit: BoxFit.cover,
              height: 120,
              width: double.infinity,
            ),
           Positioned(
              bottom: 8.0,
              left: 8.0,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                  child : Text(catBreed,style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    '\$'+catPrice,
                    style: TextStyle(
                      color: Color(0xFFE8BE13),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 8.0,
              right: 8.0,
              child:  Icon(
                    Icons.shopping_cart,
                    color: Color(0xFFE8BE13),
                  ),
              ),
          ],
        ),
      ),
    );
  }
}

