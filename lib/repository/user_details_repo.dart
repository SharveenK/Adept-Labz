import 'package:ajira_interview/models/album_details.dart';
import 'package:ajira_interview/models/album_list_model.dart';
import 'package:ajira_interview/models/comments_model.dart';
import 'package:ajira_interview/models/my_post_list.dart';
import 'package:ajira_interview/models/user_details.dart';
import 'package:ajira_interview/providers/api_provider.dart';

class UserDetailsRepo {
  Future<List<UserProfileDetails>> getProfileDetails() async {
    final String response =
        await getRequest('https://jsonplaceholder.typicode.com/users?id=1');

    return UserProfileDetails.fromJson(response);
  }

  Future<List<AlbumDetails>> getAlbumDetails(int albumId) async {
    final String response = await getRequest(
        'https://jsonplaceholder.typicode.com/photos?albumId=$albumId');
    return AlbumDetails.fromJson(response);
  }

  Future<List<AlbumList>> getAlbumList() async {
    final String response = await getRequest(
        'https://jsonplaceholder.typicode.com/albums?userId=1');
    return AlbumList.fromJson(response);
  }

  Future<List<MypostList>> getMypostList() async {
    final String response =
        await getRequest('https://jsonplaceholder.typicode.com/posts?userId=1');
    return MypostList.fromJson(response);
  }

  Future<List<CommentsModel>> getCommentDetails(int i) async {
    final String response = await getRequest(
        'https://jsonplaceholder.typicode.com/comments?postId=$i');
    return CommentsModel.fromJson(response);
  }
}
