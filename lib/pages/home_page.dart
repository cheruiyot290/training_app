import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:training_app/pages/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List info=[];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      setState(() {
        info = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                    color: AppColor.homePageTitle,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                size: 20,
                color: AppColor.homePageIcons,),
                const SizedBox(width: 10,),
                Icon(Icons.calendar_today_outlined,
                size: 20,
                color: AppColor.homePageIcons,),
                const SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios,
                size: 20,
                color: AppColor.homePageIcons,),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Text(
                  "Your program",
                  style: TextStyle(
                    color: AppColor.homePageSubtitle,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                    color: AppColor.homePageDetail,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 5,),
                Icon(Icons.arrow_forward,
                size: 20,
                color: AppColor.homePageIcons,),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(80),
                  bottomLeft: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColor.gradientSecond.withOpacity(0.2),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(5, 10), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(colors: [
                  AppColor.gradientFirst.withOpacity(0.8),
                  AppColor.gradientSecond.withOpacity(0.9),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.centerRight,
                stops: const [0.0, 1.0],
                tileMode: TileMode.clamp),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                        color: AppColor.homePageContainerTextSmall,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "Legs toning",
                      style: TextStyle(
                        color: AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        color: AppColor.homePageContainerTextSmall,
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.timer,
                            size: 20,
                            color: AppColor.homePageContainerTextSmall,),
                            const SizedBox(width: 5,),
                            Text(
                              "60 minutes",
                              style: TextStyle(
                                color: AppColor.homePageContainerTextSmall,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(60),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColor.gradientFirst.withOpacity(0.2),
                                spreadRadius: 10,
                                blurRadius: 10,
                                offset: const Offset(4, 8), // changes position of shadow
                              ),
                            ],
                            gradient: LinearGradient(colors: [
                              AppColor.gradientFirst.withOpacity(0.8),
                              AppColor.gradientSecond.withOpacity(0.9),
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerRight,
                            stops: const [0.0, 1.0],
                            tileMode: TileMode.clamp),
                          ),
                          child: const Icon(Icons.play_circle_fill,
                            size: 60,
                            color: Colors.white,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ),
            const SizedBox(height: 5,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 30),
              height: 150,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(image: AssetImage(
                        "assets/card.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.gradientSecond.withOpacity(0.2),
                          spreadRadius: 10,
                          offset: const Offset(8, 10),
                          blurRadius: 40,),
                        BoxShadow(
                          color: AppColor.gradientSecond.withOpacity(0.3),
                          spreadRadius: 10,
                          offset: const Offset(-1, -5),
                          blurRadius: 40,),
                      ],
                      ),
                    ),
                  Container(
                    margin: const EdgeInsets.only(right: 200, bottom: 60),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(image: AssetImage(
                        "assets/figure.png",
                      ),
                        //fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 120,
                    margin: const EdgeInsets.only(left: 150, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You are doing great work!",
                        style: TextStyle(
                          color: AppColor.homePageDetail,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        const SizedBox(height: 10,),
                        RichText(text: TextSpan(
                          text: "Keep it up!",
                        style: TextStyle(
                          color: AppColor.homePagePlanColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                          children: [
                            TextSpan(
                              text: "\nstick to your plan!",
                              style: TextStyle(
                                color: AppColor.homePagePlanColor,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ]
                        ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Area of focus",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.homePageTitle,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Expanded(child: OverflowBox(
              maxWidth: MediaQuery.of(context).size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                    itemCount: info.length.toDouble()~/2,
                    itemBuilder:
                    (_, i){

                      int a = 2*i;
                      int b = a+1;
                  return Row(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width-90)/2,
                        height: 160,
                        margin: const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(
                            info[a]['img'],
                            ),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gradientSecond.withOpacity(0.1),
                              spreadRadius: 10,
                              offset: const Offset(5, 5),
                              blurRadius: 3,),
                            BoxShadow(
                              color: AppColor.gradientSecond.withOpacity(0.1),
                              spreadRadius: 10,
                              offset: const Offset(-5, -5),
                              blurRadius: 3,),
                          ],
                          ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              info[a]["title"],
                              style: TextStyle(
                                color: AppColor.homePageDetail,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        ),
                      Container(
                        width: (MediaQuery.of(context).size.width-90)/2,
                        height: 160,
                        margin: const EdgeInsets.only(left: 30, bottom: 15, top: 15),
                        padding: const EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(
                            info[b]['img'],
                          ),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.gradientSecond.withOpacity(0.1),
                              spreadRadius: 10,
                              offset: const Offset(5, 5),
                              blurRadius: 3,),
                            BoxShadow(
                              color: AppColor.gradientSecond.withOpacity(0.1),
                              spreadRadius: 10,
                              offset: const Offset(-5, -5),
                              blurRadius: 3,),
                          ],
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              info[b]["title"],
                              style: TextStyle(
                                color: AppColor.homePageDetail,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
