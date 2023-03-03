import 'dart:convert';
import 'dart:io';

import 'package:my_buddy/swagger_models_apis/cloud_wallet_api.swagger.dart';
import 'package:my_buddy/common/widgets/legend-wrapper.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HolderCredentialDetailPage extends StatefulWidget {
  final Map<String, dynamic>? credentialMap;
  const HolderCredentialDetailPage({
    super.key,
    required this.credentialMap,
  });

  @override
  State<HolderCredentialDetailPage> createState() =>
      _HolderCredentialDetailPageState();
}

class _HolderCredentialDetailPageState
    extends State<HolderCredentialDetailPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> _credentialSubject =
        widget.credentialMap!["credentialSubject"];
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: Icon(
                Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              ),
              onTap: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              }),
          title: Text(
            ("Credential Detail"),
          ),
          actions: [
            Builder(
              builder: (context) => Container(),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: (widget.credentialMap!["type"] as List<dynamic>)
                    .asMap()
                    .map((int index, dynamic type) {
                      return MapEntry(
                        index,
                        Text(
                          (type as String) +
                              ((index <
                                      (widget.credentialMap!["type"].length -
                                          1))
                                  ? ', '
                                  : ''),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    })
                    .values
                    .toList(),
              ),
              const SizedBox(
                height: 6,
              ),
              FutureBuilder(
                future: Provider.of<CloudWalletApi>(
                  context,
                  listen: false,
                ).walletCredentialsIdSharePost(
                  id: widget.credentialMap!['id'],
                  body: null,
                ),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    ShareCredentialOutput? output = snapshot.data!.body;
                    debugPrint("shareCredentialOutput: " +
                        jsonEncode(output!.toJson()));
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.memory(Base64Decoder()
                            .convert(output!.qrCode.split(',').last)),
                      ],
                    );
                  } else {
                    return Container();
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              LegendWrapperWidget(
                title: "Event",
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 6,
                    ),
                    Text(_credentialSubject["eventName"]),
                    Text(
                      _credentialSubject["eventDescription"],
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Place",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(_credentialSubject["place"]),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Date",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(_credentialSubject["date"]),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              LegendWrapperWidget(
                title: "Ticket Holder",
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const SizedBox(
                      height: 6,
                    ),
                    Text(_credentialSubject["name"]),
                    Text(_credentialSubject["email"]),
                    const SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
