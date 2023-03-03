import 'package:my_buddy/common/app_strings.dart';
import 'package:my_buddy/common/assets.dart';
import 'package:my_buddy/common/extensions.dart';
import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/modules/profile/widgets/user-profile-list-tile.dart';
import 'package:my_buddy/common/widgets/custom-app-bar.widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          appBarTitle: AppStrings.settings,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              UserProfileListTile(
                leadingIcon: Svgs.icProfileVisibility,
                title: AppStrings.profileVisibility,
                showTrailingIcon: false,
                onPressed: () {},
              ),
              UserProfileListTile(
                leadingIcon: Svgs.icChangePwd,
                title: AppStrings.changePwd,
                showTrailingIcon: false,
                onPressed: () {},
              ),
              UserProfileListTile(
                leadingIcon: Svgs.icChangeLang,
                title: AppStrings.language,
                showTrailingIcon: false,
                onPressed: () {},
              ),
              UserProfileListTile(
                leadingIcon: Svgs.icPrivacy,
                title: AppStrings.privacy,
                showTrailingIcon: false,
                onPressed: () {},
              ),
              UserProfileListTile(
                leadingIcon: Svgs.icTnc,
                title: AppStrings.tnc,
                showTrailingIcon: false,
                onPressed: () {},
              ),
              UserProfileListTile(
                leadingIcon: Svgs.icHelpCenter,
                title: AppStrings.helpCenter,
                showTrailingIcon: false,
                onPressed: () {},
              ),
              const Divider(
                color: GlobalConstants.lavenderPinocchio,
              ).paddingSymmetric(horizontal: 20).paddingOnly(bottom: 16),
              UserProfileListTile(
                leadingIcon: Svgs.icDeleteAccount,
                title: AppStrings.deleteAccount,
                showTrailingIcon: false,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
