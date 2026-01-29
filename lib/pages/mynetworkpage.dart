// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:linkedin/widgets/conections.dart';

// // import 'homepage.dart';
// // import 'jobspage.dart';
// // import 'notificationpage.dart';
// // import 'postpage.dart';
// // class Mynetworkpage extends StatelessWidget {
// //   const Mynetworkpage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     var size=MediaQuery.of(context).size;
// //     return Scaffold(
// //         backgroundColor:Colors.grey[400],
// //       appBar: AppBar(
// //        leading: Padding(
// //          padding: const EdgeInsets.all(8),
// //          child: CircleAvatar(
// //           child: Icon(Icons.person),
          
// //          ),
// //        ),
// //        title: Container(
// //         width: size.width*0.6,
// //         decoration: BoxDecoration(
// //           border: Border.all(),
// //           borderRadius: BorderRadius.circular(20),
          
// //         ),
// //         child: TextField(
// //           decoration: InputDecoration(hintText: 'search',
// //             prefixIcon: Icon(Icons.search)
// //           ),
          
// //         ),
// //        ),
// //        actions: [
// //         IconButton(onPressed: (){}, icon: Icon(Icons.message))
// //        ],
       
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         type: BottomNavigationBarType.fixed,
// //         items:
// //       [
// //         BottomNavigationBarItem(icon: Icon(Icons.home),
// //         label:'Home'),
// //         BottomNavigationBarItem(icon: Icon(Icons.window),label: "My network"),
// //         BottomNavigationBarItem(icon: Icon(Icons.post_add_outlined),label: 'post'),
// //         BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
// //         BottomNavigationBarItem(icon: Icon(Icons.work),label: 'Jobs')
// //       ],
// //       onTap: (index){
// //         switch(index){
// //           case 1:Get.to(Mynetworkpage());
// //           break;
// //           case 0:Get.to(Homepage());
// //           break;
// //           case 2:Get.to(Postpage());
// //           break;
// //           case 3:Get.to(Notificationpage());
// //           break;
// //           case 4:Get.to(Jobspage());
// //           break;
// //         }
// //       },
// //       ),
// //        body: SingleChildScrollView(
         
// //          child: Column(spacing: 10,
// //           children: [
// //             SizedBox(height:size.height*0.02),
// //             Container(
// //               color: Colors.white,
// //               child: Column(
// //                 children: [
// //                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Text('Network overview'),
// //                       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
// //                     ],
// //                   ),
// //                   Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                     children: [
// //                     SizedBox(
// //                       child: Column(
// //                         children: [
// //                           Text('0'),
// //                           Text('invites sent')
// //                         ],
// //                       ),
// //                     ),
// //                     SizedBox(
// //                       child: Column(
// //                         children: [
// //                           Text('0'),
// //                           Text('connections')
// //                         ],
// //                       ),
// //                     ),SizedBox(
// //                       child: Column(
// //                         children: [
// //                           Text('0'),
// //                           Text('following')
// //                         ],
// //                       ),
// //                     )
// //                   ],)
// //                 ],
// //               ),
// //             ),Container(
// //               color: Colors.white,
// //               child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text('Invites received'),
// //                   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
// //                 ],
// //               ),
// //             ),
// //             Container(
// //               color: Colors.white,
// //               child: Column(spacing: 10,
// //                 children: [
// //                 Text('Software engineer you may know'),
// //                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                   children: [
// //                     SizedBox(
// //                       width: size.width*0.4,
// //                       height: size.height*0.4,
// //                       child: Connections(
// //                         name:'abcqweqwe',
// //                         position:'defcqweqwe',
// //                         mutualConnections:'ghic',
// //                       ),
// //                     ),
// //                      SizedBox(
// //                       width: size.width*0.4,
// //                       height: size.height*0.4,
// //                       child: Connections(name: 'jklcqweqwe', position: 'mnocqweqwe', mutualConnections:'pqr')
// //                     )
// //                   ],
// //                 ),
// //                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                   children: [
// //                     SizedBox(
// //                       width: size.width*0.4,
// //                       height: size.height*0.4,
// //                       child: Connections(name:'stucqweqwe', position:'vwxcqweqwe', mutualConnections: 'yza')
// //                     ),
// //                      SizedBox(
// //                       width: size.width*0.4,
// //                       height: size.height*0.4,
// //                       child: Connections(name: 'bcdcqweqwe', position: 'efgcqweqwe', mutualConnections:'ijk')
// //                     )
// //                   ],
// //                 )
// //               ],),
// //             )
// //           ], 
// //          ),
// //        ),
// //     );
// //   }
// // }





// import 'package:flutter/material.dart';
// import 'package:linkedin/pages/catchuppage.dart';
// import 'package:linkedin/pages/growpage.dart';
// import 'package:linkedin/widgets/conections.dart';

// class Mynetworkpage extends StatelessWidget {
//   const Mynetworkpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size =MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               Container(
//                   width: size.width*0.49,
//                   child: Center(child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Grow()));}, child: Text('Grow'))
//                 ),
//               ), Container(
//                   width: size.width*0.49,
//                   child: Center(child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Catchuppage()));}, child: Text('Catch up')))
//                 ),
              
//             ],
//           ),
//         //   Divider(),
//         //  SingleChildScrollView(
//         //   scrollDirection: Axis.horizontal,
//         //    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //     children: [
//         //       ElevatedButton(onPressed: (){}, child: Text('All')),
//         //       ElevatedButton(onPressed: (){}, child: Text('Job Change')),
//         //       ElevatedButton(onPressed: (){}, child: Text('Birthday')),
//         //       ElevatedButton(onPressed: (){}, child: Text('Work Aniversaries')),
//         //       ElevatedButton(onPressed: (){}, child: Text('Education'))
//         //     ],
//         //    ),
//         //  ),
//         //  Divider(
//         //   thickness: 3
//         //  ),
//         //  Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
//         //    children: [
//         //      Connections(name: 'name', position: 'position',
//         //       mutualConnections: 'mutualConnections'),
//         //       Connections(name: 'name', position: 'position',
//         //       mutualConnections: 'mutualConnections'),
//         //    ],
//         //  )
//         ],
//       ),
//     );
//   }
// }










import 'package:flutter/material.dart';
import 'package:linkedin/pages/catchuppage.dart';
import 'package:linkedin/pages/growpage.dart';

class Mynetworkpage extends StatefulWidget {
  const Mynetworkpage({super.key});

  @override
  State<Mynetworkpage> createState() => _MynetworkpageState();
}

class _MynetworkpageState extends State<Mynetworkpage> {
  int selectedIndex = 0; // 0 = Grow, 1 = Catch up

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Network'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),

          // -------- Two Buttons --------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => setState(() => selectedIndex = 0),
                  style: TextButton.styleFrom(
                    backgroundColor: selectedIndex == 0
                        ? Colors.blue.shade100
                        : Colors.transparent,
                  ),
                  child: Text(
                    'Grow',
                    style: TextStyle(
                      color:
                          selectedIndex == 0 ? Colors.blue : Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () => setState(() => selectedIndex = 1),
                  style: TextButton.styleFrom(
                    backgroundColor: selectedIndex == 1
                        ? Colors.blue.shade100
                        : Colors.transparent,
                  ),
                  child: Text(
                    'Catch up',
                    style: TextStyle(
                      color:
                          selectedIndex == 1 ? Colors.blue : Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const Divider(thickness: 2),

          // -------- Dynamic Content Area --------
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: selectedIndex == 0
                  ? const Grow()
                  : const Catchuppage(),
            ),
          ),
        ],
      ),
    );
  }
}
