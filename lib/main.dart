import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Person{
  String? name, sexe;
  int? age, size;
  Person({
    this.age,
    this.size,
    this.name,
    this.sexe,
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Person> list_people = [
      Person(name: "Papa",sexe: 'M', age: 45, size: 120),
      Person(name: "Maman",sexe: 'F', age: 41, size: 100),
      Person(name: "Karim",sexe: 'M', age: 21, size: 90),
      Person(name: "Kassim",sexe: 'M', age: 21, size: 90),
      Person(name: "Kenza",sexe: 'F', age: 16, size: 75),
      Person(name: "Ilham",sexe: 'F', age: 8, size: 40),
      Person(name: "Ikram",sexe: 'F', age: 7, size: 40),
      Person(name: "Siham",sexe: 'F', age: 6, size: 20),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('My Applicaton'),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert)
            )
          ],
        ),

        body: ListView(
          children: [
            ...list_people.map((e) =>
                ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage('images/pilier.jpg'),),
                  title: Text(e.name.toString()),
                  subtitle: Text(
                    'Age: ' + e.age.toString() + ', Taille: ' + e.size.toString() + ', Sexe: ' + e.sexe.toString()
                  ),
                )
            ).toList()
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: (){},
          child: Icon(Icons.add),
        ),

        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.yellow,
          selectedIndex: 1,
          destinations: const <NavigationDestination>[
            NavigationDestination(
                icon: Icon(Icons.phone),
                label: 'Appel',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat),
              label: 'chat',
            ),
            NavigationDestination(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),

      ),
    );
  }
}
