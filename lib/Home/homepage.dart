
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_album/API_Services/api_services.dart';
import 'package:my_album/buy.dart';

import '../MyAlbum/album.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

 


  Apiservice apiservice = Apiservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
        appBar: AppBar( title: Text('Books Available',
        ),
        backgroundColor: Colors.white,),
        body:
            FutureBuilder(
              future: apiservice.fetchdata(),
              builder: (BuildContext context,
                  AsyncSnapshot<dynamic> snapshot) {
                if(snapshot.hasData)
                {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder:(BuildContext context, int index)
                      {
                        MyAlbum album = snapshot.data![index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: ListTile(
                                tileColor: Colors.white70,
                                leading:Image.network('https://specials-images.forbesimg.com/imageserve/5d28f9614c687b00085c8ded/The-Lord-Of-The-Rings/960x0.jpg?fit=scale'),
                                title: Text('${album.title}',
                                  style: TextStyle(fontSize: 15,
                                      fontWeight: FontWeight.bold),),
                                subtitle: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:125),
                                      child: Text('Available : ${album.userId}',),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 125),
                                      child: Text('Book Id : ${album.id}'),
                                    ),
                                  ],
                                ),
                                trailing: Icon(Icons.favorite_outline),
                              ),
                            ),
                        );
                      }
                  );
                }
                else if(snapshot.hasError)
                {
                  return Center(child: Text("Error found"));
                }
                else
                {
                  return Center(child: CircularProgressIndicator());
                }
              } ,

            ),
          );
  }
}
