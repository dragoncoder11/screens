import 'package:flutter/material.dart';

class B1 extends StatelessWidget {
  const B1({super.key,required this.photos,required this.color,required this.title});

  final photos;
  final color;
  final title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center( child: 
          Container(
            color: color,height: 45,width: 45,child: Image(image: AssetImage(photos)),
            
          ),),
          SizedBox(height: 25,),
          Text(title,style: TextStyle(color: Colors.black),)

        ],
      ),
    );
  }
}