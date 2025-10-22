// lib/main.dart
import 'package:flutter/material.dart';

// Importa nossa nova tela de login
import 'package:studyxp_coach/features/auth/screens/login_screen.dart'; 

void main() {
  runApp(
    // Por enquanto, o Provider não fará nada, mas já deixamos a estrutura pronta
    // ChangeNotifierProvider(
    //   create: (context) => AppProvider(),
    //   child: const MyApp(),
    // ),
    const MyApp(), // Vamos simplificar por enquanto
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyXp Coach',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system, // Por enquanto, usa o tema do sistema
      debugShowCheckedModeBanner: false,
      
      // A tela inicial agora é a LoginScreen
      home: const LoginScreen(),
    );
  }
}