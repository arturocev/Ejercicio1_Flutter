import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  const Media({super.key, required this.title});

  final String title;

  @override
  State<Media> createState() => _HacerMedia();
}

class _HacerMedia extends State<Media> {
  late TextEditingController _campoTextoNumero;
  int _counter = 0;

  void _CalcularNumeros() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(30)
            child: TextField(
              controller: _campoTextoNumero,
              decoration: const InputDecoration(
                
              ),
            )),
          ],
        ),
      ),

    );
  }
}