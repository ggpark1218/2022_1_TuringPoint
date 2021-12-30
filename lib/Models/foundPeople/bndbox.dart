import 'package:flutter/material.dart';
import 'dart:math' as math;


class BndBox extends StatefulWidget{
  final List<dynamic> results;
  final int previewH;
  final int previewW;
  final double screenH;
  final double screenW;
  final String model;

  BndBox(this.results, this.previewH, this.previewW, this.screenH, this.screenW,
      this.model);

  @override
  State<BndBox> createState() => _BndBoxState();
}

class _BndBoxState extends State<BndBox> {
  var _x;

  var _w =0.0;

  var _y ;

  var _h =0.0;

  String warning_sign = "";

  Widget texting(){
    //if(_w> 300 || _h>300){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[Text(warning_sign, style: TextStyle(fontSize: 50, color: Colors.red), )]
        ),
      );
    }
    //else return Container();
  //}

  @override
  Widget build(BuildContext context) {

    List<Widget> _renderBoxes() {
      return widget.results.map((re) {
          _x = re["rect"]["x"];
          _w = re["rect"]["w"];
          _y = re["rect"]["y"];
          _h = re["rect"]["h"];


        var scaleW, scaleH, x, y, w, h;

        if (widget.screenH / widget.screenW > widget.previewH / widget.previewW) {
          scaleW = widget.screenH / widget.previewH * widget.previewW;
          scaleH = widget.screenH;
          var difW = (scaleW - widget.screenW) / scaleW;
          x = (_x - difW / 2) * scaleW;
          w = _w * scaleW;
          if (_x < difW / 2) w -= (difW / 2 - _x) * scaleW;
          y = _y * scaleH;
          h = _h * scaleH;
          setState(() {
            _w = w;
            _h = h;
          });

        } else {
          scaleH = widget.screenW / widget.previewW * widget.previewH;
          scaleW = widget.screenW;
          var difH = (scaleH - widget.screenH) / scaleH;
          x = _x * scaleW;
          w = _w * scaleW;
          y = (_y - difH / 2) * scaleH;
          h = _h * scaleH;
          if (_y < difH / 2) h -= (difH / 2 - _y) * scaleH;
          setState(() {
            _w = w;
            _h = h;
          });
        }

        if(re["detectedClass"]=='person'){
          setState(() {
            warning_sign = "Person Warning!";
          });
        }
        else{
          setState(() {
            warning_sign = "";
          });
        }

        return Positioned(
          left: math.max(0, x),
          top: math.max(0, y),
          width: w,
          height: h,
          child: Container(
            //여기부터 지우면 된다 !!!!
            padding: EdgeInsets.only(top: 5.0, left: 5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: re["detectedClass"]=='person'?Color.fromRGBO(255, 0, 0, 1.0):Color.fromRGBO(0, 255, 0, 1.0),
                width: 3.0,
              ),
            ),
            child: Text(
            "${re["detectedClass"]} ${(re["confidenceInClass"] * 100).toStringAsFixed(0)}%",
              style: TextStyle(

                color: re["detectedClass"]=='person'?Color.fromRGBO(255, 0, 0, 1.0):Color.fromRGBO(0, 255, 0, 1.0),
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      }).toList();
    }

    return Container(
      child:Stack(
        children:[
          texting(),
          Stack(
            children: _renderBoxes(),
          ),
        ],
      )
    );
  }
}
