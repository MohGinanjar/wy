import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:wy/widgets/colortheme.dart';
import 'package:wy/widgets/fieldcustom.dart';
import 'package:wy/screen/home.dart';
import 'package:wy/providers/auth.dart';
import 'package:wy/screen/register_page.dart';
import 'package:wy/widgets/texttheme.dart';
import 'package:wy/widgets/button_theme.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Duration get loginTime => Duration(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    final login = Provider.of<Auth>(context, listen: false);
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
              SizedBox(
                height: 15,
              ),
              Text(
                "Jika sudah mempunya account Yuswa Teknik silahkan untuk login menggunakan username dan password yang benar",
                style: semiBlackFont,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 25,
              ),
              FieldCustom(
                controller: emailController,
                icon: Icons.email,
                hintext: "Email",
              ),
              SizedBox(
                height: 15,
              ),
              FieldCustomPass(
                controller: passwordController,
                icon: Icons.lock,
                hintext: "Password",
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.only(right: 0),
                  child: Text("Lupa Password ?"),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 25),
                width: MediaQuery.of(context).size.width - (1 * defaultmargin),
                height: 100,
                child: RaisedButton(
                  elevation: 5,
                  onPressed: () async {
                    try {
                      await login
                          .login(emailController.text, passwordController.text,
                              context)
                          .then((value) {
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
                    "Masuk",
                    style: TextStyle(
                        color: colorD,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Divider(),
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
                        "Masuk Lewat Account Google",
                        style: TextStyle(
                            color: colorD,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Jika anda tidak memiliki account? ",
                        style: TextStyle(
                          color: colorA,
                          fontSize: 18,
                        )),
                    TextSpan(
                      text: "Daftar",
                      style: TextStyle(
                        color: colorB,
                        fontSize: 18,
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
