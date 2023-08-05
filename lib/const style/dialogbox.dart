import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/const%20style/colors.dart';

class MyDialogBox {
   
  const MyDialogBox();
  static void _showDialog(BuildContext context,String text,String Title,String? phone , Function ontab1,Function ontab2){
  showDialog(
    context: context, 
    builder: (BuildContext context) => 
    AlertDialog(
      title: 
          Text(Title),
            // "We will be verifying the phone number \n $phone",),
          // Text("Is this Ok ow would you like to edit the number?")
        
      content:Text(text),
      actions:<Widget>[
        TextButton(
          onPressed:(){ ontab1();},
        child:Text("Ok",style:TextStyle(color:theme,))),

        TextButton(
          onPressed:(){ontab2();},
        child:Text("Edit",style:TextStyle(color:theme,)))
      ]



    ));}
}