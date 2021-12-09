import 'package:flutter/material.dart';
import 'package:flutter_app_final_6252410017/views/page_sau_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_en_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_artsci_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_bs_ui.dart';
import 'package:flutter_app_final_6252410017/views/page_la_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'page_en_ui.dart';

class FirstUI extends StatefulWidget {
  const FirstUI({Key? key}) : super(key: key);

  @override
  _FirstUIState createState() => _FirstUIState();
}

class _FirstUIState extends State<FirstUI> {
  String tel = '028064500';
  String web = 'http://www.sau.ac.th';

  List page = [
    PageSauUI(),
    PageEnUI(),
    PageArtSciUI(),
    PageBsUI(),
    PageLaUI(),
  ];

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Text(
          'SAU',
          style: TextStyle(
            fontFamily: 'Itim',
            fontSize: 30.0,
            color: Colors.grey[850],
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            label: 'SAU',
            icon: Icon(
              FontAwesomeIcons.university,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userCog,
            ),
            label: 'EN',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.code,
            ),
            label: 'ArtSci',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.briefcase,
            ),
            label: 'BS',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.balanceScale,
            ),
            label: 'LA',
          ),
        ],
      ),
      body: page.elementAt(selectIndex),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[350],
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.only(),
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 90.0,
                  left: 20.0,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'SA',
                        style: TextStyle(
                          color: Color(0xff1402CB),
                          fontFamily: 'Itim',
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'U',
                        style: TextStyle(
                          color: Color(0xffEFCF05),
                          fontFamily: 'Itim',
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 10.0,
                ),
                child: Text(
                  'Southeast Asia University',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Itim',
                    fontSize: 23.0,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Divider(
                color: Colors.grey[700],
                height: 0.0,
                thickness: 3.0,
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10.0,
                            left: 0.0,
                            right: 220.0,
                          ),
                          child: Text(
                            'SAU',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Itim',
                              fontSize: 23.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.5,
                        ),
                        Divider(
                          color: Colors.grey[700],
                          height: 0.0,
                          thickness: 3.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 45.0,
                    width: 500.0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        right: 0.0,
                      ),
                      child: Text(
                        'วิศวกรรมศาสตร์',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Divider(
                    color: Colors.grey[700],
                    height: 0.0,
                    thickness: 3.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 500.0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        right: 0.0,
                      ),
                      child: Text(
                        'ศิลปศาสตร์และวิทยาศาสตร์',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Divider(
                    color: Colors.grey[700],
                    height: 0.0,
                    thickness: 3.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 500.0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        right: 0.0,
                      ),
                      child: Text(
                        'บริหารธุรกิจ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Divider(
                    color: Colors.grey[700],
                    height: 0.0,
                    thickness: 3.0,
                  ),
                  Container(
                    height: 45.0,
                    width: 500.0,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                        left: 20.0,
                        right: 0.0,
                      ),
                      child: Text(
                        'นิติศาสตร์',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Itim',
                          fontSize: 23.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Divider(
                    color: Colors.grey[700],
                    height: 0.0,
                    thickness: 3.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
