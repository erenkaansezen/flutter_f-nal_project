import 'package:finall/home_page.dart';
import 'package:finall/register_page.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  final username = "eren";
  final password = "eren";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 50),
              //logo
              Icon(
                Icons.vpn_key,
                size: 100,
              ),
              SizedBox(height: 50),

              Text(
                "Hoşgeldin!\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 50),
              UserNameBox(),
              SizedBox(height: 30),
              GirisYapBUTON(),
              SizedBox(height: 30),
              KayitOlButton(),
              SizedBox(height: 10),

              Text(
                "hemen aramiza katil!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserNameBox extends StatelessWidget {
  const UserNameBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Kullanici adi",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
          )),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Şifre",
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            fillColor: Colors.white,
            filled: true,
          )),
        )
      ],
    );
  }
}

class GirisYapBUTON extends StatelessWidget {
  const GirisYapBUTON({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const homepage()))
        },
        child: const Text(
          "Giriş yap",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class KayitOlButton extends StatelessWidget {
  const KayitOlButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const RegisterPage()))
        },
        child: const Text(
          "kayıt ol",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
