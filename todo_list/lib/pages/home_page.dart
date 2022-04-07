import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _inputUsuario = TextEditingController();
  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List Simples"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              TextField(
                controller: _inputUsuario,
              ),
              Container(
                height: 400,
                child: ListView.builder(
                    itemCount: tarefas.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onLongPress: () {
                          setState(() {
                            tarefas.removeAt(index);
                          });
                        },
                        title: Text(tarefas[index]),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              if (_inputUsuario.text.isNotEmpty) {
                setState(() {
                  tarefas.add(_inputUsuario.text);
                  print(tarefas);
                });
                print(_inputUsuario.text);
              }
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                tarefas = [];
              });
            },
          ),
        ],
      ),
    );
  }
}
