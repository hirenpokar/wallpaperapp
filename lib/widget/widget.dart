import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaperhub/model/wallpaper_model.dart';

Widget brandName(){
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      children: <TextSpan>[
        TextSpan(text: 'HD Wallpapers', style: TextStyle(color: Colors.black87)),
        TextSpan(text: ' Free', style: TextStyle(color: Colors.blue)),
      ],
    ),
  );
}

Widget wallpapersList({List<WallpaperModel> wallpapers, context}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper){
        return GridTile(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                  child: Image.network(wallpaper.src.portrait, fit: BoxFit.cover,)),
            )
        );
      }).toList(),
    ),
  );
}