import 'package:flutter/material.dart';

void main() {
  runApp(RoletaApp());
}

class RoletaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roleta 3.0',
      theme: ThemeData.dark(),
      home: RoletaHome(),
    );
  }
}

class RoletaHome extends StatelessWidget {
  final List<int> numerosFortes = [7, 12, 23, 34, 15, 9, 27, 18];
  final String melhorEstrategia = "Vizinhos";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Roleta 3.0"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Números mais fortes:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: numerosFortes.map((n) =>
                Chip(label: Text(n.toString(), style: TextStyle(fontSize: 18)))
              ).toList(),
            ),
            SizedBox(height: 30),
            Text("Estratégia sugerida:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              melhorEstrategia,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
