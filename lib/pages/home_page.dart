import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Your',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              'Inspirations',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Enter your text here',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Promo today',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      promoCard('assets/abaya.jpg'),
                      promoCard('assets/dubai.jpg'),
                      promoCard('assets/egypt.jpg'),
                      promoCard('assets/dubai.jpg'),
                      promoCard('assets/turkey.jpg'),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/turkey.jpg'))),
            )
          ],
        ),
      ),
    );
  }
}

Widget promoCard(image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust margin here
    child: AspectRatio(
      aspectRatio: 2.4 / 3,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    ),
  );
}
