import 'package:ajira_interview/bloc/userDetailsBloc/bloc/user_detail_bloc.dart';
import 'package:ajira_interview/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumView extends StatefulWidget {
  const AlbumView(this.albumId, {super.key});
  final int albumId;

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Album view'),
      ),
      backgroundColor: Colors.white,
      body: BlocProvider<UserDetailBloc>(
        create: (_) => UserDetailBloc(),
        child: Builder(builder: (context) {
          return BlocBuilder<UserDetailBloc, UserDetailState>(
            bloc: BlocProvider.of<UserDetailBloc>(context)
              ..add(AlbumListDetailsRequest(widget.albumId)),
            builder: (context, state) {
              if (state is AlbumDetailsSuccessState) {
                return Scrollbar(
                  controller: _controller,
                  thumbVisibility: true,
                  child: GridView.builder(
                    controller: _controller,
                    itemCount: state.albumDetails.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              FadeInImage(
                                placeholder: Image.asset(
                                  'assets/flutter_logo.png',
                                  height: 100,
                                  width: 100,
                                  cacheHeight: 100,
                                  cacheWidth: 100,
                                ).image,
                                image: Image.network(
                                  state.albumDetails[index].thumbnailUrl,
                                  height: 100,
                                  width: 100,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      color: Colors.red,
                                      height: 100,
                                      width: 100,
                                      child: Image.asset(
                                        'assets/flutter_logo.png',
                                        height: 100,
                                        width: 100,
                                      ),
                                    );
                                  },
                                ).image,
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.red,
                                    height: 100,
                                    width: 100,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          'assets/flutter_logo.png',
                                          height: 100,
                                          width: 100,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              Text(
                                'item ${state.albumDetails[index].title}',
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else {
                return loadingMethod();
              }
            },
          );
        }),
      ),
    );
  }
}
