import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ChannelHomePage(),
      },
    );
  }
}

class ChannelHomePage extends StatelessWidget {
  const ChannelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aur Channel'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Channel Logo Placeholder
            CircleAvatar(
              radius: 60,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Text(
                'A',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Channel Name
            Text(
              'Aur',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
            ),
            const SizedBox(height: 10),
            // Category
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'People & Blogs • Knowledge',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Colors.grey[800],
                    ),
              ),
            ),
            const SizedBox(height: 30),
            // Description Card
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'About Channel',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Namaste dosto! Welcome to "Aur".\n\n'
                      'Yahan hum layenge aapke liye behtareen Vlogs, logon ki anokhi kahaniyan aur Knowledge se bhare videos.\n\n'
                      'Har video mein kuch naya seekhne, janne aur explore karne ke liye jude rahein "Aur" ke saath. Humara maqsad hai aap tak sahi jankari aur manoranjan pahunchana.\n\n'
                      'Subscribe karein aur hamari journey ka hissa banein!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Action Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: FilledButton.icon(
                onPressed: () {
                  // Placeholder for subscribe action
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Subscribed to Aur!')),
                  );
                },
                icon: const Icon(Icons.notifications_active),
                label: const Text(
                  'Subscribe Now',
                  style: TextStyle(fontSize: 18),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.red, // YouTube red style
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
