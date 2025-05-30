import 'package:flutter/material.dart';


const cards = <Map<String, dynamic>>[
  
    {'elevation': 0.0, 'label': 'elevation 0'},
    {'elevation': 1.0, 'label': 'elevation 1'},
    {'elevation': 2.0, 'label': 'elevation 2'},
    {'elevation': 3.0, 'label': 'elevation 3'},
    {'elevation': 4.0, 'label': 'elevation 4'},
    {'elevation': 5.0, 'label': 'elevation 5'},

  
];

class CardScreen extends StatelessWidget {
  static const String name = 'card_screen';
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CARDS'),
      ),
      body: const _CardView(),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CardType1(elevation: card['elevation'], label: card['label'])),
          ...cards.map((card) => _CardType2(elevation: card['elevation'], label: card['label'])),
          ...cards.map((card) => _CardType3(elevation: card['elevation'], label: card['label'])),
          ...cards.map((card) => _CardType4(elevation: card['elevation'], label: card['label'])),
          const SizedBox(height: 20),
        ],
        
      ),
      
    );
  }
}


class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({
    required this.label,
    required this.elevation,
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: 
              (){}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                label,
               
              ),
            )
          ],
        )
      ),
    );
  }
}


class _CardType2 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType2({
    required this.label,
    required this.elevation,
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        side: BorderSide(
          color: colors.primary,
        ),

      ),
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: 
              (){}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Card Type 2',
              ),
            )
          ],
        )
      ),
    );
  }
}

class _CardType3 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType3({
    required this.label,
    required this.elevation,
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      color: colors.surfaceVariant,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(onPressed: 
              (){}, icon: const Icon(Icons.more_vert_outlined)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text('$label - Card Type 2',
              ),
            )
          ],
        )
      ),
    );
  }
}

class _CardType4 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType4({
    required this.label,
    required this.elevation,
    });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/600/350',
            fit: BoxFit.cover,
            height: 350,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: IconButton(onPressed: 
              (){}, icon: const Icon(Icons.more_vert_outlined)),
            ),
          ),
        
        ],
      ),
    );
  }
}