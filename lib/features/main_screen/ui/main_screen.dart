import 'package:flutter/material.dart';
import 'package:timetable_ugrasu/features/setting/ui/setting_screen.dart';
import 'package:timetable_ugrasu/features/timetable/ui/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _rootBody(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon:Icon(Icons.settings_outlined,),label: "Учебный План"),
        BottomNavigationBarItem(icon:Icon(Icons.settings_outlined),label: "Расписание"),
        BottomNavigationBarItem(icon:Icon(Icons.settings_outlined),label: "Настройки"),

      ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Theme.of(context).,
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget _rootBody(int selectedIndex){
    switch(selectedIndex){
      case 0:
        return Center(child: Text("Скоро будет",style: Theme.of(context).textTheme.displayLarge,));
      case 2:
        return SettingScreen();
      default:
        return SearchScreen();
    }

  }
}

