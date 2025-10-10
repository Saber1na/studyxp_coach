import 'dart:convert';
import 'package:flutter/foundation.dart'; // Importa kIsWeb
import 'package:http/http.dart' as http;
import 'package:studyxp_coach/core/models/usuario.dart';

class ApiService {
  // --- DEFINIÇÃO INTELIGENTE DA URL BASE ---
  // Se o app estiver rodando na Web, usa 'localhost'.
  // Se estiver rodando em mobile (Android/iOS), usa o IP específico para o emulador.
  final String _baseUrl = kIsWeb ? "http://localhost:8080/api" : "http://10.0.2.2:8080/api";

  Future<Usuario> registrar(Usuario novoUsuario) async {
    try {
      final response = await http.post(
        Uri.parse('$_baseUrl/auth/register'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(novoUsuario.toJson()),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Usuario.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
      } else {
        throw Exception('Falha ao registrar. Status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Não foi possível conectar ao servidor. Verifique sua conexão e se o backend está rodando.');
    }
  }
}