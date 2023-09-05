import 'package:flutter/material.dart';
import '../../Pages/profil/Components/GridSection.dart';
import '../../Pages/profil/Components/profil_section.dart';
import 'Components/tabSliverCustom.dart';
import '../../../models/profile.dart';

class MyProfile extends StatelessWidget {
  //final => static const
  static const tabs = ["Creations", "Collections"];
  Profile profile = Profile.generateProfile();

  MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
              const SliverToBoxAdapter(
                child: ProfilSection(),
              ),
              SliverPersistentHeader(
                delegate: TabSliverCustom(TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
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
              GridSection("creations", profile.creations!),
              GridSection("collections", profile.collections!),
            ]),
          )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            onPressed: () {},
            splashRadius: 25,
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
              size: 20,
            ))
      ],
    );
  }
}
