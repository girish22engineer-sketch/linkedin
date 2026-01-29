// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:linkedin/widgets/notificationWidget.dart';

// import 'homepage.dart';
// import 'jobspage.dart';
// import 'mynetworkpage.dart';
// import 'postpage.dart';
// class Notificationpage extends StatelessWidget {
//   const Notificationpage({super.key});

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
//         IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: IconButton(onPressed: (){}, icon: Icon(Icons.message)),
//         )
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
//       ),body: SingleChildScrollView(
//         controller: ScrollController(),
//         child: Column(
//           children: [
//             Container(
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.only(top:10.0,left: 7,right: 7,bottom: 6),
//                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(onPressed: (){}, child: Text('All')),
//                     ElevatedButton(onPressed: (){}, child: Text('Jobs')),
//                     ElevatedButton(onPressed: (){}, child: Text('My post')),
//                     ElevatedButton(onPressed: (){},child: Text('Mentions'),)
                    
//                   ],
//                 ),
//               ),
//             ),
//             NotificationWidget(notifyCont: 'RAJKY both have similar interst and both fron anna university'),
//             NotificationWidget(notifyCont: 'JAWAN KIY posted best practice of flutter code structure# flutter # developer'),
//              NotificationWidget(notifyCont: 'ahjdfgrukl eyie frew0rn  ewuypef fgri rtt7ptds trgorietoer freypo tg'),    
//           ],         
//         ),
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:linkedin/widgets/notificationWidget.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
         Row(
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('All')),
             ElevatedButton(onPressed: (){}, child: const Text('Jobs')),
              ElevatedButton(onPressed: (){}, child: const Text('My Jobs')),
               ElevatedButton(onPressed: (){}, child: const Text('Mention')),
          ],
         ),
         Divider(
          thickness: 3
         ),
         NotificationWidget(notifyCont: 'fjherfgrtrfid hgjg frutprfjoidfj jhpr'),
         NotificationWidget(notifyCont: 'thuiew hhuhlhlk gyiy;jiirkkkdf ytgyoyr')
        ],
      ),
    );
  }
}
