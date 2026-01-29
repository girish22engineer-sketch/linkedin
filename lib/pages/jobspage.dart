// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'homepage.dart';
// import 'mynetworkpage.dart';
// import 'notificationpage.dart';
// import 'postpage.dart';
// class Jobspage extends StatelessWidget {
//   const Jobspage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size =MediaQuery.of(context).size;
//     return Scaffold(
//         backgroundColor:Colors.grey[400],
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
//         BottomNavigationBarItem(icon: Icon(Icons.window),label: "My network"),
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
//       body: Column(
//         children: [
//         Container(
//           color: Colors.white,
//           child: Row(
//             children: [
//                  ElevatedButton(onPressed: (){}, child:Text('Preference')  ),
//                  ElevatedButton(onPressed: (){}, child: Text('MyJobs')),
//                  ElevatedButton(onPressed: (){}, child: Text('Post a Job in minute'))
//             ],
//           ),
//         )
        

//         ],
//       ),
//     );
//   }
// }










import 'package:flutter/material.dart';
import 'package:linkedin/widgets/notificationwidget.dart';

class Jobspage extends StatelessWidget {
  const Jobspage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:  [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Preference')),
            ElevatedButton(onPressed: (){}, child: Text('My Jobs')),
            ElevatedButton(onPressed: (){}, child:Text('Post a job in a minute')),
          ],
        ),
          SizedBox(height: 10),
          Divider(thickness: 4),
          NotificationWidget(notifyCont:"Android Developer - Wipro"),
          Divider(),
          NotificationWidget(notifyCont:"Flutter Developer - Infosys"),
          Divider(),
          NotificationWidget(notifyCont: ("UI/UX Designer - TCS"),)
        ],
      ),
    );
  }
}
