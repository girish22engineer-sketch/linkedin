import 'package:flutter/material.dart';

import '../widgets/conections.dart';
class Grow extends StatelessWidget {
  const Grow({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Material(
      child: Container(
        child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
          
            Divider(),
           
           Container(child: Text('Invitation'),),
           Divider(
            thickness: 3
           ),
           Container(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('Manage my network'),
               IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
             ],
           ),),
           Divider(
            thickness: 3,
           ),
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Connections(name: 'name', position: 'position',
                mutualConnections: 'mutualConnections'),
                Connections(name: 'name', position: 'position',
                mutualConnections: 'mutualConnections'),
             ],
           )
          ],
        ),
      )
      ),
    );
  }
}