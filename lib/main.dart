import 'package:flutter/material.dart';

void main() =>runApp(const MaterialApp(
  home: mycard(),
));

class mycard extends StatefulWidget {

  const mycard({super.key});

  @override
  State<mycard> createState() => _mycardState();
}

class _mycardState extends State<mycard> {

  int level=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('my ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[500],
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white60,
      ),
      backgroundColor: Colors.grey[700],

      body:
      Padding(
        padding : const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,


          children: <Widget>[

            const Center(
              child: CircleAvatar(
                backgroundColor: Colors.yellowAccent,
                backgroundImage: AssetImage('assets/WhatsApp Image 2024-03-17 at 2.13.27 PM.jpeg'),
                foregroundImage: AssetImage('assets/WhatsApp Image 2024-03-17 at 2.13.27 PM.jpeg'),
                radius: 50.0,
              ),
            ),

            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),


            const Text('NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),


            const SizedBox(height: 10.0,),

            Text('Aanish',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 30.0,),


            const Text('LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),


            const SizedBox(height: 10.0,),

            Text('$level',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
              ),
            ),

            const SizedBox(height: 15.0,),


            Row(
              children: <Widget>[
                Icon(Icons.email,
                  color: Colors.blueGrey[800],
                  size: 40.0,
                ),

                const SizedBox(width: 18.0,),
                const Text(
                  'aanish@gmial.com',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


