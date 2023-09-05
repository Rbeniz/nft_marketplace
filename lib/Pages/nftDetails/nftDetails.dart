import 'package:flutter/material.dart';
import '../../models/nft.dart';
import '../../pages/nftDetails/components/detailBanner.dart';
import '../../pages/nftDetails/components/detailsSection.dart';
import '../../pages/nftDetails/components/buy_button.dart';
import '../../constants/colors.dart';
import '../../pages/nftDetails/components/birdsSection.dart';
import '../profil/components/tabSliverCustom.dart';

class NftsDetails extends StatelessWidget {
  //final => static const
  static const tabs = ["Info", "Birds", "History"];
  final NFT nft;

  NftsDetails(
    this.nft, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: 330,
                backgroundColor: buttonColor,
                leading: _buildIcon(
                  context,
                  Icons.arrow_back_ios,
                  back: true,
                ),
                actions: [
                  _buildIcon(
                    context,
                    Icons.more_vert_outlined,
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(background: DetailBanner(nft)),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: DetailsSection(nft),
              ),
              SliverPersistentHeader(
                delegate: TabSliverCustom(TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    labelPadding: const EdgeInsets.only(left: 5, right: 40),
                    isScrollable: true,
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: const TextStyle(fontSize: 18),
                              ),
                            ))
                        .toList())),
                pinned: true,
              )
            ],
            body: TabBarView(children: [
              ListView(
                children: const [],
              ),
              BirdsSection("birds", nft.birds!),
              BirdsSection("history", nft.history!),
            ]),
          )),
      floatingActionButton: const BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
        onPressed: back ? () => Navigator.of(context).pop() : null,
        splashRadius: 25,
        icon: Icon(
          icon,
          color: Colors.black,
          size: 20,
        ));
  }
}
