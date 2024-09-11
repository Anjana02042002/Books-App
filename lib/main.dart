import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'API_Services/api_services.dart';
import 'MyAlbum/album.dart';

class MyApiAlbum extends StatefulWidget {
  const MyApiAlbum({super.key});

  @override
  State<MyApiAlbum> createState() => _MyApiAlbumState();
}

class _MyApiAlbumState extends State<MyApiAlbum> {
  Apiservice apiservice = Apiservice();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: apiservice.fetchdata(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                MyAlbum album = snapshot.data![index];
                return ListTile(
                  title: Text('${album.id}'),
                  subtitle: Text('${album.title}'),
                );
              });
        } else if (snapshot.hasError) {
          return Center(child: Text("Error found"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    ));
  }
}
