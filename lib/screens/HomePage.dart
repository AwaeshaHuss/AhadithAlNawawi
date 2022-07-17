import 'package:alnawawiforty/utils/Strings.dart';
import 'package:alnawawiforty/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'AhadithScreen.dart';
import 'AudioAhadith.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        SvgPicture.asset(
          "assets/svg/background.svg",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            SizedBox(
              height: 100,
            ),
            SvgPicture.asset("assets/svg/logo.svg"),
            Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: TextApp.topHomeScreen,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: TextApp.headerHomeScreen,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => AhadithScreen()));
                    },
                    child: myCard(
                        colorApp.green1,
                        colorApp.green2,
                        "الاحاديث الاربعين",
                        "assets/quran.png",
                        'assets/svg/one.svg',
                        size,
                        context)),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => AudioAhadithScreen()));
                    },
                    child: myCard(
                        colorApp.yellow1,
                        colorApp.red2,
                        "الاستماع للاحاديث",
                        "assets/play.png",
                        'assets/svg/twoo.svg',
                        size,
                        context)),
                Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svg/logo.svg'),
                                const SizedBox(
                                  height: 22.0,
                                ),
                                Text(
                                  'ستضاف قريباً إن شاء الله',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(color: colorApp.primary),
                                )
                              ],
                            );
                          });
                    },
                    child: myCard(
                        colorApp.red1,
                        colorApp.red2,
                        "الاحاديث المحفوظه",
                        "assets/save-instagram.png",
                        "assets/svg/three.svg",
                        size,
                        context),
                  );
                })
              ],
            ),
          ],
        )
      ],
    ));
  }
}

Widget myCard(
    Color color1, color2, String text, path1, path2, Size size, context) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20, top: size.height * .04),
    child: Card(
      color: colorApp.offWhite,
      elevation: 22.0,
      child: Container(
          height: size.height * .155,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(10, 10),
                    blurRadius: 20)
              ],
              borderRadius: BorderRadius.circular(6),
              gradient: LinearGradient(
                  colors: [
                    color1,
                    color2,
                  ],
                  begin: AlignmentDirectional.topEnd,
                  end: AlignmentDirectional.bottomStart)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(path1),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: colorApp.offWhite,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              SvgPicture.asset(path2)
            ],
          )),
    ),
  );
}
