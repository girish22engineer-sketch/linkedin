import 'package:flutter/material.dart';
class Connections extends StatelessWidget {
  final String name;
  final String position;
  final String mutualConnections;
 const Connections({super.key,
   required this.name,
  required this.position,
  required this.mutualConnections,
  
  });
 


  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Container(
      height: size.height*0.4,
      width: size.width*0.4,
      decoration: BoxDecoration(
        
        border:BoxBorder.all(color: Colors.black45)
         ,borderRadius: BorderRadius.circular(10)
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
            
            
            color: Colors.grey,
            height: size.height*0.08,
            width: size.width*0.40,
          )
          ),
          Positioned(
            top: size.height*0.025,
            left:size.width*0.11,
            child: CircleAvatar(
            radius: size.height*0.07,
            child: Icon(Icons.person),
          )),
          Positioned(
            top: size.height*0.18,
            left: size.width*0.04,
            child: 
          
             Container(
              
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: Text(name,style: TextStyle(color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:25.0),
                      child: Text(position,style: TextStyle(color: Colors.black),),
                    ),
                    Row(spacing: 10,
                      children: [
                        CircleAvatar(),
                        Text(mutualConnections,style: TextStyle(color: Colors.black),)
                      ],
                    ),
                   
                  ],
                ),
              
            ),
          )
          ,
          Positioned(
            bottom: size.height*0.03,
            left:size.width*0.12,
            
            child: TextButton(
            
              onPressed: (){}, child: Text('connect')))
        ],
      ),
    );
  }
}