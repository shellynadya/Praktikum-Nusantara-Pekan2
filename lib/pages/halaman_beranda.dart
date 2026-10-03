import 'package:flutter/material.dart';


class HalamanBeranda extends StatelessWidget {

  const HalamanBeranda({super.key});


  @override
  Widget build(BuildContext context) {


    return Center(

      child: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            const Icon(

              Icons.location_city,

              size: 70,

              color: Colors.indigo,

            ),



            const SizedBox(height: 20),



            const Text(

              'Nusantara Cerdas Mobile',

              style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height: 15),



            const Text(

              'Ringkasan Enam Pilar Smart City',

              textAlign: TextAlign.center,

            ),



            const SizedBox(height: 25),



            Card(

              child: Column(

                children: const [


                  ListTile(

                    leading: Icon(Icons.account_balance),

                    title: Text('Smart Governance'),

                  ),



                  ListTile(

                    leading: Icon(Icons.health_and_safety),

                    title: Text('Smart Healthcare'),

                  ),



                  ListTile(

                    leading: Icon(Icons.directions_bus),

                    title: Text('Smart Mobility'),

                  ),



                  ListTile(

                    leading: Icon(Icons.eco),

                    title: Text('Smart Environment'),

                  ),



                  ListTile(

                    leading: Icon(Icons.business),

                    title: Text('Smart Economy'),

                  ),



                  ListTile(

                    leading: Icon(Icons.groups),

                    title: Text('Smart Society'),

                  ),


                ],

              ),

            )


          ],

        ),

      ),

    );


  }


}