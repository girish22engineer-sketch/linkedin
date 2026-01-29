import 'package:flutter/material.dart';
class NotificationWidget extends StatelessWidget {
 final String notifyCont;
 
  const NotificationWidget({super.key,
  required this.notifyCont,
  
  });

  @override
  Widget build(BuildContext context) {
   var size =MediaQuery.of(context).size;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            SizedBox(
              width:size.width*0.2 ,
              child: CircleAvatar(
                radius: size.width*0.06,
                child: Icon(Icons.person),
              ),
            ),
            SizedBox(
              width: size.width*0.6,
              child: Column(
                children: [
                  Text(notifyCont),
                ],
              ),
            ),
            SizedBox(
              width: size.width*0.05,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
            )
          ],
        ),
      ),
    );
  }
}