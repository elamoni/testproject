import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String img,title,rating;
  CityCard({
    super.key, required this.img, required this.title, required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            height: 200,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(
                      //"https://images.unsplash.com/photo-1501785888041-af3ef285b470?w=300"
                    img),
                )
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent,Colors.black54
                      ]
                  )
              ),

            ),

          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: (){}, child: Text(
                  //'⭐ 5.0'
                  rating,
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold
                  ),
                )),
                SizedBox(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.orange,))
              ],
            ),
          ),

          Positioned(
            bottom: 15,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  //'Bangladesh'
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}