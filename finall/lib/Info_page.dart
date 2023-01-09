import 'package:finall/daily_check.dart';
import 'package:finall/home_page.dart';
import 'package:finall/login_page.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text(
          'Healthy Life Style',
          textAlign: TextAlign.center,
        )),
      ),
      drawer: Drawer(
        child: Column(children: [
          const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              accountName: Text(
                "Merhaba!",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text("")),
          const SizedBox(height: 50),
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const homepage()))
                  },
              icon: const Icon(Icons.home)),
          const SizedBox(height: 50),
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const dailycheck()))
                  },
              icon: const Icon(Icons.turn_right)),
          const Text("Günlük Hedefler"),
          const SizedBox(height: 50),
          IconButton(
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()))
            },
            icon: const Icon(Icons.turn_left),
          ),
          const Text("Oturumdan Çıkış Yap"),
        ]),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              "Neden ?",
              style: baslikstyle.baslik,
            ),
            const SizedBox(height: 10),
            Text(
                "Yaşamımızı ve fiziksel aktivitelerimizi sağlıklı bir şekilde devam ettirebilmek için dengeli beslenme ve düzenli egzersiz yapmak çok önemli iki konudur. Çünkü bu iki şeyi alışkanlık haline getirdiğimizde hem fiziksel sağlığımızı hem de zihinsel sağlığımızı desteklemiş ve korumuş oluruz. Yeme alışkanlıklarımız fiziksel sağlığımız üzerinde direkt olarak etkilidir; bu durum benzer şekilde zihinsel sağlığımızı da etkiler. Düzenli egzersiz yapmak ise belirgin bir şekilde yaşam kalitemizi artırır.",
                style: metinstyle.baslik),
            const SizedBox(height: 40),
            Text(
              "Güçlü bir bağışıklık sistemi?\n",
              style: baslikstyle.baslik,
            ),
            const SizedBox(height: 10),
            Text(
              "Sağlıklı beslenme ve düzenli egzersiz, bağışıklık sistemi sağlığının desteklenmesi için çok önemlidir. Hatta bazı araştırmalar, haftada 3 kez egzersiz yapmanın ve 5 gün boyunca sebze ve meyve tüketmenin bağışıklık sistemi üzerinde bariz olumlu etkileri olduğunu göstermektedir.",
              style: metinstyle.baslik,
            ),
            const SizedBox(height: 40),
            Text(
              "Kaliteli Bir Uyku ?\n",
              style: baslikstyle.baslik,
            ),
            const SizedBox(height: 10),
            Text(
              "Kaliteli bir uyku, sağlıklı yaşam için şarttır. Çünkü uyku sırasında hem bedenimiz ve zihnimiz dinlenir hem de vücudumuz pek çok fonksiyonunu yerine getirir. Araştırmalar, düzenli olarak egzersiz yapan ve sağlıklı beslenen kişilerin uyku problemlerini daha az yaşadıklarını ve daha iyi bir uyku kalitesine sahip olduklarını söylemektedir.",
              style: metinstyle.baslik,
            )
          ],
        ),
      ),
    );
  }
}

class baslikstyle {
  static TextStyle baslik = const TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}

class metinstyle {
  static TextStyle baslik = const TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
}
