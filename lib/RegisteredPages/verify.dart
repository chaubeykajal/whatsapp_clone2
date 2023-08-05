import 'package:flutter/material.dart';
import 'package:whatsapp_clone2/const%20style/colors.dart';
import 'package:whatsapp_clone2/const%20style/dialogbox.dart';
import 'package:whatsapp_clone2/const%20widgets/textwidget.dart';
import 'package:whatsapp_clone2/screens/chat_screen.dart';

import '../const widgets/dropdown.dart';

class verifynumber extends StatefulWidget{

   const verifynumber({super.key});

  @override
  State<verifynumber> createState() => _verifynumberState();
}


class _verifynumberState extends State<verifynumber> {

  List<String> countries=<String>['India','Brazil','Indonesia','Mexico','Russia','Turkey','Pakistan','Egypt','USA','Bangladesh','Philipins','Nigeria','vietnam','South Africa','Saudi Arabia','Mayalsia','Germany','Itali',
'UK'  ];
  List<String>c_code=['+91','+55','+62','+52','+7','+90','+92','+20','+1','+880','+63','+234','84','27','+966','+60','+49','+49','+39','+44'];
  String selected_country="USA";
  String  selected_code="+91";
  var phone_num="";

 
  


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
                    Image.asset("images/whatsapp.png",height:35,width:35),
                    
                  ],
                ),
              )
            ),
          ),

          Positioned(
            top:210,
            left:30,
            child: Container(
              height:450,
              width:320,
              decoration: BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(20),
              boxShadow:[BoxShadow(blurRadius: 17.0,color: Colors.grey)] ),
              child:Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    customtext("2. Verify your phone number",theme,20,FontWeight.bold),
                    SizedBox(height:30),
                    Center(child: customtext("Tap Whatsapp will send  SMS message to verify your phone number." , Colors.black,17 ,FontWeight.normal)),
                    customtext("Enter your country code and phone number" , Colors.black,17 ,FontWeight.bold),

                    SizedBox(height:30),

                    Container(
                      height:40,
                      width:mq.width,
                      decoration:const BoxDecoration(color:Colors.white,
                        boxShadow:[BoxShadow(blurRadius: 17.0,color: Color.fromARGB(244, 158, 158, 158))] ),
                      child:Padding(padding:const  EdgeInsets.symmetric(horizontal:10.0),
                        child:DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value:selected_country,
                            isExpanded:true,                         
                            onChanged: (String? value) {
                              setState((){selected_country=value!;});
                            },
                            items: countries.map<DropdownMenuItem<String>>(
                              (String data) {
                                return DropdownMenuItem<String>(
                                  value: data,
                                  child: Text(data),
                                  );
                              },
                            ).toList(),
                        
                          ),
                        )                      ),
                        
                    ),

                    SizedBox(height:20 ,),

                    Row(
                        children: [
                          Container(
                            height: 40,
                            width:80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(blurRadius: 17.0, color: Color.fromARGB(244, 158, 158, 158))],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: DropdownButton<String>(
                              value: selected_code,
                              onChanged: (newValue) {
                                setState(() {
                                  selected_code = newValue!;
                                });
                              },
                              items:
                                c_code.map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                ),
                              )
                                  .toList(),
                            ),
                                                ),
                          ),
                          Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [BoxShadow(blurRadius: 17.0, color: Color.fromARGB(244, 158, 158, 158))],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: TextField(
                                onChanged: (value) => phone_num=value,
                                decoration:InputDecoration(border:InputBorder.none,
                                hintText: "phone number"),
                              ),
                            ),
                          ),
                        ],
                      ),

                    SizedBox(height:50 ,),
                    ElevatedButton(

                      style: ElevatedButton.styleFrom(backgroundColor: theme),
                      onPressed:(){
                        if (phone_num==""){
                          print("You have't enter your number");
                        }
                        
                        else{
                          showDialog(
    context: context, 
    builder: (BuildContext context) => 
    AlertDialog(
      title: 
          Text("We will be verifying the phone number \n $selected_code$phone_num",),
          
        
      content:Text("Is this Ok ow would you like to edit the number?"),
      actions:<Widget>[
        TextButton(
          onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>verifynumber() ));},
        child:Text("EDIT",style:TextStyle(color:theme,))),

        TextButton(
          onPressed:(){Navigator.push(context, MaterialPageRoute(builder:(context)=>chat_screen()));},
        child:Text("OK",style:TextStyle(color:theme,)))
      ]



    ));
                          print("you have succefully signup");}
                      }, 
                      child:customtext("Next",Colors.white, 17,FontWeight.bold))
              
                ]),
              )
            ),
          )
        ],
      )



    );}


}