import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(''),
              Text(
                'Size Chart',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ProductSelection(),
        ),
      ),
    );
  }
}

class ProductSelection extends StatefulWidget {
  @override
  _ProductSelectionState createState() => _ProductSelectionState();
}

class _ProductSelectionState extends State<ProductSelection> {
  String selectedSize = 'S';
  Color selectedColor = Colors.blue;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Size:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          children: ['S', 'M', 'L', 'XL'].map((size) {
            final isAvailable = size != 'XL'; 
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ChoiceChip(
                label: Text(size),
                selected: selectedSize == size,
                onSelected: isAvailable
                    ? (isSelected) {
                        setState(() {
                          selectedSize = size;
                        });
                      }
                    : null, 
                backgroundColor: isAvailable ? null : Colors.grey.shade300,
                disabledColor: Colors.grey.shade300,
                selectedColor: isAvailable ? Colors.green.shade100 : null,
                labelStyle: TextStyle(
                  color: isAvailable ? Colors.black : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 16),

        Text(
          'Select Color:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [Colors.orange, Colors.yellow.shade100, Colors.green].map((color) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColor = color;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 20,
                  child: selectedColor == color
                      ? Icon(Icons.check, color: Colors.white)
                      : null,
                ),
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 16),

        Text(
          'Quantity:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (quantity > 1) quantity--;
                });
              },
              icon: Icon(Icons.remove),
            ),
            Text(
              '$quantity',
              style: TextStyle(fontSize: 16),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  quantity++;
                });
              },
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ],
    );
  }
}