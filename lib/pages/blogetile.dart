import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/pages/artical_view.dart';

class BlogTile extends StatelessWidget {
  String imageUrl, title, desc, url;
  BlogTile(
      {super.key,
      required this.desc,
      required this.imageUrl,
      required this.title,
      required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticalView(
                      blogUrl: url,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                        imageUrl: imageUrl,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.9,
                        child: Text(
                          title,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 17.0),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.9,
                        child: Text(
                          desc,
                          maxLines: 3,
                          style: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
