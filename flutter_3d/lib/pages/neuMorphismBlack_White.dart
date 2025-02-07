import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Object1 extends StatefulWidget {
  const Object1({super.key});

  @override
  State<Object1> createState() => _Object1State();
}

class _Object1State extends State<Object1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _selectedIndex == 0 ? Colors.grey[350]! : Colors.grey[800]!;
    Color tabBackgroundColor = _selectedIndex == 0 ? Colors.grey.shade200 : Colors.grey.shade800;
    Color activeColor = _selectedIndex == 0 ? Colors.black : Colors.white;
    Color iconColor = _selectedIndex == 0 ? Colors.black : Colors.white;

    return Scaffold(
       bottomNavigationBar: Container(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: GNav(
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
            activeColor: activeColor,
            backgroundColor: backgroundColor,
            color: iconColor,
            tabBackgroundColor: tabBackgroundColor,
            gap: 5,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.android,text: 'White',),
              GButton(icon: Icons.android,text: 'Dark',),
            ],
          ),
        ),
      ),
      backgroundColor: _selectedIndex == 0 ? Colors.grey[300] : Colors.grey[850] ,
      body:_selectedIndex == 0 ? SafeArea(
        child: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Icon(Icons.android,size: 80,),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500]!,
                offset: const Offset(7,7),
                blurRadius: 15,
                spreadRadius: 1.0
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-7,-7),
                blurRadius: 15,
                spreadRadius: 1
              )
            ]
          ),
        )
        ,)):
        SafeArea(
        child: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Icon(Icons.android,size: 80,color: Colors.white,),
          decoration: BoxDecoration(
            color: Colors.grey[850],
            borderRadius: const BorderRadius.all(Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[900]!,
                offset: const Offset(7,7),
                blurRadius: 15,
                spreadRadius: 1.0
              ),
              BoxShadow(
                color: Colors.grey[800]!,
                offset: const Offset(-7,-7),
                blurRadius: 15,
                spreadRadius: 1
              )
            ]
          ),
        )
        ,)),
    );
  }
}