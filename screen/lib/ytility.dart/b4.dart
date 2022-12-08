import 'package:flutter/material.dart';

class B4 extends StatelessWidget {
  const B4({super.key,required this.text1,required this.text2,required this.text3,required this.image,required this.num1,required this.num2});
  final text1;
  final text2;
  final text3;
  final image;
  final num1;
  final num2;

  @override
  Widget build(BuildContext context) {
    return Container(
   decoration: BoxDecoration( color: Colors.grey[800],borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(mainAxisAlignment: MainAxisAlignment.start,children: [
                CircleAvatar(radius: 25,backgroundImage: AssetImage(image),),
                SizedBox(width: 10,),
               Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                 Text(text1,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
              
                Text(text2,style: TextStyle(color: Colors.grey[700],fontSize: 8)),
                
               
               ],),



              ],),
               Text(text3,softWrap: true,style: TextStyle(color: Colors.white70,fontSize: 14,fontWeight: FontWeight.w600)),
              SizedBox(height: 6,),
              

              Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                Row(children: [
                  Icon(Icons.favorite,color: Colors.white,),
                  Text(num1,style: TextStyle(color: Colors.white),)
                ],),
                SizedBox(width: 12,),
                     Row(children: [
                  Icon(Icons.comment,color: Colors.white,),
                  Text(num2,style: TextStyle(color: Colors.white),)
                ],),
                 SizedBox(width: 12,),
                     Row(children: [
                  Icon(Icons.rocket_launch_outlined,color: Colors.white,),
                  
                ],),

              ],)
            ],
          ),
        ),
      ),
    );
  }
}