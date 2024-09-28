import 'package:esd_project/app/modules/home/home_screen.dart';
import 'package:esd_project/app/modules/login_screen.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _currentIndex = 4; // Indeks untuk halaman Profile

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              // Logika untuk mengedit profil dapat ditambahkan di sini
            },
            child: Text("Edit Profile", style: TextStyle(color: Color(0xff277453))),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info Section
          Container(
            padding: EdgeInsets.all(16),
            color: Color(0xff40A578),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/profile_picture.png'),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Eco Meal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("0 Points", style: TextStyle(color: Colors.white)),
                    Text("0812 3456 7890", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          // Account Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Account", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF277453))),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xFF277453)),
            title: Text("Personal Data", style: TextStyle(color: Color(0xFF277453))),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF277453)),
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Color(0xFF277453)),
            title: Text("PIN & Password", style: TextStyle(color: Color(0xFF277453))),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF277453)),
          ),
          ListTile(
            leading: Icon(Icons.location_on, color: Color(0xFF277453)),
            title: Text("List Address", style: TextStyle(color: Color(0xFF277453))),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF277453)),
          ),

          // Others Section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Others", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF277453))),
          ),
          ListTile(
            leading: Icon(Icons.language, color: Color(0xFF277453)),
            title: Text("Language", style: TextStyle(color: Color(0xFF277453))),
            trailing: Text("ENG", style: TextStyle(color: Color(0xFF277453))),
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Color(0xFF277453)),
            title: Text("Notification", style: TextStyle(color: Color(0xFF277453))),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
              activeColor: Color(0xFF40A578),
            ),
          ),
          ListTile(
            leading: Icon(Icons.help_outline, color: Color(0xFF277453)),
            title: Text("FAQs", style: TextStyle(color: Color(0xFF277453))),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF277453)),
          ),
          ListTile(
            leading: Icon(Icons.phone, color: Color(0xFF277453)),
            title: Text("Contact Us", style: TextStyle(color: Color(0xFF277453))),
            trailing: Icon(Icons.arrow_forward_ios, color: Color(0xFF277453)),
          ),

          Spacer(),
          // Logout Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.white), // Ubah warna ikon menjadi putih
                  SizedBox(width: 8),
                  Text("Log Out", style: TextStyle(color: Colors.white)), // Ubah warna teks menjadi putih
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff40A578), // Ubah warna background menjadi 40A578
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: const Color(0xFF277453),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF40A578),
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color(0xFF277453),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.recycling),
              label: 'eWaste',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.event),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.point_of_sale),
              label: 'Points',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index; // Update current index
              });
              switch (index) {
                case 0:
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                  break;
                // Tambahkan navigasi untuk halaman lainnya jika diperlukan
                case 1:
                  // Navigasi ke eWaste
                  break;
                case 2:
                  // Navigasi ke Events
                  break;
                case 3:
                  // Navigasi ke Points
                  break;
                case 4:
                  // Navigasi ke Profile (sudah di halaman ini)
                  break;
              }
            }
          },
        ),
      ),
    );
  }
}
