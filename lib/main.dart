import 'package:flutter/material.dart';
import 'package:myapp/componentes/jogo_da_velha.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Jogo da Velha';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 5, 172)),
        useMaterial3: true,
      ),
      home: const HomePage(title: titulo),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        //color: const Color.fromARGB(255, 7, 238, 255),
                        // child: const Text('Primeira Coluna'),
                        ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 179, 128, 191),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(121, 0, 0, 0),
                              blurRadius: 15,
                              offset: Offset(9, 8),
                            ),
                          ],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: JogoDaVelha(),
                        )),
                  ),
                  Expanded(
                    child: Container(
                        //alignment: Alignment.center,
                        //color: const Color.fromARGB(255, 7, 238, 255),
                        //child: const Text('Terceira Coluna'),
                        ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  // alignment: Alignment.center,
                  //color: const Color.fromARGB(255, 152, 7, 255),
                  // child: const Text('Layout Inferior'),
                  ),
            ),
          ],
        ),
      ),
     
    );
  }
}
