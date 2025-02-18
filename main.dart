import 'package:flutter/material.dart';
import 'page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume Page',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const ResumePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> teamMembers = [
      {
        'name': 'Mervin Magat',
        'designation': 'Software Developer',
        'address': 'San Nicolas Arayat Pampanga',
        'phone': '9872136',
        'email': 'Mervin@example.com',
        'image': 'https://picsum.photos/250?image=1',
      },
      {
        'name': 'Bernard Mangulabnan',
        'designation': 'UI/UX Designer',
        'address': 'San Luis Pampanga',
        'phone': '213678943',
        'email': 'Bernard@example.com',
        'image': 'https://picsum.photos/250?image=36',
      },
      {
        'name': 'Renz Samson',
        'designation': 'DevOps Engineer',
        'address': 'San Isidro Sta Ana Pampanga',
        'phone': '8-7000',
        'email': 'Renz@example.com',
        'image': 'https://picsum.photos/250?image=13',
      },
      {
        'name': 'Steven Lising',
        'designation': 'Data Scientist',
        'address': 'San Luis Pampanga',
        'phone': '911',
        'email': 'Steven.johnson@example.com',
        'image': 'https://picsum.photos/250?image=45',
      },
      {
        'name': 'Paul Vismonte',
        'designation': 'Full Stack Developer',
        'address': 'San Luis Pampanga',
        'phone': '*123#',
        'email': 'Paul.lee@example.com',
        'image': 'https://picsum.photos/250?image=39',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            tooltip: 'Information',
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return InfoPage(teamMembers: teamMembers);
                },
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: const [
          ResumeCard(
            name: 'Mervin Magat',
            designation: 'Software Developer',
            address: 'San Nicolas Arayat Pampanga',
            phone: '9872136',
            email: 'Mervin@example.com',
            image: 'https://picsum.photos/250?image=1',
          ),
          ResumeCard(
            name: 'Bernard Mangulabnan',
            designation: 'UI/UX Designer',
            address: 'San Luis Pampanga',
            phone: '213678943',
            email: 'Bernard@example.com',
            image: 'https://picsum.photos/250?image=36',
          ),
          ResumeCard(
            name: 'Renz Samson',
            designation: 'DevOps Engineer',
            address: 'San Isidro Sta Ana Pampanga',
            phone: '8-7000',
            email: 'Renz@example.com',
            image: 'https://picsum.photos/250?image=13',
          ),
          ResumeCard(
            name: 'Steven Lising',
            designation: 'Data Scientist',
            address: 'San Luis Pampanga',
            phone: '911',
            email: 'Steven.johnson@example.com',
            image: 'https://picsum.photos/250?image=45',
          ),
          ResumeCard(
            name: 'Paul Vismonte',
            designation: 'Full Stack Developer',
            address: 'San Luis Pampanga',
            phone: '*123#',
            email: 'Paul.lee@example.com',
            image: 'https://picsum.photos/250?image=39',
          ),
        ],
      ),
    );
  }
}

class ResumeCard extends StatelessWidget {
  final String name;
  final String designation;
  final String address;
  final String phone;
  final String email;
  final String image;

  const ResumeCard({
    Key? key,
    required this.name,
    required this.designation,
    required this.address,
    required this.phone,
    required this.email,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    designation,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(address),
                  Text(phone),
                  Text(email),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}