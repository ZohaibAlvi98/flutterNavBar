import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.white,
      title: Center(
        child: Text(
          'S-PLY XP',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700),
        ),
      ),
    );
    double height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    List img = [
      'assets/images/home1.jpg',
      'assets/images/home2.jpg',
      'assets/images/home3.jpg',
      'assets/images/home4.jpg'
    ];
    return Scaffold(
      appBar: appBar,
      body: GridView.builder(
        padding: EdgeInsets.only(top: 50),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 3, mainAxisSpacing: 6),
        itemBuilder: (_, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(img[index]), fit: BoxFit.cover),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}
