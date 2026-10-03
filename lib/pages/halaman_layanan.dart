import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/favorit_model.dart';


class HalamanLayanan extends StatelessWidget {

  const HalamanLayanan({super.key});


  @override
  Widget build(BuildContext context) {

    return DefaultTabController(

      length: 3,

      child: Column(

        children: [

          const TabBar(

            tabs: [

              Tab(
                icon: Icon(Icons.description),
                text: 'Perizinan',
              ),

              Tab(
                icon: Icon(Icons.local_hospital),
                text: 'Kesehatan',
              ),

              Tab(
                icon: Icon(Icons.directions_bus),
                text: 'Transportasi',
              ),

            ],

          ),



          Expanded(

            child: TabBarView(

              children: [


                _daftarLayanan(
                  [
                    'Izin Usaha',
                    'Izin Bangunan',
                    'Surat Domisili',
                  ],
                ),



                _daftarLayanan(
                  [
                    'Pendaftaran Rumah Sakit',
                    'Jaminan Kesehatan',
                    'Vaksinasi',
                  ],
                ),



                _daftarLayanan(
                  [
                    'Kartu Transportasi',
                    'Informasi Bus',
                    'Parkir Digital',
                  ],
                ),


              ],

            ),

          ),

        ],

      ),

    );

  }





  Widget _daftarLayanan(List<String> layanan) {


    return ListView.builder(

      itemCount: layanan.length,


      itemBuilder: (context, index) {


        final namaLayanan = layanan[index];


        final favorit = context.watch<FavoritModel>();


        final isFavorit = favorit.isFavorit(namaLayanan);



        return ListTile(


          leading: const Icon(
            Icons.miscellaneous_services,
          ),



          title: Text(namaLayanan),



          trailing: Row(

            mainAxisSize: MainAxisSize.min,


            children: [


              IconButton(

                icon: Icon(

                  isFavorit
                      ? Icons.star
                      : Icons.star_border,

                  color: isFavorit
                      ? Colors.amber
                      : null,

                ),



                onPressed: () {


                  final model =
                      context.read<FavoritModel>();


                  if (isFavorit) {

                    model.batalTandai(
                      namaLayanan,
                    );

                  } else {

                    model.tandai(
                      namaLayanan,
                    );

                  }


                },

              ),



              const Icon(
                Icons.chevron_right,
              ),


            ],

          ),




          onTap: () {


            Navigator.pushNamed(

              context,

              '/detail',

              arguments: {


                'nama': namaLayanan,


                'dinas':
                    'Dinas Kota Nusantara',


                'jam':
                    '08.00 - 15.00',


                'keterangan':
                    'Layanan publik digital untuk masyarakat.',


              },

            );


          },


        );


      },


    );


  }


}