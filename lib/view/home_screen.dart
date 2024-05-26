import 'package:ajira_interview/bloc/userDetailsBloc/bloc/user_detail_bloc.dart';
import 'package:ajira_interview/view/album_list.dart';
import 'package:ajira_interview/view/mypost_list.dart';
import 'package:ajira_interview/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserDetailBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('Ajira'),
          ),
          body: Builder(builder: (context) {
            return TabBarView(
              controller: _tabController,
              physics: const AlwaysScrollableScrollPhysics(),
              children: const <Widget>[
                ProfileScreen(),
                AlbumListScreen(),
                MyPostListScreen(),
              ],
            );
          }),

          bottomNavigationBar: BottomAppBar(
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelStyle: const TextStyle(fontSize: 13),
              unselectedLabelStyle: const TextStyle(fontSize: 12),
              labelColor: Colors.blue,
              unselectedLabelColor: const Color.fromARGB(255, 0, 129, 201),
              labelPadding: EdgeInsets.zero,
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
              onTap: (index) {
                if (index == 4) {}
              },
              tabs: const <Widget>[
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 5),
                  icon: Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                  ),
                  text: 'Profile',
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 5),
                  icon: Icon(
                    Icons.messenger_outline_rounded,
                    size: 30,
                  ),
                  text: 'Albums',
                ),
                Tab(
                  iconMargin: EdgeInsets.only(bottom: 5),
                  icon: Icon(
                    Icons.post_add_outlined,
                    size: 30,
                  ),
                  text: 'My posts',
                ),
              ],
            ),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }),
    );
  }
}
