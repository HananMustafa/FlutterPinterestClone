import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.title});
  final String title;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}



class _ProfileScreenState extends State<ProfileScreen> {



@override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        iconTheme: IconThemeData(
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.share, color: Colors.black,)),
        ]
      ),


      body: Center(
        child: Column(children: [



          //Profile Picture
          CircleAvatar(
            radius: 50, // Adjust the radius as needed
            backgroundImage: AssetImage('assets/images/img1.jpg'), // Load the image from assets
          ),

          Text('Hanan Mustafa'),

          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.logo_dev)),
            Text('Hanan Mustafa'),
          ],),

          Row(children: [
            //Follower Digit
            Text('0'),
            Text(' followers'),
            Text(' . '),
            Text('0'),
            Text(' following'),
          ],),

          ElevatedButton(onPressed: () {}, child: Text('Edit Profile')),

        ],)
  
),



    );}}