import 'package:flutter/material.dart';
import '../../../models/nft.dart';

class DetailBanner extends StatelessWidget {
  //final => static const
  static const tabs = ["Info", "Birds", "History"];
  final NFT nft;

  const DetailBanner(
    this.nft, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: nft.imgUrl!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                nft.imgUrl!,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            right: 30,
            bottom: 30,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.pinkAccent,
              ),
            ))
      ],
    );
  }
}
