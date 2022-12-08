import 'package:flutter/material.dart';
import 'package:screen/screen2.dart';
import 'package:screen/ytility.dart/b1.dart';
import 'package:screen/ytility.dart/b2.dart';

var listphotos = [
  'assets/h3.jpg',
  'assets/h4.jpg',
  'assets/h1.jpg',
  'assets/f4.jpg',
  'assets/f2.jpg',
];
var listtitle = [
  '1 week streak',
  '2 week streak',
  '3 week streak',
  '4 week streak',
  '5 week streak'
];
var listcolor = [
  Colors.orange,
  Colors.lightGreen,
  Colors.lightBlueAccent,
  Colors.pink,
  Colors.purple
];

class MyUi extends StatelessWidget {
  const MyUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.short_text,
              color: Colors.white,
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Hello John',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Screen2();
                }));
              },
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('assets/f5.jpg'),
                              )),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Your Balance',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                '\$23,052.82',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Achievements',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 120,
              child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listcolor.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: B1(
                            photos: listphotos[index],
                            color: listcolor[index],
                            title: listtitle[index]),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Investment Portfolio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    B2(icons: Icons.apple, t1: 'Apple', t2: '\$2222(111)'),
                    B2(
                        icons: Icons.architecture,
                        t1: 'Activation Blizzard',
                        t2: '\$3333(111)'),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    B2(icons: Icons.spa, t1: 'AMD', t2: '\$4444(111)'),
                    B2(icons: Icons.star, t1: 'Value', t2: '\$5555(111)'),
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
