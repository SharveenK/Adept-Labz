import 'package:ajira_interview/bloc/userDetailsBloc/bloc/user_detail_bloc.dart';
import 'package:ajira_interview/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double _backGroundImageHeight = 0;
  double _profilePictureHeight = 0;
  @override
  Widget build(BuildContext context) {
    _backGroundImageHeight = MediaQuery.of(context).size.height * 0.25;
    _profilePictureHeight = MediaQuery.of(context).size.height * 0.15;
    return _buildProfileScreenFullWidget();
  }

  BlocProvider<UserDetailBloc> _buildProfileScreenFullWidget() {
    return BlocProvider(
      create: (_) => UserDetailBloc(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<UserDetailBloc, UserDetailState>(
            bloc: BlocProvider.of<UserDetailBloc>(context)
              ..add(const ProfileDetailsRequest()),
            builder: (context, state) {
              if (state is ProfileDetailsSuccessState) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildAppBar(context),
                      Card(
                        elevation: 2.5,
                        color: Colors.purple.shade200,
                        child: Column(
                          children: [
                            _buildProfileListTile(
                                state.userProfileDetails.id.toString(), 'ID'),
                            _buildProfileListTile(
                                state.userProfileDetails.name, 'Name'),
                            _buildProfileListTile(
                                state.userProfileDetails.email, 'Email'),
                            _buildProfileListTile(
                                state.userProfileDetails.phone, 'Phone'),
                            _buildProfileListTile(
                                state.userProfileDetails.website, 'Website'),
                            _addressDetails(state),
                            _buildCompanyDetials(state)
                          ],
                        ),
                      )
                    ],
                  ),
                );
              } else {
                return loadingMethod();
              }
            },
          );
        },
      ),
    );
  }

  ListTile _buildCompanyDetials(ProfileDetailsSuccessState state) {
    return ListTile(
      title: const Text('Company'),
      subtitle: Material(
        color: Colors.white38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              title: const Text('Name'),
              trailing: Text(state.userProfileDetails.company.name),
            ),
            ListTile(
              title: const Text(
                'catchPhrase',
              ),
              trailing: Text(state.userProfileDetails.company.catchPhrase),
            ),
            ListTile(
              title: const Text('bs'),
              trailing: Text(state.userProfileDetails.company.bs),
            )
          ],
        ),
      ),
    );
  }

  Widget _addressDetails(ProfileDetailsSuccessState state) {
    return ListTile(
      title: const Text('Address'),
      subtitle: Material(
        color: Colors.white38,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            _buildProfileListTile(
                state.userProfileDetails.address.street, 'Street'),
            _buildProfileListTile(
                state.userProfileDetails.address.suite, 'Suite'),
            _buildProfileListTile(
                state.userProfileDetails.address.city, 'City'),
            _buildProfileListTile(
                state.userProfileDetails.address.zipcode, 'ZipCode'),
            _buildProfileListTile(
                'Lon- ${state.userProfileDetails.address.geo.lon}', 'Location'),
            _buildProfileListTile(
                'Lat- ${state.userProfileDetails.address.geo.lat}', ''),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileListTile(
    String details,
    String title,
  ) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 15),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 30.0),
        child: Text(
          details,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    final double profilePictureOffset =
        _backGroundImageHeight - _profilePictureHeight / 1.25;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        _getBackGroundImage(context),
        _getProfilePicImag(profilePictureOffset)
      ],
    );
  }

  Widget _getBackGroundImage(BuildContext context) {
    return Image.asset(
      'assets/background.png',
      width: MediaQuery.of(context).size.width,
      height: _backGroundImageHeight,
      fit: BoxFit.cover,
    );
  }

  Widget _getProfilePicImag(double profilePictureOffset) {
    return Positioned(
        top: profilePictureOffset,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 1)
            ],
          ),
          child: GestureDetector(
            onTap: () {
              getCameraMethod().then((value) => setState(() {}));
            },
            child: CircleAvatar(
                radius: _profilePictureHeight / 2,
                backgroundColor: Colors.white,
                // ignore: unnecessary_null_comparison
                child: CircleAvatar(
                    radius: _profilePictureHeight / 2 - 5,
                    backgroundImage: profilePicData == null
                        ? Image.asset(
                            'assets/download.png',
                            width: double.infinity,
                            height: _backGroundImageHeight,
                            fit: BoxFit.fill,
                          ).image
                        : Image.memory(profilePicData!).image)),
          ),
        ));
  }
}
