import 'package:flutter/material.dart';
import 'package:flutterpinterestclone/ProfileScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

final List<String> imageList = [
  'assets/images/img1.jpg',
  'assets/images/img2.jpg',
  'assets/images/img3.jpg',
  'assets/images/img4.jpg',
  'assets/images/img5.jpg',
  'assets/images/img6.jpg',
  'assets/images/img7.jpg',
  'assets/images/img8.jpg',
  'assets/images/img9.jpg',
  'assets/images/img10.jpg',
];



@override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: 30, // Adjust height if necessary
        flexibleSpace: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'All',
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(height: 2), // Spacing between text and line
              Container(
                width: 20,
                height: 2,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),










        body: SingleChildScrollView(
        
        child: Column(
          children: [




            //IMAGES
            SizedBox(
        height: 533, // Adjust the height as needed
        child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust the horizontal padding as needed
  child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Two images per row
      crossAxisSpacing: 8.0, // Spacing between the columns
      mainAxisSpacing: 8.0, // Spacing between the rows
      childAspectRatio: 0.5, // Set the aspect ratio to make the width equal
    ),
    itemCount: imageList.length, // Number of images
    itemBuilder: (context, index) {
      return Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imageList[index], // Use the asset image path from the list
                fit: BoxFit.cover, // Fit the image to the container
              ),
            ),
          ),
          Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              // Handle the tap event
            },
            child: const Icon(
              Icons.more_horiz,),
          ),
        ),
        ],
      );
    },
  ),
)

      ),


            // Component3 (bottom area)
            Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                            color: Color.fromRGBO(54, 54, 54, 1),
                          ),
                          onPressed: () {},
                        ),
                IconButton(
                  icon: const Icon(Icons.sms),
                  onPressed: () {},
                ),




                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen(title: 'Profile Screen')));
                  },
                  child: Container(
                    padding: EdgeInsets.all(2), // Adjust the border thickness
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // Border color
                        width: 2, // Border width
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/img1.jpg'),
                      radius: 9, // Adjust the size of the icon
                    ),
                  ),
                ),
                


                
              ],
            ),),
          ],
        ),
      ),
    );
  }
}