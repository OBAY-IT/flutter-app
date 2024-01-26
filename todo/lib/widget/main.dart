import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo/constants/colors.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "recipeApp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Recipe App")),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 300,
              child: Image.network(
                "https://assets.afcdn.com/recipe/20171019/73301_w1024h1024c1cx1800cy1200cxt0cyt0cxb3600cyb2400.jpg",
              ),
            ),
            Description(),
            Reviews(),
            Prepa(),
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Title(
          color: tdBlack,
          child: Text(
            "Fondant au Chocolate",
            style: TextStyle(fontSize: 25),
          ),
        ),
        Text(
          "Aucun gourmand ne saurait résister à cette recette de fondant au chocolat individuel ! Très facile à réaliser, elle ne comporte que 5 ingrédients de base : de la farine, du beurre, du sucre, des œufs et une belle tablette de chocolat pâtissier. Son point fort ? Sous sa surface à peine craquelée se cache un discret cœur coulant, qui cède dès le premier contact avec la cuillère. Une avalanche cacaotée qui vous fera fondre de plaisir !",
          textAlign: TextAlign.center,
        ),
      ]),
      padding: EdgeInsets.all(20),
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [iconR(), Text("170 reviews")],
      ),
      padding: EdgeInsets.all(0),
    );
  }
}

class iconR extends StatelessWidget {
  const iconR({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.reviews),
      Icon(Icons.reviews),
      Icon(Icons.reviews),
      Icon(Icons.reviews),
    ]);
  }
}

class Prepa extends StatelessWidget {
  const Prepa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      width: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              children: [Icon(Icons.kitchen), Text("PREP:"), Text("25 min")]),
          Column(children: [Icon(Icons.timer), Text("COOK:"), Text("1h")]),
          Column(
              children: [Icon(Icons.restaurant), Text("FEEDS:"), Text("4-6")]),
        ],
      ),
    );
  }
}
