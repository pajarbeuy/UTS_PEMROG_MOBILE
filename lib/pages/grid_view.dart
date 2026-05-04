import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        padding: const EdgeInsets.all(20.0),
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(
                    menuTitle: 'Pantai',
                    icon: Icons.beach_access,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.beach_access),
            label: const Text('Pantai'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const MenuPage(menuTitle: 'Gunung', icon: Icons.terrain),
                ),
              );
            },
            icon: const Icon(Icons.terrain),
            label: const Text('Gunung'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const MenuPage(menuTitle: 'Budaya', icon: Icons.museum),
                ),
              );
            },
            icon: const Icon(Icons.museum),
            label: const Text('Budaya'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(
                    menuTitle: 'Kuliner',
                    icon: Icons.restaurant,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.restaurant),
            label: const Text('Kuliner'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const MenuPage(menuTitle: 'Rumah', icon: Icons.home),
                ),
              );
            },
            icon: const Icon(Icons.home),
            label: const Text('Rumah'),
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(
                    menuTitle: 'Mobil',
                    icon: Icons.car_rental,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.car_rental),
            label: const Text('Mobil'),
          ),
        ],
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final String menuTitle;
  final IconData icon;
  const MenuPage({super.key, required this.menuTitle, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuTitle),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(icon),
          label: const Text('Kembali'),
        ),
      ),
    );
  }
}
