import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Removed 'const' here
      home: Scaffold(
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.blue.shade200, width: 2),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('ASHLEY NICOLE G. NERIT', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),  ), 
                SizedBox(height: 10),
                Text('INF241 | 3rd Year | BSIT-MWA', style: TextStyle(fontSize: 14), ),
              ],
            ),
          ),
          
        ),
      ),
    );
  }
}