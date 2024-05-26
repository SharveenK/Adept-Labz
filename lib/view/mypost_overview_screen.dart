import 'package:ajira_interview/bloc/userDetailsBloc/bloc/user_detail_bloc.dart';
import 'package:ajira_interview/models/my_post_list.dart';
import 'package:ajira_interview/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyPostOverviewScreen extends StatefulWidget {
  const MyPostOverviewScreen(
      {super.key, required this.postId, required this.postDetail});
  final int postId;
  final MypostList postDetail;
  @override
  State<MyPostOverviewScreen> createState() => _MyPostOverviewScreenState();
}

class _MyPostOverviewScreenState extends State<MyPostOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tweet'),
      ),
      body: BlocProvider<UserDetailBloc>(
        create: (_) => UserDetailBloc(),
        child: Builder(
          builder: (context) {
            return BlocBuilder(
              bloc: BlocProvider.of<UserDetailBloc>(context)
                ..add(CommentDetailRequest(widget.postId)),
              builder: (context, state) {
                if (state is CommentDetailSuccess) {
                  return Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            CircleAvatar(
                                radius: 30,
                                child: widget.postId.isEven
                                    ? Image.asset('assets/bookwithman.png')
                                    : Image.asset('assets/peoples.png')),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    userName,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    userEmail,
                                    style: const TextStyle(
                                        color: Colors.black45, fontSize: 15),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        trailing:
                            const Icon(Icons.arrow_drop_down_circle_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.postDetail.body,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              wordSpacing: 10),
                        ),
                      ),
                      const Divider(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              state.commentDetails.length.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '  Retweets with comments',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  ListTile(
                                    title: Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 30,
                                            child: index.isEven
                                                ? Image.asset(
                                                    'assets/bookwithman.png')
                                                : Image.asset(
                                                    'assets/peoples.png')),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state
                                                    .commentDetails[index].name,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                state.commentDetails[index]
                                                    .email,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    color: Colors.black45,
                                                    fontSize: 15),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child:
                                        Text(state.commentDetails[index].body),
                                  )
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const Divider(),
                            itemCount: state.commentDetails.length),
                      )
                    ],
                  );
                }
                return loadingMethod();
              },
            );
          },
        ),
      ),
    );
  }
}
