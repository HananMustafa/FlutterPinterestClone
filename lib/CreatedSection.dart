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
          Text('Inspire with a Pin'),
          ElevatedButton(onPressed: () {}, 
          child: Text('Create')),
        ],),
      ),),
    );



  }}