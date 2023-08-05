

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../const style/colors.dart';
import '../const widgets/textwidget.dart';

class loginpage extends StatefulWidget{

   const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}


class _loginpageState extends State<loginpage> {

 

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
                   Image.asset("images/whatsapp.png",height: 35,width:35),
                    
                  ],
                ),
              )
            ),
          ),

          Positioned(
            top:280,
            left:30,
            child: Container(
              height:450,
              width:320,
              decoration: BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(20),
              boxShadow:[BoxShadow(blurRadius: 17.0,color: Colors.grey)] ),
              child:Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    customtext("Use Whatsapp on other Device",theme,20,FontWeight.bold),
                    SizedBox(height:30),
                    customtext("1. Open Whatsapp on your phone" , Colors.black,17 ,FontWeight.normal),
                    customtext("2. Tap Menu or Setting and select Linked Devices " , Colors.black,17 ,FontWeight.normal),
                    customtext("3. Tap on Link a device  " , Colors.black,17 ,FontWeight.normal),
                    customtext("4. Point your phone to this screen to capture the QR code " , Colors.black,17 ,FontWeight.normal),

                    // SizedBox(height:10),

                    Center(
                      child: Container(
                        height:130,
                        child:QrImageView(
                        data: 'Your QR code data goes here',
                        version: QrVersions.auto,
                        embeddedImage: AssetImage("images/whatsapp_qr2.png"),
                        // embeddedImageStyle: QrEmbeddedImageStyle(size:Size.fromRadius(180)), ),
                        
                      ),
                    )),
                    
                    SizedBox(height:20 ,),
                     Center(
                       child: Container(
                        width: 160,
                         child: ElevatedButton(
                       
                          style: ElevatedButton.styleFrom(backgroundColor: theme, shape: RoundedRectangleBorder(),),
                          onPressed:(){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>const loginpage())
                          );
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(" Successfully Login!")));
                          }, 
                          child:customtext("Next",Colors.white, 17,FontWeight.bold)),
                       ),
                     )
                    
                ]),
              )
            ),
          )
        ],
      )


    );
    
    
}}