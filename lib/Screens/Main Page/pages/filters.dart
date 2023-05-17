import 'package:flutter/material.dart';

class FiltersPage extends StatefulWidget {
  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  List<String> _selectedCuisines = [];
  List<String> _selectedMeals = [];
  List<String> _selectedRatings = [];
  List<String> _selectedDietaryRestrictions = [];
  List<String> _selectedPrices = [];

  void _toggleSelection(String value, List<String> selectedList) {
    setState(() {
      if (selectedList.contains(value)) {
        selectedList.remove(value);
      } else {
        selectedList.add(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Filters',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, // Change the color of the back arrow
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Cuisine type',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    Wrap(
    spacing: 8.0,
    children: [
    FilterButton(
    text: 'Italian',
    isSelected: _selectedCuisines.contains('Italian'),
    onPressed: () => _toggleSelection('Italian', _selectedCuisines),
    ),
    FilterButton(
    text: 'Chinese',
    isSelected: _selectedCuisines.contains('Chinese'),
    onPressed: () => _toggleSelection('Chinese', _selectedCuisines),
    ),
    FilterButton(
    text: 'Mexican',
    isSelected: _selectedCuisines.contains('Mexican'),
    onPressed: () => _toggleSelection('Mexican', _selectedCuisines),
    ),
    // Add more cuisine type buttons here
    ],
    ),
    SizedBox(height: 16),
    Container(
    color: Colors.white,
    padding: EdgeInsets.all(16.0),
    child: Text(
    'Meals',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    ),
    Wrap(
    spacing: 8.0,
    children: [
    FilterButton(
    text: 'Breakfast',
    isSelected: _selectedMeals.contains('Breakfast'),
    onPressed: () => _toggleSelection('Breakfast', _selectedMeals),
    ),
    FilterButton(
    text: 'Brunch',
    isSelected: _selectedMeals.contains('Brunch'),
    onPressed: () => _toggleSelection('Brunch', _selectedMeals),
    ),
    FilterButton(
    text: 'Lunch',
    isSelected: _selectedMeals.contains('Lunch'),
    onPressed: () => _toggleSelection('Lunch', _selectedMeals),
    ),
    FilterButton(
    text: 'Dinner',
    isSelected: _selectedMeals.contains('Dinner'),
    onPressed: () => _toggleSelection('Dinner', _selectedMeals),
    ),
    // Add more meal buttons here
    ],
    ),
    SizedBox(height: 16),
    Container(
    color: Colors.white,
    padding: EdgeInsets.all(16.0),
    child: Text(
    'Rating',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
    ),
    Wrap(
    spacing: 8.0,
      children: [
        FilterButton(
          text: '1',
          isSelected: _selectedRatings.contains('1'),
          onPressed: () => _toggleSelection('1', _selectedRatings),
        ),
        FilterButton(
          text: '2',
          isSelected: _selectedRatings.contains('2'),
          onPressed: () => _toggleSelection('2', _selectedRatings),
        ),
        FilterButton(
          text: '3',
          isSelected: _selectedRatings.contains('3'),
          onPressed: () => _toggleSelection('3', _selectedRatings),
        ),
        FilterButton(
          text: '4',
          isSelected: _selectedRatings.contains('4'),
          onPressed: () => _toggleSelection('4', _selectedRatings),
        ),
        FilterButton(
          text: '5',
          isSelected: _selectedRatings.contains('5'),
          onPressed: () => _toggleSelection('5', _selectedRatings),
        ),
        // Add more rating buttons here
      ],
    ),
        SizedBox(height: 16),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Dietary Restrictions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Wrap(
          spacing: 8.0,
          children: [
            FilterButton(
              text: 'Vegetarian',
              isSelected: _selectedDietaryRestrictions.contains('Vegetarian'),
              onPressed: () => _toggleSelection('Vegetarian', _selectedDietaryRestrictions),
            ),
            FilterButton(
              text: 'Vegan',
              isSelected: _selectedDietaryRestrictions.contains('Vegan'),
              onPressed: () => _toggleSelection('Vegan', _selectedDietaryRestrictions),
            ),
            FilterButton(
              text: 'Dairy-free',
              isSelected: _selectedDietaryRestrictions.contains('Dairy-free'),
              onPressed: () => _toggleSelection('Dairy-free', _selectedDietaryRestrictions),
            ),
            // Add more dietary restriction buttons here
          ],
        ),
        SizedBox(height: 16),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Price',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Wrap(
          spacing: 8.0,
          children: [
            FilterButton(
              text: 'Cheap meal',
              isSelected: _selectedPrices.contains('Cheap meal'),
              onPressed: () => _toggleSelection('Cheap meal', _selectedPrices),
            ),
            FilterButton(
              text: 'Affordable',
              isSelected: _selectedPrices.contains('Affordable'),
              onPressed: () => _toggleSelection('Affordable', _selectedPrices),
            ),
            FilterButton(
              text: 'Gourmet',
              isSelected: _selectedPrices.contains('Gourmet'),
              onPressed: () => _toggleSelection('Gourmet', _selectedPrices),
            ),
            // Add more price buttons here
          ],
        ),
        SizedBox(height: 32),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity, // Take up the full width
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Apply filters and navigate back
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.orange), // Change the button color to orange
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Add a curved border
                  ),
                ),
              ),
              child: Text('Apply Filters'),
            ),
          ),
        ),

      ],
      ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const FilterButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isSelected ? Colors.orange : Colors.white,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0), // Make the buttons more curved
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0), // Adjust the button size
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
          fontSize: 16.0, // Adjust the font size
        ),
      ),
    );
  }
}

