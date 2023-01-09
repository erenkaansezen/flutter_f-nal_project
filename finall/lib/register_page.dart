import 'package:finall/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 200),
              Text(
                "Aramıza katılmana çok az kaldı!\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              UserInfoBox(),
              SizedBox(height: 30),
              kayitetbutton(),
              SizedBox(height: 30),
              Text(
                "Aramıza katıldığın için çok mutluyuz ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              Icon(
                Icons.favorite,
                size: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfoBox extends StatelessWidget {
  const UserInfoBox({super.key});

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
            hintText: "Kullanıcı adı",
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
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.0),
          child: TextField(
              decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            hintText: "Telefon Numarası (532 928 1140)",
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
            hintText: "E-mail adres",
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

class kayitetbutton extends StatelessWidget {
  const kayitetbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginPage()))
        },
        child: const Text(
          "Kayıt ol",
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
