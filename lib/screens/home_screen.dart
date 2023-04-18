import 'package:flutter/material.dart';

import '../constant.dart';
import '../widgets/home_widgets.dart';

class HomeScreen extends StatelessWidget {
  static String routename = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xffF4F4F4),
      body: SafeArea(
        child: SingleChildScrollView(
          padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                'Shoes Collections',
                style: TextStyle(
                    fontSize: 26, color: darkBlue, fontWeight: FontWeight.w600),
              ),
               Text(
                'the best of shoes in one place',
                style:
                    TextStyle(color: darkBlue, fontSize: 16, wordSpacing: 1.3),
              ),
               SearchTextField(),
               CategoriesList(),
               SizedBox(
                height: 50,
              ),
              ProductList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

