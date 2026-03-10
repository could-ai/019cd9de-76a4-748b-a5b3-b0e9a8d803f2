import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '৬ কালেমা',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const KalimaPoemScreen(),
      },
    );
  }
}

class KalimaPoemScreen extends StatelessWidget {
  const KalimaPoemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '৬ কালেমার ছন্দ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.teal.shade50,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.mosque, size: 60, color: Colors.teal),
                const SizedBox(height: 20),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        _buildStanza(
                            "প্রথম কালেমা তায়্যিবা, পাক-পবিত্র নাম,\nআল্লাহ ছাড়া মাবুদ নাই, নবীজির মাকাম।"),
                        _buildDivider(),
                        _buildStanza(
                            "দ্বিতীয় কালেমা শাহাদাত, সাক্ষ্য আমি দিই,\nএক আল্লাহ, নবী তাঁর—এই কথাটিই নিই।"),
                        _buildDivider(),
                        _buildStanza(
                            "তৃতীয় কালেমা তামজীদ, প্রভুর গুণগান,\nতাঁর মহিমায় পূর্ণ জগৎ, তিনিই মেহেরবান।"),
                        _buildDivider(),
                        _buildStanza(
                            "চতুর্থ কালেমা তাওহীদ, একত্ববাদ মানি,\nঅদ্বিতীয় আল্লাহ তায়ালা, সর্বশক্তিমান তিনি।"),
                        _buildDivider(),
                        _buildStanza(
                            "পঞ্চম কালেমা আস্তাগফার, পাপের ক্ষমা চাই,\nতওবা করে প্রভুর কাছে, রহমতেরই ছাই।"),
                        _buildDivider(),
                        _buildStanza(
                            "ষষ্ঠ কালেমা রদ্দে কুফর, অবিশ্বাসকে ছাড়ি,\nঈমানেরই শক্ত রশিতে, জীবন তরী গড়ি।"),
                        _buildDivider(),
                        _buildStanza(
                            "ছয় কালেমার এই আলোতে, হৃদয় হোক সাফ,\nরোজ হাশরে আল্লাহ যেন, করেন মোদের মাফ।",
                            isFinal: true),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStanza(String text, {bool isFinal = false}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        height: 1.6,
        color: isFinal ? Colors.teal.shade800 : Colors.black87,
        fontWeight: isFinal ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Icon(Icons.star_border, size: 16, color: Colors.teal.shade200),
    );
  }
}
