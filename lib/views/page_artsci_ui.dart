import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PageArtSciUI extends StatefulWidget {
  const PageArtSciUI({Key? key}) : super(key: key);

  @override
  _PageArtSciUIState createState() => _PageArtSciUIState();
}

class _PageArtSciUIState extends State<PageArtSciUI> {
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
                    'FACULTY OF ARTS and SCIS',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Image.asset(
                    'assets/images/artsci.jpg',
                    width: MediaQuery.of(context).size.width * 0.95,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'สาขาวิชาดิจิทัลมีเดีย',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'สาขาวิชาเทคโนโลยีดิจิทัลและนวัตกรรม',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'สาขาวิชาภาษาอังกฤษธุรกิจ',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'สาขาวิชารัฐประศาสนศาสตร์',
                    style: TextStyle(
                      fontSize: 21.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.0, //ระยะห่างของแต่ละตัวอักษร
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
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
