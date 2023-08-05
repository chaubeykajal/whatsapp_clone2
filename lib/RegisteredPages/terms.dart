import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/RegisteredPages/verify.dart';
import 'package:whatsapp_clone2/const%20style/colors.dart';
import 'package:whatsapp_clone2/const%20widgets/textwidget.dart';


class conditionsPage extends StatefulWidget{

   const conditionsPage({super.key});

  @override
  State<conditionsPage> createState() => _conditionsPageState();
}


class _conditionsPageState extends State<conditionsPage> {

  @override
  Widget build(BuildContext context) {
    var mq= MediaQuery.of(context).size;
    return Scaffold(

      body:Stack(
        children: [
          Center(
            child: Container(
              height:550,
              width:280,
              decoration: BoxDecoration(color:theme,borderRadius:BorderRadius.circular(20)),
              child:Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/whatsapp.png",height:35,width:35)
                    ,SizedBox(height:20,),
                    customtext("Welcome to WhatsApp",Colors.black, 20,FontWeight.bold),
                  ],
                ),
              )
            ),
          ),

          Positioned(
            top:250,
            left:30,
            child: Container(
              height:380,
              width:320,
              decoration: BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(20),
              boxShadow:[BoxShadow(blurRadius: 17.0,color: Colors.grey)] ),
              child:Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    customtext("1. Terms & Privacy",theme,20,FontWeight.bold),
                    SizedBox(height:30),
                    customtext("Tap 'Agree and continue' to accept the Whatsapp Terms of Services and Privacy Policies." , Colors.black,17 ,FontWeight.normal),
                    SizedBox(height:50 ,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: theme),
                      onPressed:(){Navigator.push(context,MaterialPageRoute(builder:(context) => verifynumber(),));}, 
                      child:customtext("Agree and Continue",Colors.white, 17,FontWeight.bold))
              
                ]),
              )
            ),
          )
        ],
      )



    );}


}