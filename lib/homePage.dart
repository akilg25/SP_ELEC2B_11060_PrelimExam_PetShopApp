import 'package:flutter/material.dart';
import 'cat_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child:Image.asset('assets/pet_shop_app_1st page_image.jfif'),
          ),
          SizedBox(height: 30,),
          Text('Your One-Stop Pet Shop Experience!',
          style: 
          TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
          ),
          SizedBox(height: 20,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text('Connect with 5-star pet caregivers near you who offer boarding,walking,house sitting or day care',
          style:
          TextStyle(fontSize: 15,color: Colors.grey)),
          ),
          SizedBox(height: 40,),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CatListPage()),
              );
            },
            child: Text('Get Started'),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFE8BE13)
            ),
            ),
          ),
        ],
      ),
    );
  }
}