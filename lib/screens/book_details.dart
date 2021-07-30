import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> data;
  DetailsPage({required this.data});

  bodyWidget(BuildContext context) => Stack(
        children: <Widget>[
          Positioned(
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width - 20,
            left: 10.0,
            top: MediaQuery.of(context).size.height * 0.1,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Hero(
                    tag: data['image'],
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        data['image'],
                        height: 280.0,
                        width: 220.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    data['name'],
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rent Price: ₹${data['one_week_rent_price']}",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Actual Price: ₹${data['mrp']}",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: Text(
                      'Add to cart',
                      textScaleFactor: 1.5,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Colors.white,
                          width: 3.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text(data['name']),
      ),
      body: bodyWidget(context),
    );
  }
}

// class PokeDetail extends StatelessWidget {
//   final Pokemon pokemon;
//
//   PokeDetail({this.pokemon});
//
//   bodyWidget(BuildContext context) => Stack(
//     children: <Widget>[
//       Positioned(
//         height: MediaQuery.of(context).size.height / 1.5,
//         width: MediaQuery.of(context).size.width - 20,
//         left: 10.0,
//         top: MediaQuery.of(context).size.height * 0.1,
//         child: Card(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               SizedBox(
//                 height: 70.0,
//               ),
//               Text(
//                 pokemon.name,
//                 style:
//                 TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
//               ),
//               Text("Height: ${pokemon.height}"),
//               Text("Weight: ${pokemon.weight}"),
//               Text(
//                 "Types",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: pokemon.type
//                     .map((t) => FilterChip(
//                     backgroundColor: Colors.amber,
//                     label: Text(t),
//                     onSelected: (b) {}))
//                     .toList(),
//               ),
//               Text("Weakness",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: pokemon.weaknesses
//                     .map((t) => FilterChip(
//                     backgroundColor: Colors.red,
//                     label: Text(
//                       t,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onSelected: (b) {}))
//                     .toList(),
//               ),
//               Text("Next Evolution",
//                   style: TextStyle(fontWeight: FontWeight.bold)),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: pokemon.nextEvolution == null
//                     ? <Widget>[Text("This is the final form")]
//                     : pokemon.nextEvolution
//                     .map((n) => FilterChip(
//                   backgroundColor: Colors.green,
//                   label: Text(
//                     n.name,
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   onSelected: (b) {},
//                 ))
//                     .toList(),
//               )
//             ],
//           ),
//         ),
//       ),
//       Align(
//         alignment: Alignment.topCenter,
//         child: Hero(
//             tag: pokemon.img,
//             child: Container(
//               height: 200.0,
//               width: 200.0,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
//             )),
//       )
//     ],
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.cyan,
//       appBar: AppBar(
//         elevation: 0.0,
//         backgroundColor: Colors.cyan,
//         title: Text(pokemon.name),
//       ),
//       body: bodyWidget(context),
//     );
//   }
// }
