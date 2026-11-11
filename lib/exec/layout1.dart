import 'package:flutter/material.dart';

class MyWidget1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Strawberry Pavlova Prototype',
      theme: ThemeData(
        fontFamily: 'Georgia',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: PavlovaCard(),
          ),
        ),
      ),
    );
  }
}
class PavlovaCard extends StatelessWidget {
  const PavlovaCard({super.key});

  @override
  Widget build(BuildContext context) {
    // Left Column: Text & Details
    final leftColumn = Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1. Title
          const Text(
            'Strawberry Pavlova',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              letterSpacing: 0.5,
              fontSize: 22,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
  
// 2. Description
          Text(
            'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
            'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),

          // 3. Ratings Row
          _buildRatingRow(),
          const SizedBox(height: 20),

          // 4. Icon List Row (Prep, Cook, Feeds)
          _buildIconListRow(),
        ],
      ),
    );

    // Main Card Row (Left Column + Right Image)
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left Column Section
            Expanded(
              flex: 5,
              child: leftColumn,
            ),
            // Right Image Section
            Expanded(
              flex: 6,
              child: Image.network(
                'https://images.unsplash.com/photo-1565958011703-44f9829ba187?auto=format&fit=crop&w=800&q=80',
                fit: BoxFit.cover,
                height: 350,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 350,
                  color: Colors.grey.shade200,
                  child: const Center(
                    child: Icon(Icons.cake, size: 64, color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Ratings Helper
  Widget _buildRatingRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            5,
            (index) => const Icon(
              Icons.star,
              color: Colors.black87,
              size: 18,
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  // Prep/Cook/Feeds Helper
  Widget _buildIconListRow() {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
        fontSize: 11,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildInfoItem(Icons.kitchen, 'PREP:', '25 min'),
          _buildInfoItem(Icons.timer_outlined, 'COOK:', '1 hr'),
          _buildInfoItem(Icons.restaurant, 'FEEDS:', '4-6'),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.green.shade700, size: 22),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(letterSpacing: 0.5)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.normal)),
      ],
    );
  }
}