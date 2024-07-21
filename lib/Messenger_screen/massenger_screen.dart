// import 'package:flutter/material.dart';
// import 'package:news_app/Messenger_screen/build_Chat_Item.dart';
// class MessengerScreen extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         titleSpacing: 20.0,
//         title: const Row(
//           children: [
//             CircleAvatar(
//               radius: 20,
//               backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/35312200'),
//             ),
//             SizedBox(width: 15),
//             Text(
//               'Chats',
//               style: TextStyle(color: Colors.black),
//             )
//           ],
//         ),
//         actions: [
//           CircleAvatar(child: Icon(Icons.camera_alt_outlined)),
//           SizedBox(
//             width: 20,
//           ),
//           CircleAvatar(child
//               : Icon(Icons.edit))
//         ],
//
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5.0),
//                   color: Colors.grey[300],
//                 ),
//                 padding: EdgeInsets.all(5),
//                 child: Row(
//                   children: [
//                     Icon(Icons.search),
//                     SizedBox(width: 15),
//                     Text(
//                       'Search',
//                       style: TextStyle(fontSize: 20.0),
//                     )
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 106,
//                 child: ListView.separated(
//                   itemBuilder: (context, index) => buildStoryItem(),
//                   separatorBuilder: (context, index) => SizedBox(width: 20),
//                   itemCount: 10,
//                   scrollDirection: Axis.horizontal,
//                 ),
//               ),
//               SizedBox(height: 20),
//               ListView.separated(
//                 shrinkWrap: true, // IS USED TO BUILD THE WHOLE LIST
//                 physics: NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) => buildChatItem(),
//                 separatorBuilder: (context, index) => SizedBox(height: 20),
//                 itemCount: 15,
//               )
//
//
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
