import 'package:flutter/material.dart';

class FaqsPage extends StatelessWidget {
  const FaqsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Center(child: Text('Prajyot Bhoir',style: TextStyle(color: Colors.white,fontSize: 30.0),))
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.question_answer_outlined),
              title: const Text('FAQ'),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(context, '/faqs');
              },
            ),
          ],
        ),
      ),
      body: const MainBody(),
    );
  }
}

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text('This is FAQS page',
          style: TextStyle(
            fontSize: 25.0,
          ),),
      ),
    );
  }
}


