import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // строка убирающая debug
      home: Scaffold(
        appBar: AppBar(title: Text("Практика номер 3"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Приветствую пользователя",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: Text("Начать"),
              ), // () {} заглушка
              SizedBox(height: 30),
              Container(
                width: 200,
                height: 340,
                color: const Color.fromARGB(255, 39, 161, 55),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.lock,
                    color: const Color.fromARGB(255, 47, 9, 202),
                  ),
                  Icon(
                    Icons.settings,
                    color: const Color.fromARGB(255, 191, 215, 8),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
