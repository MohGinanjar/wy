import 'package:flutter/material.dart';
import 'package:wy/widgets/button_theme.dart';
import 'package:wy/widgets/colortheme.dart';
import 'package:wy/screen/login_page.dart';
import 'package:wy/widgets/texttheme.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorA,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
              child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo/logo.png"))),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 267,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/logo/technical.png")),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Selamat datang di Yuswa Teknik aplikasi yang akan membantu merawat semua elektronik rumah tangga anda",
                style: boldWhiteFont,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width - (2 * defaultmargin),
                height: 50,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  color: colorC,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    "Mulai",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
