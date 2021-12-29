import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'mypage.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                Text('Model 추천', style: TextStyle(fontWeight: FontWeight.w600)),
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
                                            fontSize: 20,
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
                                            fontSize: 20,
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
                                            fontSize: 20,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
