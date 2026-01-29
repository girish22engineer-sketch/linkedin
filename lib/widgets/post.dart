import 'package:flutter/material.dart';
class Post extends StatelessWidget {
 final String name;
 final String about;
 final String content;
 final String imageName;
   Post({super.key,
  required this.name,required this.about,
  required this.content,
  required this.imageName,
  });
  

  @override
  Widget build(BuildContext context) {
   var size=MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      
      child:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              children: [
                SizedBox(
                  width: size.width*0.8,
                  child: Text('sugeested')),
                
                Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),)),
                Container(child: IconButton(onPressed: (){}, icon: Icon(Icons.close)))
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Row(
              children: [
                SizedBox(
                  width: size.width*0.15,
                  child: CircleAvatar()),
                SizedBox(
                  width: size.width*0.65,
                  child: Column(
                    children: [
                      Text(name,style: TextStyle(
                        fontWeight: FontWeight.bold),),
                      Text(about)
                    ],
                  ),
                ),
                Container(
                  child: TextButton(onPressed: (){}, child: Text('+ Follow',style: TextStyle(color: Colors.blueAccent),)),
                )
              ],
            ),
          
          SizedBox(height: 10,),
          SizedBox(
            
            
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
              child: Text(content),
            ),
          ),
         AspectRatio(
           aspectRatio: 1/1,
            child: Image.asset(
                  'images/$imageName',
                  fit: BoxFit.cover,
                    width: double.infinity,
               ),
                    ),

          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(onPressed: (){}, label: Text('likes',style: TextStyle(color: Colors.black),),icon: Icon(Icons.thumb_up_alt),),
              TextButton.icon(onPressed: (){}, label: Text('comment',style: TextStyle(color: Colors.black),),icon: Icon(Icons.comment),),
              TextButton.icon(onPressed: (){}, label:Text('repost',style: TextStyle(color: Colors.black),),icon: Icon(Icons.loop),),
              TextButton.icon(onPressed: (){}, label: Text('send',style: TextStyle(color: Colors.black),),icon: Icon(Icons.send),)
            ],
          )
        ],
      ) ,
    );
  }
}