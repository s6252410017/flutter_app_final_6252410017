import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageLaUI extends StatefulWidget {
  const PageLaUI({ Key? key }) : super(key: key);

  @override
  _PageLaUIState createState() => _PageLaUIState();
}

class _PageLaUIState extends State<PageLaUI> {
//ตัวแปรเพื่อที่จะเก็บค่าที่ส่งมาจากอีกหน้าหนึ่ง
  String web = 'http://www.sau.ac.th';
  String phone = '028064500';
  //method เปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //method  โทร
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'FACULTY OF LAW',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Image.asset(
                    'assets/images/la.jpg',
                    width: MediaQuery.of(context).size.width * 0.95,
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'สาขาวิชานิติศาสตร์',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                      color: Colors.grey[600],
                    ),
                  ),
                  
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                          _makePhoneCall('tel:' + phone);
                        });
                        },
                        child: Container(
                          width: 60.0,
                          child: Image.asset(
                            'assets/images/phone.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                       SizedBox(
                        width: 30.0,
                      ),
                       GestureDetector(
                        onTap: () {
                           setState(() {
                            _launchInBrowser(web);
                          });
                        },
                        child: Container(
                          width: 60.0,
                          child: Image.asset(
                            'assets/images/Globe.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
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