

import 'package:flutter/material.dart';

class MyDropdownScreen extends StatefulWidget {
  @override
  _MyDropdownScreenState createState() => _MyDropdownScreenState();
}

class _MyDropdownScreenState extends State<MyDropdownScreen> {
  List<String>list=['Option 2', 'Option 5', 'Option 3', 'Option 4'];
  String selectedValue = 'Option 2'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown Example')),
      body: Center(
        child: DropdownButton<String>(
          value: selectedValue,
          onChanged: (newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
           items:
            // <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
             list.map<DropdownMenuItem<String>>(
                (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}




//
// import 'package:flutter/material.dart';
//
// Widget dropdownButton(String selected_index , List yourlist,String Dropdownkey ){
//   return DropdownButton<String>(
//                           value:selected_index,
//                           isExpanded:true,
//                           menuMaxHeight: 350,
//                           onChanged: (value)=>{
//                             setState(() {
//                             selected_index=value!;
//                             print(selected_index);
//                           })},
//                           items:[
//                             DropdownMenuItem(
//                               child: Text(Dropdownkey),
//                               value:"",),
//                               ...yourlist.map<DropdownMenuItem<String>>((data){
//                                 return DropdownMenuItem(
//                                   child:Text(data[Dropdownkey]),
//                                   value:data[Dropdownkey],
//
//
//
//                                   );
//                               }).toList()
//                           ]
//                        );
//
// }
//
// setState(Null Function() param0) {
// }