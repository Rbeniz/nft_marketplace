import 'package:flutter/material.dart';

import '../../../models/nft.dart';
import '../../../models/profile.dart';

class DetailsSection extends StatelessWidget {
  final NFT nft;
  Profile profile = Profile.generateProfile();

  DetailsSection(
    this.nft, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //extendBodyBehindAppBar: true,

      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            //nft.name
            nft.name!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              _buildIconText(
                  profile.imgUrl!, "Creator", profile.twitter!.substring(1), 0),
              const SizedBox(
                width: 100,
              ),
              _buildIconText(
                  "https://cryptonaute.fr/wp-content/uploads/2020/06/ethereum-logo.png",
                  "Current bid",
                  '${nft.price} ETH',
                  5),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            //nft.desc!,
            "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen",
            style: TextStyle(
              wordSpacing: 3,
              height: 1.3,
              color: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}

/////
_buildIconText(String imgUrl, String title, String text, double padding) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.all(padding),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Image.network(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black45,
            ),
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, height: 1.5),
          ),
        ],
      ),
    ],
  );
}
