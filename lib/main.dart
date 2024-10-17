import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MidtermExam(),
    );
  }
}

class MidtermExam extends StatefulWidget {
  @override
  _MidtermExamState createState() => _MidtermExamState();
}

class _MidtermExamState extends State<MidtermExam> {
  final List<String> items = [
    'Father Efren',
    'Brother Yuichi',
    'Kuya Louie',
    'Nikko Baby',
    'Ateh Dimple',
    'Axcel Rose'
  ];
  List<bool> addedItems = List.filled(10, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Japhet_Castanares_Midterm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: addedItems[index] ? Colors.green[200] : Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        items[index],
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print('Details of ${items[index]}');
                          },
                          child: const Text('Details'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              addedItems[index] = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: addedItems[index]
                                  ? Colors.green
                                  : Colors.blue),
                          child: Text(
                            addedItems[index] ? 'Added' : 'Add',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
