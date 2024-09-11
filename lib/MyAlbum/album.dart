import 'dart:convert';

MyAlbum myAlbumFromJson(String str) => MyAlbum.fromJson(json.decode(str));
String myAlbumToJson(MyAlbum data) => json.encode(data.toJson());
class MyAlbum {
  MyAlbum({
    this.userId,
    this.id,
    this.title,});

  MyAlbum.fromJson(dynamic json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }
  num? userId;
  num? id;
  String? title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userId'] = userId;
    map['id'] = id;
    map['title'] = title;
    return map;
  }

}