import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dsep_reference_flutter/animations/slide-bottom.animation.dart';
import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/legend-wrapper.widget.dart';
import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/modules/wallet/widgets/selectable-credential-item.widget.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/cloud_wallet_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class SelectMultipleCertificatesWithOverlayWidget extends StatefulWidget {
  final List<String>? claimIds;
  final Function(List<String>?) credentialsselected;

  SelectMultipleCertificatesWithOverlayWidget({
    required this.claimIds,
    required this.credentialsselected,
  });
  @override
  _SelectMultipleCertificatesWithOverlayWidgetState createState() =>
      _SelectMultipleCertificatesWithOverlayWidgetState();
}

class _SelectMultipleCertificatesWithOverlayWidgetState
    extends State<SelectMultipleCertificatesWithOverlayWidget> {
  List<Map<String, dynamic>> _allcredentials = [];
  List<Map<String, dynamic>> _selectedcredentials = [];

  bool _loadingFlag = false;
  @override
  void initState() {
    setState(() {
      _loadingFlag = true;
    });
    Provider.of<CloudWalletApi>(
      context,
      listen: false,
    ).walletCredentialsGet().then((Response<List<StoredCredential>> response) {
      _allcredentials =
          (jsonDecode(response.bodyString).cast<Map<String, dynamic>>());

      setState(() {
        _loadingFlag = false;
      });
      init();
    });

    super.initState();
  }

  @override
  didUpdateWidget(SelectMultipleCertificatesWithOverlayWidget oldWidget) {
    // if ((widget.claimIds != null) && (widget.claimIds.le != oldWidget.claimIds)) {
    //   debugPrint("init triggered on didUpdateWidget");
    init();
    // }
    super.didUpdateWidget(oldWidget);
  }

  init() {
    setState(() {
      _selectedcredentials = [];
      (widget.claimIds ?? []).forEach((String claimId) {
        _allcredentials.forEach((Map<String, dynamic> allCredential) {
          if (allCredential["id"] == claimId) {
            _selectedcredentials.add(allCredential);
          }
        });
      });
    });
    debugPrint("_selectedcredentials.length: " +
        _selectedcredentials.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return LegendWrapperWidget(
      title: 'Attachments',
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _selectedcredentials.map((cred) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 40,
                        child: Icon(
                          Icons.verified_outlined,
                        ),
                      ),
                      DecoratedTextWidget(
                        content: cred["credentialSubject"]["coursename"] ??
                            "Course Name",
                        maxLines: 1,
                        overflowEllipsisFlag: true,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            height: 34,
            margin: const EdgeInsets.all(4.0),
            alignment: Alignment.center,
            child: ActionChip(
              backgroundColor: GlobalConstants.backgroundColor,
              label: const Text(
                "ATTACH CERTIFICATES",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
              shape: const RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    50,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(
                  SlideBottomRoute(
                    page: SelectMultipleCertificatesOverlayPage(
                      claimIds: widget.claimIds ?? [],
                      credentials: _allcredentials,
                    ),
                  ),
                )
                    .then((dynamic resp) {
                  if (resp != null) {
                    debugPrint("selected claims on popup of overlay: " +
                        (resp as List<String>).length.toString());

                    widget.credentialsselected(resp as List<String>);
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SelectMultipleCertificatesOverlayPage extends StatefulWidget {
  final List<Map<String, dynamic>> credentials;
  final List<String> claimIds;

  SelectMultipleCertificatesOverlayPage({
    required this.claimIds,
    required this.credentials,
  });
  @override
  _SelectMultipleCertificatesOverlayPageState createState() =>
      _SelectMultipleCertificatesOverlayPageState(selectedclaims: claimIds);
}

class _SelectMultipleCertificatesOverlayPageState
    extends State<SelectMultipleCertificatesOverlayPage> {
  List<String> selectedclaims;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  _SelectMultipleCertificatesOverlayPageState({
    required this.selectedclaims,
  });
  ScrollController _scrollController = ScrollController();
  double _dividerHeight = 4.0;
  String _visibleCertificatesRange = "";
  bool _pageInitialized = false;
  @override
  dispose() {
    super.dispose();
  }

  @override
  didChangeDependencies() {
    if (!_pageInitialized) {
      double toolbarHeight = 40 + _dividerHeight + 40 + 40;
      double _availableHeight =
          MediaQuery.of(context).size.height - toolbarHeight;

      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: GlobalConstants.backgroundColor,
        title: const Text(
          "Select Certificates",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.clear_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: widget.credentials.map((e) {
                    bool selected = false;
                    for (String claimId in selectedclaims) {
                      if (e["id"] == claimId) {
                        selected = true;
                      }
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: SelectableCredentialItemWidget(
                        credential: e,
                        onCredentialSelected: ({
                          required Map<String, dynamic> credential,
                        }) {
                          setState(() {
                            selectedclaims.add(credential["id"]);
                          });
                        },
                        onCredentialRemoved: ({
                          required Map<String, dynamic> credential,
                        }) {
                          setState(() {
                            selectedclaims.removeWhere((selectedclaim) =>
                                selectedclaim == credential["id"]);
                          });
                        },
                        selected: selected,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    child: OutlinedButton(
                      onPressed: () {
                        debugPrint("selected claims length on DONE popup: " +
                            selectedclaims.length.toString());
                        Navigator.of(context).pop(selectedclaims);
                      },
                      child: const Text(
                        "DONE",
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: DecoratedTextWidget(
                        content: "CANCEL",
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
