// // import 'package:flutter/cupertino.dart';
// // import'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:linkedin/mynetworkpage.dart';
// // class Homepage extends StatelessWidget {
// //    Homepage({super.key});
 
// //   @override
// //   Widget build(BuildContext context) {
// //     var size =MediaQuery.of(context).size;
// //     return Scaffold(
// //       backgroundColor:Colors.grey[400],
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
// //         BottomNavigationBarItem(icon: Icon(Icons.window),label: "My network",),
// //         BottomNavigationBarItem(icon: Icon(Icons.post_add_outlined),label: 'post'),
// //         BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
// //         BottomNavigationBarItem(icon: Icon(Icons.work),label: 'Jobs')
// //       ],
// //       onTap: (index){
// //         switch(index){
// //           case 1:Get.to(Mynetworkpage());
// //           break;

// //         }
// //       },
// //       ),
// //       body:
// //       SingleChildScrollView(
// //         child: Column(
// //           children: [],
// //         ),
// //       )
// //     );
// //   }
// // }












// import'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:linkedin/pages/mynetworkpage.dart';
// import 'package:linkedin/widgets/post.dart';

// import 'jobspage.dart';
// import 'notificationpage.dart';
// import 'postpage.dart';
// class Homepage extends StatefulWidget {
//    const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     var size =MediaQuery.of(context).size;
//     return Scaffold(
//       backgroundColor:Colors.grey[400],
//       appBar: AppBar(
//        leading: Padding(
//          padding: const EdgeInsets.all(8),
//          child: CircleAvatar(
//           child: Icon(Icons.person),
          
//          ),
//        ),
//        title: Container(
//         width: size.width*0.6,
//         decoration: BoxDecoration(
//           border: Border.all(),
//           borderRadius: BorderRadius.circular(20),
          
//         ),
//         child: TextField(
//           decoration: InputDecoration(hintText: 'search',
//             prefixIcon: Icon(Icons.search)
//           ),
          
//         ),
//        ),
//        actions: [
//         IconButton(onPressed: (){}, icon: Icon(Icons.message))
//        ],
       
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items:
//       [
//         BottomNavigationBarItem(icon: Icon(Icons.home),
//         label:'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.window),label: "My network",),
//         BottomNavigationBarItem(icon: Icon(Icons.post_add_outlined),label: 'post'),
//         BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
//         BottomNavigationBarItem(icon: Icon(Icons.work),label: 'Jobs')
//       ],
//       onTap: (index){
//         switch(index){
//           case 1:Get.to(Mynetworkpage());
//           break;
//           case 0:Get.to(Homepage());
//           break;
//           case 2:Get.to(Postpage());
//           break;
//           case 3:Get.to(Notificationpage());
//           break;
//           case 4:Get.to(Jobspage());
//           break;
//         }
//       },
//       ),
//       body:
//       SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 10,),
//             Post(name: 'wipro', about: 'IT service | IT consulting |bangalore,karnataga ', content: 'wipro hiring carrer for fressher')
//           ],
//         ),
//       )
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:linkedin/widgets/post.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
         Post(name: 'name', about:' about',content: 'content')
        ],
      ),
    );
  }
}
