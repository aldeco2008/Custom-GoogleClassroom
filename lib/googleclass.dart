import 'package:flutter/material.dart';

void main() {
  runApp(const Googleclass());
}

class Googleclass extends StatelessWidget {
  const Googleclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF202124),
      ),
      home: const ClassroomScreen(),
    );
  }
}

class ClassroomScreen extends StatelessWidget {
  const ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF202124),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'Google Classroom',
          style: TextStyle(fontSize: 20),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.teal,
            child: const Text(
              'A',
              style: TextStyle(color: Colors.white),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // This Week Section
          Card(
            color: const Color(0xFF282828),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Minggu ini',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Lihat daftar tugas',
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Tidak ada tugas yang perlu dikerjakan dalam waktu dekat',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          // Class Cards
          ClassCard(
            title: 'BI XI RPL 2',
            subtitle: '2024/2025',
            teacher: 'TENRI FARIZATUL WARDA, S.Pd. tenri',
          ),
          const SizedBox(height: 8),
          ClassCard(
            title: 'Produktif XI RPL 2 A.32',
            subtitle: 'Tahun 2024 - 2025',
            teacher: 'Muhamad Arifin',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF424242),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ClassCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String teacher;

  const ClassCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.teacher,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF282828),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage('assets/class_background.png'),
            alignment: Alignment.topRight,
            scale: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                teacher,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}