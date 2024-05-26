part of 'user_detail_bloc.dart';

sealed class UserDetailState extends Equatable {
  const UserDetailState();

  @override
  List<Object> get props => [];
}

final class UserDetailInitial extends UserDetailState {}

class LoadingScreenState extends UserDetailState {
  const LoadingScreenState();
  @override
  List<Object> get props => [];
}

class ProfileDetailsSuccessState extends UserDetailState {
  final UserProfileDetails userProfileDetails;

  const ProfileDetailsSuccessState(this.userProfileDetails);
  @override
  List<Object> get props => [userProfileDetails];
}

class AlbumDetailsSuccessState extends UserDetailState {
  final List<AlbumDetails> albumDetails;

  const AlbumDetailsSuccessState(this.albumDetails);
  @override
  List<Object> get props => [albumDetails];
}

class AlbumListSuccessState extends UserDetailState {
  final List<AlbumList> albumList;

  const AlbumListSuccessState(this.albumList);
  @override
  List<Object> get props => [albumList];
}

class MyPostListSuccessState extends UserDetailState {
  final List<MypostList> mypostList;

  const MyPostListSuccessState(this.mypostList);
  @override
  List<Object> get props => [mypostList];
}

class CommentDetailSuccess extends UserDetailState {
  final List<CommentsModel> commentDetails;

  const CommentDetailSuccess(this.commentDetails);
  @override
  List<Object> get props => [commentDetails];
}
