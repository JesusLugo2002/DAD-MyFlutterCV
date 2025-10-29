import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter CV',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          surface: Color(0xFFF2EEE9),
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            fontFamily: "Cooper Hewitt",
            letterSpacing: -5,
          ),
          titleSmall: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(body: Body()),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [LeftColumn(), SizedBox(width: 20), RightColumn()],
        ),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconBackgroundColor;

  const Subtitle(
    this.text, {
    super.key,
    this.icon = Icons.mic,
    this.iconBackgroundColor = const Color(0xFF01C9AD),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(icon),
            ),
            SizedBox(width: 10),
            Text(text, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}

class LeftColumn extends StatelessWidget {
  const LeftColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Header()]);
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "MARIANA\nNAPOLITANI",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(height: 30),
        Subtitle("DIGITAL MARKETING"),
      ],
    );
  }
}

class RightColumn extends StatelessWidget {
  const RightColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 50), PersonPicture()]);
  }
}

class PersonPicture extends StatelessWidget {
  const PersonPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 235, height: 300, color: Color(0xFFAB2733));
  }
}
