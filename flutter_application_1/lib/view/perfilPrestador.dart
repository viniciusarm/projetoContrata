import 'package:flutter/material.dart';
import '../model/perfilPrestador.dart';

class ProviderDetailsView extends StatefulWidget {
  final Provider provider;

  ProviderDetailsView({required this.provider});

  @override
  _ProviderDetailsViewState createState() => _ProviderDetailsViewState();
}

class _ProviderDetailsViewState extends State<ProviderDetailsView> {
  final _commentController = TextEditingController();
  double _rating = 0;

  void _addComment() {
    if (_commentController.text.isNotEmpty) {
      setState(() {
        widget.provider.comments.add(
          Comment(
            user:
                'Cliente Anônimo', // Ajuste para capturar o nome do usuário, se necessário
            text: _commentController.text,
            rating: _rating,
          ),
        );
      });

      _commentController.clear();
      _rating = 0;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Comentário adicionado com sucesso!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.provider.name),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Especialidade: ${widget.provider.specialty}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Telefone: ${widget.provider.phone}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Avaliações:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: widget.provider.comments.length,
                itemBuilder: (context, index) {
                  final comment = widget.provider.comments[index];
                  return ListTile(
                    title: Text(comment.user),
                    subtitle: Text(comment.text),
                    trailing: Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Text(
              'Deixe um comentário:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: _commentController,
              decoration: InputDecoration(
                hintText: 'Escreva seu comentário',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text('Avaliação:'),
                SizedBox(width: 10),
                DropdownButton<double>(
                  value: _rating,
                  onChanged: (value) {
                    setState(() {
                      _rating = value ?? 0;
                    });
                  },
                  items: List.generate(6, (index) => index.toDouble())
                      .map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text('$value'),
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addComment,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              child: Text('Adicionar Comentário'),
            ),
          ],
        ),
      ),
    );
  }
}
