import 'package:flutter/material.dart';
import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/category_icon.dart';

class categoryList extends StatelessWidget {
  final String buttonName;
  final List<ItemModel> items;

  categoryList({super.key, required this.buttonName, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(buttonName),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ExpansionTile(
              leading: ClipOval(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: buildCategoryIcon(item.itemIconPath),
                ),
              ),
              title: Text(item.name),
              subtitle: Text(
                'Tap to expand',
                style: TextStyle(color: Colors.grey[600]),
              ),
              children: <Widget>[
                Container(
                  color: Colors.grey.withOpacity(0.1), // Light background color with opacity
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        spacing: 15.0, // Gap between chips
                        runSpacing: 10.0, // Gap between lines of chips
                        children: item.ingredients.map((ingredient) {
                          return AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                            padding: const EdgeInsets.symmetric(horizontal: 7.0),
                            child: Chip(
                              label: Text(ingredient),
                              backgroundColor: _getRandomColor(),
                              elevation: 4.0, // Shadow for depth
                              padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 10.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Instructions:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ...item.instructions
                          .split('.')
                          .map((instruction) => instruction.trim())
                          .where((instruction) => instruction.isNotEmpty)
                          .map(
                            (instruction) => Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("• "),
                                  Expanded(child: Text(instruction)),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      const SizedBox(height: 20),
                      const Text(
                        "Reference Video:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            _launchURL(context, item.referenceUrl);
                          },
                          child: const Text("Watch Video"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Color _getRandomColor() {
    final List<Color> colors = [
      const Color.fromARGB(255, 216, 244, 142),
      Colors.blue,
      const Color.fromARGB(255, 155, 249, 158),
      const Color.fromARGB(255, 249, 206, 142),
      const Color.fromARGB(255, 242, 168, 255),
      const Color.fromARGB(255, 255, 246, 168),
      const Color.fromARGB(255, 174, 246, 255),
      const Color.fromARGB(255, 255, 170, 198),
    ];
    colors.shuffle();
    return colors.first;
  }

  void _launchURL(BuildContext context, String url) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Opening: $url"),
      ),
    );
    // You can use url_launcher package to open the URL
  }
}