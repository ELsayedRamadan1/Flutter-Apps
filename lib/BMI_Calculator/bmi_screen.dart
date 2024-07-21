// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:news_app/BMI_Calculator/bmi_result_screen.dart';
//
// class BmiScreen extends StatefulWidget {
//
//   @override
//   _BmiScreenState createState() => _BmiScreenState();
// }
//
// class _BmiScreenState extends State<BmiScreen> {
//   bool isMale = true;
//   double height = 120.0;
//   int weight = 40;
//   int age = 20;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Bmi Calculator'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: () => setState(() => isMale = true),
//                       child: Container(
//                         child: const Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image(
//                               image: AssetImage('assets/images/male.png'),
//                               height: 70,
//                               width: 70,
//                             ),
//                             SizedBox(height: 15),
//                             Text(
//                               'MALE',
//                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                             )
//                           ],
//                         ),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10), color: isMale ? Colors.blue : Colors.grey[300]),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                   Expanded(
//                     child: GestureDetector(
//                       onTap: () => setState(() => isMale = false),
//                       child: Container(
//                         child: const Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image(
//                               image: AssetImage('assets/images/female.png'),
//                               height: 70,
//                               width: 70,
//                             ),
//                             SizedBox(height: 15),
//                             Text(
//                               'FEMALE',
//                               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                             )
//                           ],
//                         ),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10), color: !isMale ? Colors.blue : Colors.grey[300]),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text(
//                       'HEIGHT',
//                       style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.baseline,
//                       textBaseline: TextBaseline.alphabetic,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           '${height.round()}',
//                           style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(width: 5),
//                         const Text(
//                           'cm',
//                           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     Slider(value: height, max: 220, min: 80, onChanged: (val) => setState(() => height = val))
//                   ],
//                 ),
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'WEIGHT',
//                             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             '$weight',
//                             style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               FloatingActionButton(
//                                 onPressed: () => setState(() => weight--),
//                                 child: const Icon(Icons.remove),
//                                 mini: true,
//                                 heroTag: 'weight-',
//                               ),
//                               FloatingActionButton(
//                                 onPressed: () => setState(() => weight++),
//                                 child: const Icon(Icons.add),
//                                 mini: true,
//                                 heroTag: 'weight+',
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'AGE',
//                             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             '$age',
//                             style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               FloatingActionButton(
//                                 onPressed: () => setState(() => age--),
//                                 child: const Icon(Icons.remove),
//                                 mini: true,
//                                 heroTag: 'age-',
//                               ),
//                               FloatingActionButton(
//                                 onPressed: () => setState(() => age++),
//                                 child: const Icon(Icons.add),
//                                 mini: true,
//                                 heroTag: 'age+',
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             child: MaterialButton(
//               child: const Text(
//                 'CALCULATE',
//                 style: TextStyle(color: Colors.white),
//               ),
//               color: Colors.blue[400],
//               onPressed: () {
//                 double result = weight / pow(height / 100, 2);
//                 print(result.round());
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         // builder: (context) => BmiResultScreen(
//                           isMale: isMale,
//                           age: age,
//                           result: result,
//                         )));
//               },
//               height: 50,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
