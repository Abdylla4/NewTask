import 'package:agsam/view/newPlanAdd.dart';
import 'package:agsam/view/workers.dart';
import 'package:agsam/view/programmLanguages.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Newplanadd()),
          );
        },
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Container(
                    child: DrawerHeader(
                      child: Image(
                        image: AssetImage('assets/Lott/Amination.gif'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.people),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Workers()),
                      );
                    },
                    title: Text(
                      'Workers',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 5),
                  ListTile(
                    leading: Icon(Icons.code),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Programmlanguages(),
                        ),
                      );
                    },
                    title: Text(
                      'Program languages',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    onTap: () {},
                    title: Text(
                      'Settings',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Image(image: AssetImage('assets/Lott/Amination.gif')),
        //  Text(
        //   'Task Manager',
        //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        // ),
      ),
      body: Center(
        child: Text(
          'No added the Program yet',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
