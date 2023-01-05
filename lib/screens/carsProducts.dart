import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List img = [
    'img/a1.jpg',
    'img/a2.jpg',
    'img/a3.jpg',
    'img/a4.jpg',
  ];

  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text('Cars',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontSize: 20)),
        ),
        actions: [
          Row(
            children: const [
              Icon(Icons.notifications, color: Colors.red),
              Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Icon(Icons.shopping_cart, color: Colors.red)),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text('All',
                          style: TextStyle(color: Colors.white, fontSize: 18))),
                  const Text('Red', style: TextStyle(fontSize: 18)),
                  const Text('Blue', style: TextStyle(fontSize: 18)),
                  const Text('Green', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  child: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text('PDP',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: Text('Car',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text('Electric',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: Colors.red)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 30),
                        child: Text('100\$',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, top: 105),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              a = !a;
                            });
                          },
                          icon: a
                              ? Icon(Icons.favorite_outlined)
                              : Icon(Icons.favorite_sharp),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(img[index]),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}


// Padding(
//       padding: const EdgeInsets.all(12),
//       child: Container(
//         child: Stack(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(left: 30),
//               child: Text('PDP',
//                   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 80),
//               child: Text('Car',
//                   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 120),
//               child: Text('Electric',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 18,
//                       color: Colors.red)),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 30, left: 30),
//               child: Text('100\$',
//                   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 25, top: 105),
//               child: IconButton(
//                 onPressed: () {
//                   setState(() {
//                     a = !a;
//                   });
//                 },
//                 icon: a? Icon(Icons.favorite_outlined):Icon(Icons.favorite_sharp) ,
//               ),
//             )
//           ],
//         ),.....
//         height: 150,
//         width: double.infinity,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             image: const DecorationImage(
//                 fit: BoxFit.fill, image: AssetImage('img/a1.jpg'))),
//       ),
//     );