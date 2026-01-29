import 'package:flutter/material.dart';
import 'package:linkedin/widgets/notificationWidget.dart';

import '../widgets/conections.dart';
class Catchuppage extends StatelessWidget {
  const Catchuppage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            
            Divider(),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text('All')),
                ElevatedButton(onPressed: (){}, child: Text('Job Change')),
                ElevatedButton(onPressed: (){}, child: Text('Birthday')),
                ElevatedButton(onPressed: (){}, child: Text('Work Aniversaries')),
                ElevatedButton(onPressed: (){}, child: Text('Education'))
              ],
             ),
           ),
           Divider(
            thickness: 3
           ),
           Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [ 
               NotificationWidget(notifyCont: ' meet patel'),
               NotificationWidget(notifyCont: 'ram started new postion in tcs'),
               NotificationWidget(notifyCont: "say cangrats to gopika")
             ],
           )
          ],
        ),
      )
      ),
    );
  }
}