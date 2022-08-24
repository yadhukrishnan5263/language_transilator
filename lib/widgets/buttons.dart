import 'package:flutter/material.dart';

import 'bottomsheet.dart';

class buttons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
       height: 50,
       child: Row(
         children: [
           Expanded(
             child: GestureDetector(
               child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(8),
                     color: Colors.white12),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(5.0),
                       child: CircleAvatar(
                         backgroundColor: Colors.pink,
                       ),
                     ),
                     SizedBox(width: 5,),
                     Text('Germany')
                   ],
                 ),
               ),
               onTap: (){
                 showModalBottomSheet(
                   shape:RoundedRectangleBorder(borderRadius:BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))) ,
                     context: context, builder: (context){
                   return bottomsheet();
                 });
               },
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.compare_arrows),
           ),
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(8),
                   color: Colors.white12),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(5.0),
                     child: CircleAvatar(
                       backgroundColor: Colors.cyanAccent,
                     ),
                   ),
                   SizedBox(width: 5,),
                   Text('Malayalam')
                 ],
               ),
             ),
           ),
         ],
       ));
  }

}