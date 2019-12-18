import 'package:flutter/material.dart';
import 'package:ui_portfolio/image_assets.dart';
import '../styleguide/text_styles.dart';
import '../image_assets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(beach),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver)
          )
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              // Logo
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 75),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Image.asset(
                    logo,
                    color: Colors.white
                  ),
                ),
              ),

              // Form
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            focusColor: Colors.blue,
                            prefixIcon: Icon(Icons.mail_outline, color: Colors.white,),
                            hintText: "Email",
                            hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, width: 2.0)
                            ),
                            focusColor: Colors.blue,
                            prefixIcon: Icon(Icons.lock_outline, color: Colors.white,),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            )
                        ),
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
