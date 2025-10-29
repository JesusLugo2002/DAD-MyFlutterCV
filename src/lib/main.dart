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
          primaryContainer: Color(0xFF01C9AD),
          secondaryContainer: Colors.amberAccent,
          surface: Color(0xFFF2EEE9),
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            letterSpacing: -5,
          ),
          titleSmall: const TextStyle(
            fontSize: 20,
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
  final Icon icon;
  final String text;
  final bool isHeaderSubtitle;

  const Subtitle(
    this.text, {
    super.key,
    this.icon = const Icon(Icons.mic, size: 24),
    this.isHeaderSubtitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: isHeaderSubtitle
            ? EdgeInsetsGeometry.fromLTRB(0, 0, 10, 0)
            : const EdgeInsets.fromLTRB(3, 3, 10, 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: isHeaderSubtitle
                  ? EdgeInsets.fromLTRB(5, 0, 0, 0)
                  : EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: isHeaderSubtitle
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).colorScheme.secondaryContainer,
                border: isHeaderSubtitle
                    ? BoxBorder.fromLTRB(right: BorderSide())
                    : Border.all(),
                borderRadius: isHeaderSubtitle
                    ? BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      )
                    : BorderRadius.circular(30),
              ),
              child: icon,
            ),
            SizedBox(width: 25),
            Text(text, style: Theme.of(context).textTheme.titleSmall),
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
    return Column(
      spacing: 10,
      children: [
        Header(),
        WorkExperienceSection(),
        EducationSection(),
        PersonalSkillsSection(),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(color: Colors.black, width: 2),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
            child: Column(
              spacing: 5,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.redAccent,
                  ),
                  width: 20,
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: const Color.fromARGB(255, 216, 216, 36),
                  ),
                  width: 20,
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: const Color.fromARGB(255, 38, 92, 40),
                  ),
                  width: 20,
                  height: 20,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MARIANA\nNAPOLITANI",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 30),
              Subtitle(
                "DIGITAL MARKETING",
                icon: Icon(Icons.search, color: Colors.black, size: 32),
                isHeaderSubtitle: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Subtitle("WORK EXPERIENCE"),
        WorkExperienceItem(
          "Digital Marketer Intern | Thynk Unlimited",
          "2012 – 2013",
          """Assisted the marketing team on the SEO project
of the Rimberio Co. website, which has
successfully increased the traffic by 15% or 90
new customers per month.""",
        ),
        WorkExperienceItem(
          "Digital Marketing Manager | Liceria & Co.",
          "2013 – PRESENT",
          """Designed, implemented, and optimized the new
promotion campaign for Salford & Co. that
increased sales from the social media platform
by 300%.""",
        ),
      ],
    );
  }
}

class WorkExperienceItem extends StatelessWidget {
  final String business;
  final String years;
  final String description;

  const WorkExperienceItem(
    this.business,
    this.years,
    this.description, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [Text(business), Text(years), Text(description)]);
  }
}

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Subtitle("EDUCATION")]);
  }
}

class PersonalSkillsSection extends StatelessWidget {
  const PersonalSkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Subtitle("PERSONAL SKILLS")]);
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
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: Color(0xFFAB2733),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
