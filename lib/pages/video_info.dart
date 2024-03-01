import 'package:flutter/material.dart';
import 'package:training_app/pages/colors.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.gradientFirst,
              AppColor.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_ios, size: 20, color: Colors.white,),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Expanded(child: Container()), // Added Expanded widget here
                        IconButton(
                          icon: const Icon(Icons.info_outline, size: 20, color: Colors.white,),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Text(
                      "Legs toning",
                      style: TextStyle(
                        color: AppColor.secondPageTitleColor,
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        color: AppColor.secondPageTitleColor,
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Row(
                      children: [
                        Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  AppColor.secondPageContainerGradient1stColor,
                                  AppColor.secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                stops: const [0.0, 1.0],
                                tileMode: TileMode.clamp,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  size: 20,
                                  color: AppColor.secondPageTitleColor,
                                ),
                                const SizedBox(width: 5,),
                                Text(
                                  "68 mins",
                                  style: TextStyle(
                                    color: AppColor.secondPageTopIconColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        const SizedBox(width: 10,),// Wrapped with Expanded widget
                          Container(
                            height: 30,
                            width:230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                colors: [
                                  AppColor.secondPageContainerGradient1stColor,
                                  AppColor.secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                stops: const [0.0, 1.0],
                                tileMode: TileMode.clamp,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.handyman_outlined,
                                  size: 20,
                                  color: AppColor.secondPageTitleColor,
                                ),
                                const SizedBox(width: 5,),
                                Text(
                                  "Resistant band",
                                  style: TextStyle(
                                    color: AppColor.secondPageTopIconColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
