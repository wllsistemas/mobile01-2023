import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final String parametro;

  const Page3({
    required this.parametro,
  });

  @override
  Widget build(BuildContext context) {
    String argumento = '';
    if (ModalRoute.of(context)?.settings.arguments != null) {
      argumento = ModalRoute.of(context)?.settings.arguments as String;
    }

    String recebido =
        (argumento != null && !argumento.isEmpty) ? argumento : this.parametro;
    // String recebido = argumento ?? this.parametro;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Recebeu via ' + recebido),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Pop - Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
