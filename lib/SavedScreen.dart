import 'package:flutter/material.dart';
import 'package:flutterpinterestclone/HomeScreen.dart';
import 'package:flutterpinterestclone/ProfileScreen.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});
  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
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
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure the Column takes full width
        children: [
          Container(
            padding: const EdgeInsets.all(16.0), // Add horizontal padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ensure space between Text and Button
              children: [
                Text('Unorganized ideas', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 236, 236, 236), // Set the background color to light grey
                  ),
                  child: Text('Organize'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust the horizontal padding if needed
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two images per row
                  crossAxisSpacing: 8.0, // Spacing between the columns
                  mainAxisSpacing: 8.0, // Spacing between the rows
                  childAspectRatio: 1.0, // Keep this to maintain the square grid cells
                ),
                itemCount: imageList.length, // Number of images
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          imageList[index], // Use the asset image path from the list
                          fit: BoxFit.cover, // Ensure the image fills the container
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: InkWell(
                            onTap: () {
                              // Handle the tap event
                            },
                            child: const Icon(
                              Icons.more_horiz,
                              color: Colors.white, // Optional: change icon color for visibility
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: 40,
              color: Color.fromRGBO(54, 54, 54, 1),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(title: 'Profile Screen')));
              },
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/img1.jpg'),
                  radius: 9,
                ),
              ),
            ),
            label: '',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
