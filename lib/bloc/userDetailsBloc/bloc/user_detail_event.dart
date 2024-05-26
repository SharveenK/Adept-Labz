part of 'user_detail_bloc.dart';

sealed class UserDetailEvent extends Equatable {
  const UserDetailEvent();

  @override
  List<Object> get props => [];
}

class ProfileDetailsRequest extends UserDetailEvent {
  const ProfileDetailsRequest();
  @override
  List<Object> get props => [];
}

class AlbumListDetailsRequest extends UserDetailEvent {
  const AlbumListDetailsRequest(this.albumId);
  final int albumId;
  @override
  List<Object> get props => [];
}

class AlbumListRequest extends UserDetailEvent {
  const AlbumListRequest();
  @override
  List<Object> get props => [];
}

class MypostListRequest extends UserDetailEvent {
  const MypostListRequest();
  @override
  List<Object> get props => [];
}

class CommentDetailRequest extends UserDetailEvent {
  const CommentDetailRequest(this.postId);
  final int postId;
  @override
  List<Object> get props => [postId];
}
