// lib/core/models/usuario.dart
class Usuario {
final int id;
final String nome;
final String email;
String? senha;

Usuario({
this.id = 0,
required this.nome,
required this.email,
this.senha,
});

factory Usuario.fromJson(Map<String, dynamic> json) {
return Usuario(
id: json['id'] ?? 0,
nome: json['nome'] ?? '',
email: json['email'] ?? '',
);
}

Map<String, dynamic> toJson() {
return {
'nome': nome,
'email': email,
'senha': senha,
};
}
}