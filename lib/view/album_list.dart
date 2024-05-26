import 'package:ajira_interview/bloc/userDetailsBloc/bloc/user_detail_bloc.dart';
import 'package:ajira_interview/utils/common.dart';
import 'package:ajira_interview/view/album_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumListScreen extends StatefulWidget {
  const AlbumListScreen({super.key});

  @override
  State<AlbumListScreen> createState() => _AlbumListScreenState();
}

class _AlbumListScreenState extends State<AlbumListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserDetailBloc(),
      child: Builder(builder: (context) {
        return BlocBuilder<UserDetailBloc, UserDetailState>(
          bloc: BlocProvider.of<UserDetailBloc>(context)
            ..add(const AlbumListRequest()),
          builder: (context, state) {
            if (state is AlbumListSuccessState) {
              return ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: state.albumList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlbumView(index),
                          ));
                    },
                    child: SizedBox(
                      height: 100,
                      child: Center(
                          child: Card(
                        elevation: 5,
                        child: SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.folder,
                                size: 50,
                              ),
                              Text(state.albumList[index].title),
                            ],
                          ),
                        ),
                      )),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              );
            } else {
              return loadingMethod();
            }
          },
        );
      }),
    );
  }
}
