import 'package:flutter/material.dart';

class B2 extends StatelessWidget {
  const B2({super.key,required this.icons,required this.t1,required this.t2});
  final icons;
  final t1;
  final t2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Icon(icons,color: Colors.white,size: 40,),
          Icon(Icons.electric_bolt_sharp,color: Colors.white,),
         

        ],),
         SizedBox(height: 25,),
          Column(children: [
            Text(t1,style: TextStyle(color: Colors.white,fontSize: 15),),
            SizedBox(height: 7,),
            Text(t2,style: TextStyle(color: Colors.grey[500],fontSize: 10),)
          ],)
      ],),
    );
  }
}