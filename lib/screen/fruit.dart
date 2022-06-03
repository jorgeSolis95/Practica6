import 'package:flutter/material.dart';
import 'package:fruit/controllers/counter.dart';
import 'package:fruit/views/carousel_fruit.dart';

class Fruit extends StatefulWidget {
  const Fruit({Key? key}) : super(key: key);

  @override
  State<Fruit> createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 130, 255),
        appBar: AppBar(
          title: const Text("Fruitery"),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 248, 13, 217),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart, color: Colors.white)),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: const [CarouselFruit()],
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0))),
              height: 375.0,
              width: 500.0,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Mango',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('1 each'),
                        SizedBox(
                          height: 20.0,
                        ),
                        CounterDesign(),
                        Text(
                          'Product Description',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'A mango is a type of fruit. '
                              'The mango tree is native to South Asia, '
                              'from where it has been taken to become one of the most widely cultivated fruits in the tropics.'
                              'It is harvested in the month of march (summer season) till the end of May.',
                          style: TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                        ),
                      ],
                    ),
                  )),
            ),
            Row(
              children: <Widget>[
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: const BorderSide(color: Colors.amber),
                  ),
                  height: 70.0,
                  child: IconButton(
                    icon: _isFavorited
                        ? Icon(
                      Icons.favorite_border,
                      color: Colors.amber[300],
                    )
                        : Icon(
                      Icons.favorite,
                      color: Colors.amber[300],
                    ),
                    onPressed: () => _toggleFavorite(),
                  ),
                ),
                ButtonTheme(
                  buttonColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  height: 70.0,
                  minWidth: 260.0,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Add to cart',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
