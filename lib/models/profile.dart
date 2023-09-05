import 'bidder.dart';
import 'nft.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? desc;
  String? email;
  String? twitter;

  List<NFT>? creations;
  List<NFT>? collections;

  Profile({
    this.imgUrl,
    this.name,
    this.desc,
    this.email,
    this.twitter,
    this.creations,
    this.collections,
  });

  static Profile generateProfile() {
    return Profile(
        imgUrl:
            "https://images.unsplash.com/photo-1618654661521-b9b59166b17f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
        name: "Alexy Prefontain",
        desc: "3D artist from montreal",
        email: "aeforia@outlook.com",
        twitter: "@aeforia",
        creations: [
          NFT(
            imgUrl:
                "https://cdn.decrypt.co/wp-content/uploads/2022/04/akutar-ethereum-nft-gID_4.png.webp",
            name: "Consume1",
            desc: "So happy to share mmy second collab",
            price: 1.53,
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          NFT(
            imgUrl:
                "https://www.nftculture.com/nft-news/aku-announces-the-launch-of-akutars-with-legendary-fashion-and-streetwear-collaborators/attachment/1-12/",
            name: "Consume2",
            desc: "So happy to share mmy second collab",
            price: 1.53,
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          NFT(
            imgUrl:
                "https://boardroom.tv/wp-content/uploads/2022/04/Micah-Johnson-Akutars-1280x720.png",
            name: "Consume3",
            desc: "So happy to share mmy second collab",
            price: 1.53,
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ],
        collections: [
          NFT(
            imgUrl:
                "https://external-preview.redd.it/4IkQdPN-k2K5wRfYw4glua26kBwc7V5PGDE5_q2SLa4.jpg?width=640&crop=smart&auto=webp&s=c9f87a227a30e10a91be75007c7e31e104920ece",
            name: "Consume4",
            desc: "So happy to share mmy second collab",
            price: 1.53,
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          NFT(
            imgUrl:
                "https://www.thismorningonchain.com/content/images/2022/01/solana-opensea-degenerate-ape.png",
            name: "Consume5",
            desc: "So happy to share mmy second collab",
            price: 1.53,
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          NFT(
            imgUrl:
                "https://cryptopotato.com/wp-content/uploads/2022/03/img3-1.jpg",
            name: "Consume6",
            desc: "So happy to share mmy second collab",
            price: 1.53,
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ]);
  }

  static List<Profile> generateListProfile() {
    return [
      Profile(
          imgUrl:
              "https://images.unsplash.com/photo-1618654661521-b9b59166b17f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
          name: "Alexy Prefontain",
          desc: "3D artist from montreal",
          email: "aeforia@outlook.com",
          twitter: "@aeforia",
          creations: [
            NFT(
              imgUrl:
                  "https://cdn.decrypt.co/wp-content/uploads/2022/04/akutar-ethereum-nft-gID_4.png.webp",
              name: "Consume1",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://www.nftculture.com/nft-news/aku-announces-the-launch-of-akutars-with-legendary-fashion-and-streetwear-collaborators/attachment/1-12/",
              name: "Consume2",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://boardroom.tv/wp-content/uploads/2022/04/Micah-Johnson-Akutars-1280x720.png",
              name: "Consume3",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
          ],
          collections: [
            NFT(
              imgUrl:
                  "https://external-preview.redd.it/4IkQdPN-k2K5wRfYw4glua26kBwc7V5PGDE5_q2SLa4.jpg?width=640&crop=smart&auto=webp&s=c9f87a227a30e10a91be75007c7e31e104920ece",
              name: "Consume4",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://www.thismorningonchain.com/content/images/2022/01/solana-opensea-degenerate-ape.png",
              name: "Consume5",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://cryptopotato.com/wp-content/uploads/2022/03/img3-1.jpg",
              name: "Consume6",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
          ]),
      Profile(
          imgUrl:
              "https://images.unsplash.com/photo-1618654661521-b9b59166b17f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
          name: "Alexy Prefontain",
          desc: "3D artist from montreal",
          email: "aeforia@outlook.com",
          twitter: "@aeforia",
          creations: [
            NFT(
              imgUrl:
                  "https://cdn.decrypt.co/wp-content/uploads/2022/04/akutar-ethereum-nft-gID_4.png.webp",
              name: "Consume1",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://www.nftculture.com/nft-news/aku-announces-the-launch-of-akutars-with-legendary-fashion-and-streetwear-collaborators/attachment/1-12/",
              name: "Consume2",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://boardroom.tv/wp-content/uploads/2022/04/Micah-Johnson-Akutars-1280x720.png",
              name: "Consume3",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
          ],
          collections: [
            NFT(
              imgUrl:
                  "https://external-preview.redd.it/4IkQdPN-k2K5wRfYw4glua26kBwc7V5PGDE5_q2SLa4.jpg?width=640&crop=smart&auto=webp&s=c9f87a227a30e10a91be75007c7e31e104920ece",
              name: "Consume4",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://www.thismorningonchain.com/content/images/2022/01/solana-opensea-degenerate-ape.png",
              name: "Consume5",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
            NFT(
              imgUrl:
                  "https://cryptopotato.com/wp-content/uploads/2022/03/img3-1.jpg",
              name: "Consume6",
              desc: "So happy to share mmy second collab",
              price: 1.53,
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory(),
            ),
          ]),
    ];
  }
}
