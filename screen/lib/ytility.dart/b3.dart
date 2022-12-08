import 'package:flutter/material.dart';

class B3 extends StatelessWidget {
  const B3(
      {Key? key,
      required this.x1,
      required this.x2,
      required this.c1,
      required this.c2})
      : super(key: key);
  final x1;
  final x2;
  final c1;
  final c2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 110,
      decoration: BoxDecoration(color: c1,
      borderRadius: BorderRadius.circular(10)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text(x1,style: TextStyle(fontSize: 20,color: c2),),
        SizedBox(height: 15,),
         Text(x2,style: TextStyle(fontSize: 12,color: c2),)
      ],),
    );
  }
}
