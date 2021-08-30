import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wy/screen/home.dart';
import 'package:wy/screen/login_page.dart';
import 'package:wy/providers/auth.dart';
import 'package:wy/widgets/texttheme.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wy/widgets/button_theme.dart';
import 'package:wy/widgets/colortheme.dart';
import 'package:wy/widgets/fieldcustom.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController noHpController = TextEditingController();
  TextEditingController usernnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext context) {
    final signup = Provider.of<Auth>(context, listen: false);
    return Scaffold(
      backgroundColor: colorC,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Selamat Datang",
                style: boldBlackFont,
                textAlign: TextAlign.start,
              ),
              Text(
                "Yuswa Teknik",
                style: boldBlackFont,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Silahkan daftar terlebih dahulu sebelum menggunakan layanan yang ada di Yuswa Teknik",
                style: semiBlackFont,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 25,
              ),
              FieldCustom(
                controller: usernnameController,
                icon: Icons.person,
                hintext: "Username",
              ),
              FieldCustom(
                controller: noHpController,
                icon: MdiIcons.whatsapp,
                hintext: "Nomor Handphone",
              ),
              FieldCustom(
                controller: emailController,
                icon: Icons.email,
                hintext: "Email",
              ),
              FieldCustomPass(
                controller: passwordController,
                icon: Icons.lock,
                hintext: "Masukan Kata Sandi",
              ),
              FieldCustomPass(
                controller: passwordController,
                icon: Icons.lock,
                hintext: "Ulangi Kata Sandi",
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: MediaQuery.of(context).size.width - (1 * defaultmargin),
                height: 100,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () async {
                    try {
                      await signup
                          .signup(
                        emailController.text,
                        passwordController.text,
                        usernnameController.text,
                        noHpController.text,
                      )
                          .then((value) {
                        print("ini $value");
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      });
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("$e"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: colorA,
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                        color: colorD,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Text("Atau"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: MediaQuery.of(context).size.width - (1 * defaultmargin),
                height: 100,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: colorA,
                  child: Row(
                    children: [
                      Icon(
                        MdiIcons.google,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                      ),
                      Text(
                        "Daftar Lewat Account Google",
                        style: TextStyle(
                            color: colorD,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
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
