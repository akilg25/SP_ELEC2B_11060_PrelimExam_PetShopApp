import 'package:flutter/material.dart';
import 'package:pet_store_app/cat_list_page.dart';
import 'package:pet_store_app/homePage.dart';
import 'cat.dart';

class CatDetailsPage extends StatelessWidget {
  final Cat cat;

  CatDetailsPage({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(cat.image),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Icon(Icons.pets,size: 15,color: Colors.black,),
              Text('About ${cat.breedName}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ],
          ),
          ),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Card(
            color: Color(0xFF98FF98),
            elevation: 4.0,
            child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Weight'),
                      Text('${cat.weight}',style: TextStyle(color: Color(0xFFE8BE13),fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
          ),
          Card(
            color: Color(0xFF98FF98),
            elevation: 4.0,
            child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Height'),
                      Text('${cat.height}',style: TextStyle(color: Color(0xFFE8BE13),fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
          ),
          Card(
            color: Color(0xFF98FF98),
            elevation: 4.0,
            child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Color'),
                      Text('${cat.color}',style: TextStyle(color: Color(0xFFE8BE13),fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),

          ],),
          
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                  child : Text(cat.details, style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  ),
                  ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        onTap: (index){
          if(index == 1){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CatListPage())
            );
          }
          if(index == 0){
            Navigator.pushReplacement(context, 
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

  Widget buildAboutCard(String info) {
    return Card(
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: info
              .split('\n')
              .map((line) => Text(
                    line,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

