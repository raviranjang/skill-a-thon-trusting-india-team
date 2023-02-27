import 'dart:convert';
import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/modules/wallet/widgets/credential-list-item.widget.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/cloud_wallet_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dsep_reference_flutter/common/widgets/legend-wrapper.widget.dart';

class HolderCredentialsPage extends StatefulWidget {
  const HolderCredentialsPage({super.key});

  @override
  State<HolderCredentialsPage> createState() => _HolderCredentialsPageState();
}

class _HolderCredentialsPageState extends State<HolderCredentialsPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: GlobalConstants.backgroundColor,
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: Icon(
            Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
            color: Colors.white,
          ),
          onTap: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
        title: Text(
          "My Certificates",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => Container(),
          ),
        ],
      ),
      body: Container(
        color: GlobalConstants.backgroundColor.withOpacity(0.1),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 8,
            ),
            child: FutureBuilder(
              future: Provider.of<CloudWalletApi>(
                context,
                listen: false,
              ).walletCredentialsGet(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  List<Map<String, dynamic>> credentialsMapList =
                      (jsonDecode(snapshot.data!.bodyString)
                          .cast<Map<String, dynamic>>());

                  // final List<StoredCredential>? credentials = snapshot.data!.body;
                  return Column(
                    children: credentialsMapList
                        .map((Map<String, dynamic> credentialMap) {
                      return Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(8.0),
                        child: CredentialListItemWidget(
                          credentialMap: credentialMap,
                        ),
                      );
                    }).toList(),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
