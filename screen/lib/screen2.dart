import 'package:flutter/material.dart';
import 'package:screen/ytility.dart/b3.dart';
import 'package:screen/ytility.dart/b4.dart';


class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  var w1l = ['Jown Edwards', 'Anna Shumaher', 'Robert Morphy'];
  var w2l = ['5 min ago', '12 hours ago', '4 days ago'];
  var imagel = [
    'assets/f5.jpg',
    'assets/f6.jpg',
    'assets/f7.jpg',
  ];
  var w3l = [
    'Bought \$300 of Apple',
    'study says buying a winning stock is easy just find acool ticker symbol',
    'i\'m sleeping'
  ];
  var n1l = ['31', '57', '66'];
  var n2l = ['12', '12', '33'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/f6.jpg'),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            'John Edwards',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            '@marvin_ed',
            style: TextStyle(fontSize: 20, color: Colors.grey[400]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                 B3(x1: '32', x2: 'Posts', c1: Colors.lightGreen, c2: Colors.white),
                  B3(x1: '26354', x2: 'Followers', c1: Colors.grey[800], c2: Colors.black),
                   B3(x1: '256', x2: 'Subscribers', c1: Colors.grey[800], c2: Colors.black),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Posts',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Sorting',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: w1l.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: B4(
                        text1: w1l[index],
                        text2: w2l[index],
                        text3: w3l[index],
                        image: imagel[index],
                        num1: n1l[index],
                        num2: n2l[index]),
                  );
                }),
          )
        ],
      ),
    );
  }
}

