import 'dart:async';
import 'package:ajira_interview/models/album_details.dart';
import 'package:ajira_interview/models/album_list_model.dart';
import 'package:ajira_interview/models/comments_model.dart';
import 'package:ajira_interview/models/my_post_list.dart';
import 'package:ajira_interview/models/user_details.dart';
import 'package:ajira_interview/repository/user_details_repo.dart';
import 'package:ajira_interview/utils/common.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_detail_event.dart';
part 'user_detail_state.dart';

class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  UserDetailBloc() : super(UserDetailInitial()) {
    on<UserDetailEvent>((event, emit) {});
    on<ProfileDetailsRequest>(_userDetailsRequest);
    on<AlbumListDetailsRequest>(_albumListDetailsRequest);
    on<AlbumListRequest>(_albumListRequest);
    on<MypostListRequest>(
      _mypostListRequest,
    );
    on<CommentDetailRequest>(
      _commentDetailRequest,
    );
  }

  Future<void> _commentDetailRequest(CommentDetailRequest event, emit) async {
    emit(const LoadingScreenState());
    List<CommentsModel> commentDetails =
        await userDetailsRepo.getCommentDetails(event.postId);
    emit(CommentDetailSuccess(commentDetails));
  }

  Future<void> _mypostListRequest(MypostListRequest event, emit) async {
    emit(const LoadingScreenState());
    List<MypostList> mypostList = await userDetailsRepo.getMypostList();
    emit(MyPostListSuccessState(mypostList));
  }

  Future<void> _albumListRequest(event, emit) async {
    emit(const LoadingScreenState());
    List<AlbumList> albumList = await userDetailsRepo.getAlbumList();
    emit(AlbumListSuccessState(albumList));
  }

  Future<void> _albumListDetailsRequest(
      AlbumListDetailsRequest event, emit) async {
    emit(const LoadingScreenState());
    List<AlbumDetails> albumDetails =
        await userDetailsRepo.getAlbumDetails(event.albumId);
    emit(AlbumDetailsSuccessState(albumDetails));
  }

  Future<void> _userDetailsRequest(event, emit) async {
    emit(const LoadingScreenState());
    List<UserProfileDetails> userProfileDetails =
        await userDetailsRepo.getProfileDetails();
    userName = userProfileDetails[0].name;
    userEmail = userProfileDetails[0].email;
    emit(ProfileDetailsSuccessState(userProfileDetails[0]));
  }

  UserDetailsRepo userDetailsRepo = UserDetailsRepo();
}
