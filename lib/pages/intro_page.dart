import 'package:ecommerce/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                // Logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'images/logo.png',
                    height: 200,
                  ),
                ),
                const SizedBox(height: 50),

                // Title
                const Text(
                  'Just Do It',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),

                // Sub title
                const Text(
                  'Brand new sneakers and custom kicks made with premium quality',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),

                // Button
                MaterialButton(
                  onPressed: () => Navigator.push(
                    (context),
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  ),
                  elevation: 0,
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.black,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
