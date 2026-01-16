import 'package:flutter/material.dart';
class HeroWidget extends StatelessWidget {
  final String title;
  final Widget? destination;
  final double height;

  const HeroWidget({
    super.key,
    required this.title,
    this.destination,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isDesktop = size.width >= 600;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 800,
        ), 
        child: GestureDetector(
          onTap: () {
            if (destination != null) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => destination!),
              );
            }
          },
          child: SizedBox(
            width: double.infinity,
            height: isDesktop ? height * 1.2 : height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/bg.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
        
                // Overlay (optional, improves text readability)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
        
                // Title
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isDesktop ? 28 : 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
