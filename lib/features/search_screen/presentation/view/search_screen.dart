import 'package:flutter/material.dart';
import 'package:sambhavtask/features/search_screen/presentation/view/widgets/search_bar_at_search_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBarAtSearchScreen(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Divider(height: 1),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'No Categories Available',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
