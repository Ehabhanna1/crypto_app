import 'package:crypto_app/views/another_screen.dart';
import 'package:crypto_app/views/home_screen.dart';
import 'package:flutter/material.dart';
class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {

  int _currentIndex =0;
  List<Widget> pages =[
    HomeScreen(),
    AnotherScreen(),
    AnotherScreen(),
    AnotherScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: pages.elementAt(_currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
              showSelectedLabels: false,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              onTap: (value){
              setState(() {
                _currentIndex = value;
              });
              },

              items: [
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/1.1.png',
                    height: myHeight*0.04,
                      color: Colors.grey,
                    ),
                  label: '',
                  activeIcon: Image.asset('assets/icons/1.2.png',
                    height: myHeight*0.04,color: Colors.deepPurpleAccent, ),

                ),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/2.1.png',
                    height: myHeight*0.04,color: Colors.grey,),
                  label: '',
                  activeIcon: Image.asset('assets/icons/2.2.png',
                    height: myHeight*0.04,color: Colors.deepPurpleAccent,),

                ),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/3.1.png',
                    height: myHeight*0.04,color: Colors.grey,),
                  label: '',
                  activeIcon: Image.asset('assets/icons/3.2.png',
                    height: myHeight*0.04,color: Colors.deepPurpleAccent,),

                ),
                BottomNavigationBarItem(
                    icon: Image.asset('assets/icons/4.1.png',
                    height: myHeight*0.04,color: Colors.grey,),
                  label: '',
                  activeIcon: Image.asset('assets/icons/4.2.png',
                    height: myHeight*0.04,color: Colors.deepPurpleAccent,),

                ),


              ],
          ),
        ),
    );
  }
}
