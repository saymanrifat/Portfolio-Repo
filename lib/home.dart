import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Container(margin: EdgeInsets.only(top: 10), child: Text(type))
      ],
    );
  }

  mySpec(icon, tech) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                tech,
                style: TextStyle(color: Colors.white, fontSize: 16),
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
          color: Color(0xff252525),
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'projects');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff252525)),
                    child: Text(
                      'Projects',
                      style: TextStyle(color: Colors.white),
                    ))),
            PopupMenuItem(
                value: 2,
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'about');
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff252525)),
                    child: Text(
                      'About Me',
                      style: TextStyle(color: Colors.white),
                    ))),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/images/hero.png',
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: [
                    Text(
                      'Sayman Rifat',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sohogo'),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text('Software Developer',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myAchiev('78', 'Projects'),
                    myAchiev('62', 'Clients'),
                    myAchiev('97', 'Message'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Specialized in',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        mySpec(FontAwesomeIcons.android, 'Android'),
                        mySpec(FontAwesomeIcons.aws, 'AWS'),
                        mySpec(FontAwesomeIcons.docker, 'Docker'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        mySpec(FontAwesomeIcons.github, 'GitHub'),
                        mySpec(FontAwesomeIcons.linux, 'Linux'),
                        mySpec(FontAwesomeIcons.wordpress, 'WordPress'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        mySpec(FontAwesomeIcons.appStoreIos, 'iOS'),
                        mySpec(FontAwesomeIcons.terminal, 'Scripting'),
                        mySpec(FontAwesomeIcons.gamepad, 'Game Dev'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
