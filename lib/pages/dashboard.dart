import 'package:flutter/material.dart';
import 'counter.dart';
import 'widget_bertingkat.dart';
import 'proses_input.dart';
import 'dynamic_list.dart';
import 'navigasi.dart';
import 'grid_view.dart';
import 'tentang_saya.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Track which button is selected
  int? selectedIndex;

  final List<Map<String, dynamic>> projects = [
    {'title': 'Counter'},
    {'title': 'Widget Bertingkat'},
    {'title': 'User Input Example'},
    {'title': 'Dynamic List Example'},
    {'title': 'Navigasi Sederhana'},
    {'title': 'Grid View'},
    {'title': 'Tentang Saya'},
  ];

  final List<Widget> pages = [
    const CounterPage(),
    const WidgetBertingkatPage(),
    const UserInputPage(),
    const DynamicListExample(),
    const FirstPage(),
    const GridViewPage(),
    const TentangSayaPage(),
  ];

  void _navigateToPage(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPorto'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Cek hasil karyaku disini:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  final isSelected = selectedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: ElevatedButton(
                      onPressed: () => _navigateToPage(index),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isSelected
                            ? Colors.deepPurple
                            : Colors.grey[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        minimumSize: const Size.fromHeight(60),
                      ),
                      child: Text(
                        projects[index]['title'],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: isSelected ? Colors.white : Colors.black87,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
