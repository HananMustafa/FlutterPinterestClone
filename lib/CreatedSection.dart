import 'package:flutter/material.dart';

class CreatedSection extends StatefulWidget {
  const CreatedSection({super.key});
  @override
  State<CreatedSection> createState() => _CreatedSectionState();
}



class _CreatedSectionState extends State<CreatedSection> {



@override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child:Container(
          margin: EdgeInsets.only(top:40),
        child: Column(children: [
          Text('Inspire with a Pin', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 236, 236, 236), // Set the background color to light grey
            ),
            child: Text('Create'),
          ),
        ],),
      ),),
    );



  }}