import 'package:course_app/constants.dart';
import 'package:flutter/material.dart';
import 'category_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu),
                  Image.asset('assets/images/profile.png'),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Hey Alex,',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Find a course you want to learn',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff61688B),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for anything',
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff6E8AFA),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: categoryData.map((category) {
                  return CategoryCard(category['title'],
                      category['courseAmount'], category['imageUrl']);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
