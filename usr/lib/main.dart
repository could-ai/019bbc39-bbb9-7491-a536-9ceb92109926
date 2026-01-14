import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aur Channel',
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Aur'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Channel Header Section
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.play_circle_filled,
                        size: 60,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Aur',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'People • Vlogs • Knowledge',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // About Section (Description)
              Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Channel',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Namaste Dosto! Welcome to "Aur". \n\n'
                        'Yahan aapko milenge behtareen Vlogs aur Knowledge se bhare videos. '
                        'Hum explore karenge logon ki kahaniyan, daily life vlogs, aur share karenge dilchasp jankari (facts & education). \n\n'
                        'Nayi cheezein seekhne aur duniya ko janne ke liye abhi judeyn!',
                        style: TextStyle(fontSize: 15, height: 1.4),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Video Categories / Latest Content Placeholder
              Text(
                'Latest Content',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              
              // Mock List of Videos
              _buildVideoItem(
                context,
                title: 'My First Vlog: Introduction',
                category: 'Vlog',
                color: Colors.blue.shade100,
              ),
              _buildVideoItem(
                context,
                title: 'Top 10 Amazing Facts',
                category: 'Knowledge',
                color: Colors.green.shade100,
              ),
              _buildVideoItem(
                context,
                title: 'A Day in My Life',
                category: 'Vlog',
                color: Colors.blue.shade100,
              ),
              _buildVideoItem(
                context,
                title: 'Science Behind Dreams',
                category: 'Knowledge',
                color: Colors.green.shade100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoItem(BuildContext context, {required String title, required String category, required Color color}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: Colors.grey.shade200),
        ),
        leading: Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.video_library, color: Colors.black54),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(category),
        trailing: const Icon(Icons.more_vert),
        onTap: () {
          // Placeholder for video play action
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Playing: $title')),
          );
        },
      ),
    );
  }
}
