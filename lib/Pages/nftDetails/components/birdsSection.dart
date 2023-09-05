import 'package:flutter/material.dart';
import '../../../models/bidder.dart';
import 'bidderCard.dart';

class BirdsSection extends StatelessWidget {
  final String scrollkey;
  final List<Bidder> bidderList;

  const BirdsSection(this.scrollkey, this.bidderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        key: PageStorageKey(scrollkey),
        padding: const EdgeInsets.all(20),
        itemBuilder: (_, index) => BidderCard(bidderList[index]),
        separatorBuilder: (_, index) => const SizedBox(
              height: 15,
            ),
        itemCount: bidderList.length);
  }
}
