import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elementos básicos',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          "Elementos básicos",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 173, 127, 142),
          child: Column(
            children: [


              Container(
                height: 150,
                width: double.infinity,
                color: Colors.pink,
                alignment: Alignment.center,
                child: const Text(
                  "Imagen de usuario",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Inicio
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromARGB(255, 248, 195, 212),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text("Inicio", style: TextStyle(fontSize: 16)),
              ),
              Container(height: 2, color: const Color.fromARGB(255, 12, 12, 12)),

              // Perfil
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromARGB(2255, 248, 195, 212),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text("Perfil", style: TextStyle(fontSize: 16)),
              ),
              Container(height: 2, color: const Color.fromARGB(255, 0, 0, 0)),

              // Ajustes
              Container(
                height: 60,
                width: double.infinity,
                color: const Color.fromARGB(2255, 248, 195, 212),
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text("Ajustes", style: TextStyle(fontSize: 16)),
              ),
              Container(height: 2, color: const Color.fromARGB(255, 0, 0, 0)),
            ],
          ),
        ),
      ),


      body: Column(
        children: [


          Container(
            height: 200,
            child: Row(
              children: [

                Container(width: 50, color: Colors.yellow),

                Expanded(child: Container(color: Colors.red)),

                Container(width: 50, color: Colors.blue),
              ],
            ),
          ),


          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.cyan,
              child: const Center(
                child: Text(
                  "contenido",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}