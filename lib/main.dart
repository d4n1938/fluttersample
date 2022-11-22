import 'package:flutter/material.dart';
import 'package:fluttersample/Pages/Home/home_page.dart';
import 'package:fluttersample/Pages/List/list_page.dart';
// import 'package:fluttersample/Pages/camera_page.dart';
import 'package:fluttersample/Pages/Setting/settings_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  final List<String> _appBarTitle = ['Home', '22', '3', '4', '5'];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  // ナビゲーションのページ
  static final List<Widget> _widgetOptions = [
    const HomePage(),
    const ListPage(),
    const SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle[_selectedIndex]),
        backgroundColor: const Color.fromARGB(255, 48, 48, 48),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: const Color.fromARGB(255, 16, 16, 16),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      // ナビゲーションバーのアイコン設定
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 48, 48, 48),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'list',
            backgroundColor: Color.fromARGB(255, 48, 48, 48),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'settings',
            backgroundColor: Color.fromARGB(255, 48, 48, 48),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 25, 226, 214),
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 48, 48, 48),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Color.fromARGB(255, 237, 237, 237),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.border_all),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.border_all),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardPageView() {
    return SizedBox(
      height: 315,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        children: const <Widget>[
          // CustomCard(),
        ],
      ),
    );
  }
}
