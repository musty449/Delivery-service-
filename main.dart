
import 'package:flutter/material.dart';
import 'package:deliveryapp/home_page.dart';
import 'package:deliveryapp/order_tracking_page.dart';
import 'package:deliveryapp/profile_page.dart';
// import 'package:deliveryapp/google_map.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Kaduna Delivery",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    OrderTrackingPage(),
    ProfilePage(),
  ];

  void _onItemTapped (int index) {
    setState(() {
      _selectedIndex = index;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        title: Text('Kaduna Delivery'), 
      appBar: AppBar(
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            //  BottomNavigationBarItem(
            //   icon: Icon(Icons.access_alarms),
            //   label: 'Order Alerts'
            //   ),
            BottomNavigationBarItem(
              icon: Icon(Icons.track_changes),
              label: 'Track Orders'
            ),
              //  BottomNavigationBarItem(
              // icon: Icon(Icons.payment),
              // label: 'Payment History'
              // ),
              
               BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
               ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        onTap: _onItemTapped,
        ),
    );
  }
}