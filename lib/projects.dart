import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  myProjectList(title, lang, dec, stars) {
    return Container(
      height: 220,
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                lang,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                dec,
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    stars,
                    style: TextStyle(color: Colors.white70),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white70,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        title: Text('Projects'),
        backgroundColor: Color(0xff252525),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProjectList(
                  'FLUTTER', 'Click 2 Code', 'An online code compiler', '10'),
              myProjectList('JAVA', 'Dot Epid', 'App for Covid 19', '9'),
              myProjectList('PYTHON', 'Face Detection',
                  'Attendance using face detection.', '8'),
              myProjectList('C++', 'Chess', 'Multiplayer chess engine.', '7'),
              myProjectList(
                  'FLUTTER', 'Click 2 Code', 'An online code compiler', '10')
            ],
          ),
        ),
      ),
    );
  }
}
