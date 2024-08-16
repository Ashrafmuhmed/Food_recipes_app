import 'package:flutter/material.dart';
import '../../CustomedWidgets/CountryCard.dart';
import '../../Models/Country.dart';

class mainCategBuilder extends StatelessWidget {
  const mainCategBuilder({
    super.key,

  });

  final List<Country> countries = const [
    Country(image: 'assets/images/download.jpeg', name: 'Egypt',search: 'Egyptian'),
    Country(image: 'assets/images/china.jpeg', name: 'China' ,search: 'Chinese'),
    Country(image: 'assets/images/india.jpeg', name: 'India',search: 'Indian'),
    Country(image: 'assets/images/download (1).jpeg', name: 'France', search: 'French'),
    Country(image: 'assets/images/england.jpeg', name: 'England',search: 'British'),
    Country(image: 'assets/images/malysya,jpeg.jpeg', name: 'Malaysia',search: 'Malaysian'),
    Country(image: 'assets/images/canada.jpeg', name: 'Canada',search: 'Canadian'),
    Country(image: 'assets/images/japan.jpeg', name: 'Japan',search: 'Japanese'),
    Country(image: 'assets/images/OIP (1).jpeg', name: 'Tunisia',search: 'Tunisian'),
    Country(image: 'assets/images/OIP (2).jpeg', name: 'Italy',search: 'Italian'),
    Country(image: 'assets/images/OIP (3).jpeg', name: 'Mexico',search: 'Mexican'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 1.2),
            itemBuilder: (context, index) {
              return CountryCard(country: countries.elementAt(index));
            },
            itemCount: countries.length,
            )
            );
  }
}