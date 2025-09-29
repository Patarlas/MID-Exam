import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Reciprocal Colleges',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // Define named routes for easy navigation
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/css': (context) => const CSSPage(),
        '/about': (context) => const AboutSchoolPage(),
      },
    );
  }
}

// --- 1. HOMEPAGE WIDGET ---
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Reciprocal Colleges Portal'),
        backgroundColor: Colors.redAccent,
      ),
      // --- SMALL BACKGROUND: Setting a light background color ---
      backgroundColor: Colors.redAccent.shade100,

      // --- NAVIGATION: The Drawer for the menu ---
      drawer: const AppDrawer(),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.school, size: 80, color: Colors.indigo),
              SizedBox(height: 20),
              Text(
                'Welcome to the School Portal',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Use the menu (three lines top-left) to navigate through the sections.',
                style: TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// --- 2. THE NAVIGATION DRAWER (MENU) ---
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // Drawer Header
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text(
              'Portal Navigation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // Homepage Item
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Homepage'),
            onTap: () {
              // Navigate to the Home page and close the drawer
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          // CSS Page Item
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('CSS'), // Placeholder/Specific Page Name
            onTap: () {
              // Navigate to the CSS page
              Navigator.pushNamed(context, '/css');
            },
          ),
          // About the School Item
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About the School'),
            onTap: () {
              // Navigate to the About School page
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}

// --- 3. CSS PAGE WIDGET ---
class CSSPage extends StatelessWidget {
  const CSSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CSS Section'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.teal.shade50,
      body: const Center(
        child: Text(
          'Content for the CSS section goes here.',
          style: TextStyle(fontSize: 20, color: Colors.teal),
        ),
      ),
    );
  }
}

// --- 4. ABOUT THE SCHOOL WIDGET ---
class AboutSchoolPage extends StatelessWidget {
  const AboutSchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the School'),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.red.shade50,
      body: const Center(
        child: Text(
          'Information about the school and its history.',
          style: TextStyle(fontSize: 20, color: Colors.redAccent),
        ),
      ),
    );
  }
}