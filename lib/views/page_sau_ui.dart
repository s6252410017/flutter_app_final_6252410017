import 'package:flutter/material.dart';

class PageSauUI extends StatelessWidget {
  const PageSauUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'To',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Southeast Asia University',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Image.asset(
                    'assets/images/saubanner1.JPG',
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'ทางเลือกใหม่ของโลกดิจิตัล',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'เริ่มต้นที่นี่',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Image.asset(
                    'assets/images/saubanner2.JPG',
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    
     );
  }
}
