```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaComidas(),
    );
  }
}

class TelaComidas extends StatelessWidget {
  const TelaComidas({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> comidas = [
      'Pizza',
      'Hambúrguer',
      'Lasanha',
      'Sushi',
      'Strogonoff',
      'Feijoada',
      'Churrasco',
      'Pastel',
      'Coxinha',
      'Hot Dog',
      'Macarrão',
      'Escondidinho',
      'Risoto',
      'Tacos',
      'Panqueca',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Comidas'),
      ),
      body: ListView.builder(
        itemCount: comidas.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.restaurant),
            title: Text(comidas[index]),
          );
        },
      ),
    );
  }
}
```