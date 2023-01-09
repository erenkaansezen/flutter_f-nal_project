import 'package:finall/Info_page.dart';
import 'package:finall/daily_check.dart';

import 'package:flutter/material.dart';
import 'package:finall/login_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

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
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            CircularPercentIndicator(
              radius: 200,
              lineWidth: 20,
              percent: 0.6,
              progressColor: Colors.orange,
              circularStrokeCap: CircularStrokeCap.round,
              center: const Text(
                "%60",
                style: TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "bir insan vucudunda bulunan su oranı",
              style: oranmetin.metin,
            ),
            const SizedBox(height: 30),
            CircularPercentIndicator(
              radius: 200,
              lineWidth: 20,
              percent: 0.7,
              progressColor: Colors.blue[600],
              circularStrokeCap: CircularStrokeCap.round,
              center: const Text(
                "7 km",
                style: TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "bir insanın günlük yürümesi gereken mesafe",
              style: oranmetin.metin,
            ),
            const SizedBox(height: 30),
            CircularPercentIndicator(
              radius: 200,
              lineWidth: 20,
              percent: 0.3,
              progressColor: Colors.purple,
              circularStrokeCap: CircularStrokeCap.round,
              center: const Text(
                "%15",
                style: TextStyle(fontSize: 50),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "bir insanın günlük olarak alması gereken protein oranı",
              style: oranmetin.metin,
            )
          ],
        ),
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
                            builder: (context) => const dailycheck()))
                  },
              icon: const Icon(Icons.turn_right)),
          const Text("Günlük Hedefler"),
          const SizedBox(height: 50),
          IconButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoPage()))
                  },
              icon: const Icon(Icons.turn_right)),
          const Text("Bilgi almak istermisin ?"),
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
    );
  }
}

class oranmetin {
  static TextStyle metin = const TextStyle(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
}
