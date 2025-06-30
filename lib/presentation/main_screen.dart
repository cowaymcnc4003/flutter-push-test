import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final int currentSelected;
  final Widget child;
  final void Function(int?) onDestinationSelected;
  

  const MainScreen({
    super.key,
    required this.currentSelected,
    required this.child,
    required this.onDestinationSelected,
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentSelected,
        onDestinationSelected: onDestinationSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.accessibility), label: 'home'),
          NavigationDestination(icon: Icon(Icons.message), label: 'push'),
        ],
      ),
    );
  }
}
