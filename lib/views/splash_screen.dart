import 'package:crypto_app/views/navBar.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: myHeight,
            width: myWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('assets/image/1.gif'),
                Column(
                  children: [
                    Text('The Future',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),),
                    Text('Learn more about crypto currence ,look at',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey
                      ),),
                    Text('The Future in  IO Crypto',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                    ),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: myWidth*0.14,

                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavBarScreen()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color:Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(50),
                    
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: myHeight*0.013,horizontal: myWidth*0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('CREAT PROFOLIO',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                color: Colors.white
                    
                              ),
                            ),
                            RotationTransition(
                              turns: AlwaysStoppedAnimation(310 / 360),
                    
                              child: Icon(Icons.arrow_forward_rounded,color: Colors.white,
                    
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
