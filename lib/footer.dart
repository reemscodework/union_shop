import 'package:flutter/material.dart';
import 'dart:math';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday'
    ];
    final openingHours = <String, String>{};

    for (var day in days) {
      if (day == 'Saturday' || day == 'Sunday') {
        if (random.nextBool()) {
          openingHours[day] = 'Closed';
        } else {
          final openHour = random.nextInt(2) + 10; // 10 or 11 AM
          final closeHour = random.nextInt(3) + 14; // 2, 3, or 4 PM
          openingHours[day] = '${openHour}:00 - ${closeHour}:00';
        }
      } else {
        final openHour = random.nextInt(2) + 9; // 9 or 10 AM
        final closeHour = random.nextInt(2) + 17; // 5 or 6 PM
        openingHours[day] = '${openHour}:00 - ${closeHour}:00';
      }
    }

    return Container(
      width: double.infinity,
      color: Colors.grey[50],
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Union Shop',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Your official student-run store for apparel, accessories, and more.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 48.0,
            runSpacing: 24.0,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quick Links',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/', (route) => false);
                    },
                    child: const Text('Home'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/all_collections');
                    },
                    child: const Text('Collections'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                    },
                    child: const Text('Search'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    child: const Text('About Us'),
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('union-shop@uni.ac.uk'),
                  SizedBox(height: 4),
                  Text('+44 123 456 7890'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Opening Times',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  ...days.map((day) => Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: Text(
                          '$day: ${openingHours[day]}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
