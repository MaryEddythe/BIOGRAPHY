import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {//here naman for header//
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('edith.io',
          style: GoogleFonts.lora(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          ),
          backgroundColor: Color(0xFF008F5A),
        ),

        body: ListView(//for profile and name//
          children: [
            SizedBox(height: 16), 
           Padding(
           padding: EdgeInsets.only(left: 15), 
           child: Text(
           "About Me",
          style: GoogleFonts.poppins(
           fontSize: 15,
           fontWeight: FontWeight.bold,
           ),
          ),
          ),
         SizedBox(height: 16),
            ProfileScreen(),
            SizedBox(height: 16), 
            InformationSection(
              icon: Icons.email, 
              description: 'Email:',
              data: 'maryeddythe.sornito@wvsu.edu.ph',
            ),
            InformationSection(
              icon: Icons.call_end_outlined, 
              description: 'Contact Number:',
              data: '09293871698', 
            ),
            InformationSection(
              icon: Icons.domain_rounded, 
              description: 'University:',
              data: 'West Visayas State University', 
            ),
            InformationSection(
              icon: Icons.home_outlined, 
              description: 'Address:',
              data: 'Arroyo Street, Santa Barbara, Iloilo', 
            ),
            InformationSection(
              icon: Icons.mood_bad_outlined, 
              description: 'Mood:',
              data: 'Tired',
            ),
            
            SizedBox(height: 16),
            BiographySection( //here is for biography section//
              title: 'My Biography',
              content: '''
                The wind blew hard from all directions. Heavy rainstorms poured everywhere .Thunder and lightning ruled the sky. It was during this tempestuous evening that my journey began when Mama experienced her first labor pain. Nearly 24 hours later, a vibrant baby girl came into the world through a cesarean section, and that baby girl is none other than me. I had my first glimpse of the world on June 26, 2002.

                As an eldest child to a middle-aged couple, I enjoyed all the love and privileges which are given to the first child like me. My name itself is the replica of that love, because it is th. combination of my parent’s names. Eduardo and Terry. They christened me Mary Eddythe, th. ‘Mary’ was added as a sign of Mama’s devotion to Virgin Mary, because | was a “high risk” fetus as a consequence of the late marriage of Papa and Mama. 

                Being the firstborn to a middle-aged couple, I was fortunate to bask in all the affection and privileges which are given with the eldest child status. My name itself is a testament to the love between my parents, as it is a combination of their names, Eduardo and Terry. They named me Mary Eddythe, with 'Mary' being a reflection of Mama's devotion to the Virgin Mary, a testament to the high-risk nature of my fetal development due to the late marriage of my parents.

                Kawasaki Syndrome, characterized by coronary artery inflammation and the possibility of hypertension-related complications even in young children, presented a unique medical challenge. Unfortunately, there was no specific treatment for this medical condition. The only solution was to strengthen my immune system, allowing my body to combat the disease. This involved administering eight vials of expensive processed white plasma.

                Furthermore, the medical professional indicated the possibility of me developing distinct behavioral traits due to the characteristics that I transmitted from the plasma donor.
              ''',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget { //profile code ta ni//
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/images/edith.png'), 
        ),
        SizedBox(width: 16),
        Text(
          'Mary Eddythe Sornito',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class InformationSection extends StatelessWidget { //for info ni nga section//
  final IconData icon;
  final String description;
  final String data;

  InformationSection({required this.icon, required this.description, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10), 
          child: Icon(icon),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Center(
            child: Text(
              description,
              style: GoogleFonts.rubik(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            data,
            style: GoogleFonts.poppins(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}


class BiographySection extends StatelessWidget { //biography stateless//
  final String title;
  final String content;

  BiographySection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            content,
            style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
