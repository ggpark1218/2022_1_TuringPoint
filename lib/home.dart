import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'mypage.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
            child: Text('mypage'),
            onPressed: () {
              Get.to(() => mypage());
            },
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              children: [
                Text('Model 추천 - version1', style: TextStyle(fontWeight: FontWeight.w600)),
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: 10),
                            height: MediaQuery.of(context).size.height * 0.30 - 50,
                            child: Card(
                              elevation: 10,
                              borderOnForeground: true,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        "부모님 추천모델",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 10,
                                      child: Text(
                                        "어린이보호 구역",
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      child: Text(
                                        "동물 보호 감지",
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: 10),
                            height: MediaQuery.of(context).size.height * 0.30 - 50,
                            child: Card(
                              elevation: 10,
                              borderOnForeground: true,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        "부모님 추천모델",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 10,
                                      child: Text(
                                        "어린이보호 구역",
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      child: Text(
                                        "동물 보호 감지",
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: 20),
                            height: MediaQuery.of(context).size.height * 0.30 - 50,
                            child: Card(
                              elevation: 10,
                              borderOnForeground: true,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        "부모님 추천모델",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 10,
                                      child: Text(
                                        "어린이보호 구역",
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 20,
                                      left: 10,
                                      child: Text(
                                        "동물 보호 감지",
                                        style: TextStyle(
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height:30),

                Text('Model 추천 - version2', style: TextStyle(fontWeight: FontWeight.w600)),
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                  ),
                  items: ['부모님 추천 모델', '초보자 추천 모델', '사람 추천 모델'].map((list) {
                    return Builder(builder: (BuildContext context) {
                      return Column(
                        children: <Widget>[
                          Text(list),
                        ],
                      );
                    });
                  }).toList(),
                ),
                //
                // Text('Model 추천 - version3', style: TextStyle(fontWeight: FontWeight.w600)),
                // SingleChildScrollView(
                //   physics: BouncingScrollPhysics(),
                //   scrollDirection: Axis.horizontal,
                //   child: Container(
                //     child: FittedBox(
                //       fit: BoxFit.fill,
                //       alignment: Alignment.topCenter,
                //       child: Stack(
                //         children: <Widget>[
                //           Container(
                //             width: 150,
                //             margin: EdgeInsets.only(right: 50),
                //             height: MediaQuery.of(context).size.height * 0.30 - 50,
                //             child: Card(
                //               elevation: 10,
                //               borderOnForeground: true,
                //               child: Padding(
                //                 padding: const EdgeInsets.all(2.0),
                //                 child: Stack(
                //                   children: [
                //                     Positioned(
                //                       top: 10,
                //                       left: 10,
                //                       child: Text(
                //                         "부모님 추천모델2",
                //                         style: TextStyle(
                //                             fontSize: 15,
                //                             fontWeight: FontWeight.bold),
                //                       ),
                //                     ),
                //                     Positioned(
                //                       bottom: 0,
                //                       left: 10,
                //                       child: Text(
                //                         "어린이보호 구역",
                //                         style: TextStyle(
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                     Positioned(
                //                       bottom: 20,
                //                       left: 10,
                //                       child: Text(
                //                         "동물 보호 감지",
                //                         style: TextStyle(
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Container(
                //             width: 150,
                //             margin: EdgeInsets.only(left: 50),
                //             height: MediaQuery.of(context).size.height * 0.30 - 50,
                //             child: Card(
                //               elevation: 10,
                //               borderOnForeground: true,
                //               child: Padding(
                //                 padding: const EdgeInsets.all(2.0),
                //                 child: Stack(
                //                   children: [
                //                     Positioned(
                //                       top: 10,
                //                       left: 10,
                //                       child: Text(
                //                         "부모님 추천모델",
                //                         style: TextStyle(
                //                             fontSize: 15,
                //                             fontWeight: FontWeight.bold),
                //                       ),
                //                     ),
                //                     Positioned(
                //                       bottom: 0,
                //                       left: 10,
                //                       child: Text(
                //                         "어린이보호 구역",
                //                         style: TextStyle(
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                     Positioned(
                //                       bottom: 20,
                //                       left: 10,
                //                       child: Text(
                //                         "동물 보호 감지",
                //                         style: TextStyle(
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Container(
                //             width: 150,
                //             margin: EdgeInsets.only(right: 100),
                //             height: MediaQuery.of(context).size.height * 0.30 - 50,
                //             child: Card(
                //               elevation: 10,
                //               borderOnForeground: true,
                //               child: Padding(
                //                 padding: const EdgeInsets.all(2.0),
                //                 child: Stack(
                //                   children: [
                //                     Positioned(
                //                       top: 10,
                //                       left: 10,
                //                       child: Text(
                //                         "부모님 추천모델",
                //                         style: TextStyle(
                //                             fontSize: 15,
                //                             fontWeight: FontWeight.bold),
                //                       ),
                //                     ),
                //                     Positioned(
                //                       bottom: 0,
                //                       left: 10,
                //                       child: Text(
                //                         "어린이보호 구역",
                //                         style: TextStyle(
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                     Positioned(
                //                       bottom: 20,
                //                       left: 10,
                //                       child: Text(
                //                         "동물 보호 감지",
                //                         style: TextStyle(
                //                             fontSize: 16),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(height:30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

