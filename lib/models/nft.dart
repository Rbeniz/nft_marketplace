


import 'bidder.dart';

class NFT {
  String? imgUrl;
  String? name;
  num? price;
  String? desc;

  List<Bidder>? birds;
  List<Bidder>? history;


  NFT({
    this.imgUrl,
    this.name,
    this.price,
    this.desc, 
    this.birds,
    this.history
  });
}