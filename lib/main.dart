import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppDev Unit 4'), // Change this to your full name
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 6, 72, 125),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('lib/assets/profile.png'), // Replace with your profile picture path
                ),
                SizedBox(width: 16),
                Text(
                  'PATRICK JOSEPH N. NAPUD', // Change this to your full name
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 24),
            // Information Section
            Column(
              children: [
                InfoRow(
                  icon: Icons.email,
                  title: 'Email',
                  data: 'patrickjoseph.napud@wvau.edu.ph', // Replace with your email
                ),
                InfoRow(
                  icon: Icons.phone,
                  title: 'Phone',
                  data: '09928758404', // Replace with your phone number
                ),
                InfoRow(
                  icon: Icons.location_city,
                  title: 'Location',
                  data: 'Brgy. Damilisan, Miagao, Iloilo', // Replace with your location
                ),
                InfoRow(
                  icon: Icons.school,
                  title: 'Education',
                  data: 'West Visayas State Univerity, BS Computer Science', // Replace with your education
                ),
                InfoRow(
                  icon: Icons.star,
                  title: 'Hobbies',
                  data: 'Sleeping, Singing, Playing Video Games, Watching Documentaries, Eating', // Replace with your hobbies
                ),
              ],
            ),
            SizedBox(height: 32),
            // Biography Section
            Text(
              'My Biography',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'I am Patrick Joseph N. Napud, currently pursuing my Bachelor’s Degree in Computer Science at West Visayas State University. I hail from Brgy. Damilisan, Miagao, Iloilo. I enjoy indulging in various hobbies like sleeping, singing, playing video games, and watching documentaries. My passion for technology drives me to continuously learn and grow in the field of computer science, while balancing it with my love for good food and enriching life experiences.', // Replace with your biography
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}


//InfoRow Custom Widget
class InfoRow extends StatelessWidget{
  final IconData icon;
  final String title;
  final String data;

   InfoRow({required this.icon, required this.title, required this.data});

   @override
   Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Icon(icon, size: 24),
        SizedBox(width: 16),
        Text(
          '$title: ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Expanded(child: Text(data, style: TextStyle(fontSize: 16),overflow: TextOverflow.ellipsis),
        ),
      ],
      ),
    );
   }
}
