import 'package:flutter/material.dart';
import 'home.dart';

class ModelContainer extends StatefulWidget {


  final String modelname;
  final int function1;
  final int function2;

  // final String function4;
  // final String function5;

  const ModelContainer(this.modelname, this.function1, this.function2);

  @override
  State<ModelContainer> createState() => _ModelContainerState();
}

class _ModelContainerState extends State<ModelContainer> {


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        height: 100,
        width: 400,
        child: Column(
            children: [
            Text(widget.modelname),
        Column(
            children: [
            Text(widget.function1.toString()),
    Text(widget.function2.toString()),


    //  Text(function3),

    ],

    ),
              TextButton(
                onPressed: (){
             setState(() {
               print('hi');

             });
              }, child: Text('적용'),

              ),
    ],
    )

    );
    }
}

  class fucntions extends StatelessWidget {
  const fucntions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container();
  }
  }
