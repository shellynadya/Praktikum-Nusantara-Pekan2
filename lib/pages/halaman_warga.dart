import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../navigation/app_routes.dart';
import '../models/favorit_model.dart';



class HalamanWarga extends StatelessWidget {

  const HalamanWarga({super.key});


  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(

      child: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [


            const SizedBox(height: 30),


            const CircleAvatar(

              radius: 40,

              child: Icon(

                Icons.person,

                size: 45,

              ),

            ),



            const SizedBox(height: 20),



            const Text(

              'Profil Warga',

              style: TextStyle(

                fontSize: 22,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height: 10),



            const Text(

              'Nama: Warga Nusantara',

            ),



            const SizedBox(height: 25),



            ElevatedButton.icon(

              onPressed: (){


                Navigator.pushNamed(

                  context,

                  AppRoutes.riwayat,

                );


              },


              icon: const Icon(Icons.history),


              label: const Text(

                'Riwayat Laporan',

              ),


            ),



            const SizedBox(height: 30),



            const Text(

              'Layanan Favorit',

              style: TextStyle(

                fontSize: 20,

                fontWeight: FontWeight.bold,

              ),

            ),



            const SizedBox(height: 10),



            Consumer<FavoritModel>(

              builder: (context, favorit, child) {


                if (favorit.favorit.isEmpty) {


                  return const Text(

                    'Belum ada layanan favorit',

                  );


                }



                return Column(

                  children: favorit.favorit.map((layanan) {


                    return Card(

                      margin: const EdgeInsets.symmetric(

                        horizontal: 30,

                        vertical: 5,

                      ),


                      child: ListTile(

                        leading: const Icon(

                          Icons.star,

                          color: Colors.amber,

                        ),


                        title: Text(layanan),


                      ),

                    );


                  }).toList(),

                );


              },

            ),


          ],


        ),

      ),

    );


  }


}