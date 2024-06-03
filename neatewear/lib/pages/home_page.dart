import 'package:flutter/material.dart';
import 'package:neatewear/models/order.dart';

import '../components/order_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search Anything laundry ',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        // will be divided into 2 main sections,which will reflect data from 2
        // other sections
        // section 1 will be made up of ( simply a laundry track demo)
        // Your Orders ( displayed as a navbar, since since at the other end we'll)
        // have a view all button
        // a container class that will grow as the number of elemenets in it grow,
        // the first line has an leading of Laundry and action of veiw all with color blue

         const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Laudry',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              
              Text(
                'See all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                )
              ),
            ],
          ),
        ),
        // creating an expanded list view
        
        // start by defining the SizedBox-height
        const SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              // indexes the result from the server, getting thw number of orders the client made
              Order order = Order(name: name, price: price, status: status, imagePath: imagePath);
              return OrderTile(
                order: order ,
              );
            },
          ),
        ),

        // quick diver to give us some space between the two components

        const Padding(
          padding: EdgeInsets.only(top:25.0, left: 25.0, right: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        ),

        // section 2 will be made of a Services button, to demonstrate various
        // stats of various service providers
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                )
              )
            ],
          ),
        )
      ],
    );
  }
}
