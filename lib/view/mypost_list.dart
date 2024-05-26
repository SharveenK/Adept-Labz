import 'package:ajira_interview/bloc/userDetailsBloc/bloc/user_detail_bloc.dart';
import 'package:ajira_interview/utils/common.dart';
import 'package:ajira_interview/view/mypost_overview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPostListScreen extends StatefulWidget {
  const MyPostListScreen({super.key});

  @override
  State<MyPostListScreen> createState() => _MyPostListScreenState();
}

class _MyPostListScreenState extends State<MyPostListScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserDetailBloc(),
      child: Builder(builder: (context) {
        return BlocBuilder<UserDetailBloc, UserDetailState>(
          bloc: BlocProvider.of<UserDetailBloc>(context)
            ..add(const MypostListRequest()),
          builder: (context, state) {
            if (state is MyPostListSuccessState) {
              return ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: state.mypostList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyPostOverviewScreen(
                              postId: index,
                              postDetail: state.mypostList[index],
                            ),
                          ));
                    },
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
                            Text(
                              state.mypostList[index].title,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    )),
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
