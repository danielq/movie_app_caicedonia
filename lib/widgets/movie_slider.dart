import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Populares',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (_, int index) => _MoviePoster()))
        ],
      ),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      color: Colors.greenAccent,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://placehold.jp/300x400.png'),
              width: 130,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Star Wars la venganza de los sith remasterizado',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
