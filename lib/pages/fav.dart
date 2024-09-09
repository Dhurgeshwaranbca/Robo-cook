import 'package:flutter/material.dart';

class HoneyPancakePage extends StatelessWidget {
  const HoneyPancakePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Honey Pancake Recipe'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'How to Make Honey Pancakes at Home',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Ingredients:\n- 1 cup flour\n- 1 egg\n- 1/2 cup milk\n- 2 tbsp honey\n- 1 tsp baking powder\n- Pinch of salt',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Instructions:\n1. Mix the flour, baking powder, and salt together.\n2. Add the egg, milk, and honey, and stir until smooth.\n3. Pour the batter into a hot pan and cook until golden brown.\n4. Serve with more honey and enjoy!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CanaieBreadPage extends StatelessWidget {
  const CanaieBreadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Canaie Bread Recipe'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'How to Make Canaie Bread at Home',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Ingredients:\n- 3 cups flour\n- 1 packet yeast\n- 1 cup warm water\n- 1 tbsp sugar\n- 2 tbsp olive oil\n- 1 tsp salt',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Instructions:\n1. Dissolve yeast in warm water and add sugar.\n2. Mix flour and salt in a bowl.\n3. Add the yeast mixture and olive oil, then knead until smooth.\n4. Let the dough rise for 1 hour.\n5. Shape the dough into loaves and bake at 375°F for 25-30 minutes.\n6. Enjoy your fresh Canaie bread!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
