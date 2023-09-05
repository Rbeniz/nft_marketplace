

class Bidder {
  String? name;
  DateTime? date;
  num? price;

  Bidder({
    this.name,
    this.date,
    this.price,
  });


static List<Bidder> generateBidder(){
      return[
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
      ];
}


static List<Bidder> generateHistory(){
      return[
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
        Bidder(name: "Jenny", date: DateTime.now(), price: 1.53),
      ];
}


}