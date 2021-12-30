import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Models/foundPeople/home.dart';
import 'main.dart';
import 'mypage.dart';


List func=[false,false,false,false,false,false,false,false];

class home extends StatefulWidget {
  //const home({Key? key}) : super(key: key);
  late final List<CameraDescription> cameras;

  home(this.cameras);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
            child: Text('mypage'),
            onPressed: () {
              Get.to(() => mypage(cameras));
            },
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            func[0]=!func[0];
                          });
                        },
                            icon: Icon(Icons.directions_car,
                                color: func[0]?Colors.blue:Colors.black
                            )),
                        Text('구급차'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            func[1]=!func[1];
                          });

                        },
                            icon: Icon(Icons.pets,
                                color: func[1]?Colors.blue:Colors.black
                            )),
                        Text('동물')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          Get.to(HomePage(cameras));
                          setState(() {
                            func[2]=!func[2];
                          });
                        },
                            icon: Icon(Icons.directions_walk,
                                color: func[2]?Colors.blue:Colors.black
                            )),
                        Text('사람')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            func[3]=!func[3];
                          });

                        },
                            icon: Icon(Icons.pedal_bike,
                                color: func[3]?Colors.blue:Colors.black
                            )),
                        Text('교통수')
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            func[4]=!func[4];
                          });

                        },
                            icon: Icon(Icons.escalator_warning,
                                color: func[4]?Colors.blue:Colors.black
                            )),
                        Text('어린이')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            func[5]=!func[5];
                          });

                        },
                            icon: Icon(Icons.phonelink_erase,
                                color: func[5]?Colors.blue:Colors.black
                            )),
                        Text('휴대폰')
                      ],
                    ),
                    Column(
                      children: [

                        IconButton(onPressed: () {
                          setState(() {
                            func[6]=!func[6];
                          });

                        },
                            icon: Icon(Icons.mode_night,
                                color: func[6]?Colors.blue:Colors.black
                            )),
                        Text('졸음')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {
                          setState(() {
                            func[7]=!func[7];
                          });

                        },
                            icon: Icon(Icons.mode_night,
                                color: func[7]?Colors.blue:Colors.black
                            )),

                        Text('보류')
                     ],
                    )
                  ],
                ),

                Text('Model 추천 - version1',
                    style: TextStyle(fontWeight: FontWeight.w600)),
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
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.30 - 50,
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
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.30 - 50,
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
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.30 - 50,
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
                SizedBox(height: 30),

                Text('Model 추천 - version2',
                    style: TextStyle(fontWeight: FontWeight.w600)),
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
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.navigation)
      ),
    );
  }
}

