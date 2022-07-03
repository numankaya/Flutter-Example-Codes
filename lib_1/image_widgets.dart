import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://149478393.v2.pressablecdn.com/wp-content/uploads/2016/10/ghibli_2.jpg.jpg";
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset("images/car.jpg", fit: BoxFit.contain),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.network(_imgURL),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 300,
                    child: CircleAvatar(
                      child: Text('E'),
                      radius: 30,
                      backgroundImage: NetworkImage(_imgURL),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: FadeInImage.assetNetwork(
              fit: BoxFit.cover,
              placeholder: "images/giphy.gif",
              image: _imgURL,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(),
          ))
        ],
      ),
    );
  }
}
