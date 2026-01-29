// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:linkedin/pages/homepage.dart';
// class Postpage extends StatelessWidget {
//   const Postpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         children: [
//           Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(onPressed: (){Get.off(Homepage());}, icon: Icon(Icons.close)),
//               Container(child: Row(
//                 children: [
//                        CircleAvatar(
//                 child: Icon(Icons.person),

//               ),
//               Text('Anyone  '),
//               IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down)),
//                 ],
//               ),),
             
//               Icon(Icons.timelapse),
//               ElevatedButton(onPressed: (){}, child: Text('Post'),),
//             ],
//           ),
//           SizedBox(
//             height: size.height*0.8,
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'share ur thoughts'
//               ),
              
//             ),
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 width: size.width*0.7,
//                 child: ElevatedButton(onPressed: (){}, child: Text('rewrite with Ai'),)),
//               SizedBox(
//                 width:size.width*0.1,
//                 child: IconButton(onPressed: (){}, icon: Icon(Icons.image))),
//               SizedBox(
//                 width: size.width*0.1,
//                 child: IconButton(onPressed: (){}, icon: Icon(Icons.add)))
//             ],
//           )
         
//         ],
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';

class Postpage extends StatelessWidget {
  const Postpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
              Row(
                children: const [
                  CircleAvatar(child: Icon(Icons.person)),
                  SizedBox(width: 5),
                  Text("Anyone"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              const Icon(Icons.timelapse),
              ElevatedButton(onPressed: () {}, child: const Text("Post")),
            ],
          ),
          const SizedBox(height: 20),
          const TextField(
            maxLines: 8,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Share your thoughts...',
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text("Rewrite with AI")),
              IconButton(onPressed: () {}, icon: const Icon(Icons.image)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
