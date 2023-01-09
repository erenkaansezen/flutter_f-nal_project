import 'package:finall/home_page.dart';
import 'package:finall/login_page.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class dailycheck extends StatefulWidget {
  const dailycheck({super.key});

  @override
  State<dailycheck> createState() => _dailycheckState();
}

// ignore: camel_case_types
class _dailycheckState extends State<dailycheck> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginPage()))
            },
            icon: const Icon(Icons.turn_left),
          ),
          const Text("Oturumdan Çıkış Yap"),
        ]),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          const Padding(padding: EdgeInsets.all(24.0)),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "Günlük 4 Litre Su İç",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "10 km mesafe tamamla",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "30 tane şınav çek",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "30 tane mekik çek",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "Protein ihtiyacını hesapla, karşıla!",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "10 km mesafe tamamla",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            // ignore: sort_child_properties_last
            child: Row(
              children: const [
                checkboxcontrol(),
                Text(
                  "En az birer set vucut geliştirme hareketlerini uygula",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
          )
        ],
      ),
    );
  }
}

class checkboxcontrol extends StatefulWidget {
  const checkboxcontrol({super.key});

  @override
  State<checkboxcontrol> createState() => _checkboxcontrol();
}

class _checkboxcontrol extends State<checkboxcontrol> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        bodySmall: base.caption!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
