import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-job.dart';

import 'package:flutter/material.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CredentialListItemWidget extends StatefulWidget {
  final Map<String, dynamic>? credentialMap;
  const CredentialListItemWidget({super.key, required this.credentialMap});

  @override
  State<CredentialListItemWidget> createState() =>
      _CredentialListItemWidgetState();
}

class _CredentialListItemWidgetState extends State<CredentialListItemWidget> {
  Widget? _buildCompanyImage() {
    // Widget? childWidget;
    // if ((widget.job != null) && (widget.job!.companyLogo != null)) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/sunbird-stamp.png"),
        ),
      ),
    );
    // );
    // } else {
    // return Container(
    //   height: 40,
    //   width: 40,
    //   decoration: BoxDecoration(
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(
    //         40,
    //       ),
    //     ),
    //     border: Border.all(
    //       width: 0.2,
    //       color: Colors.black26,
    //     ),
    //   ),
    //   child: const Icon(
    //     Icons.account_circle_sharp,
    //     size: 40,
    //     color: Colors.black54,
    //   ),
    // );
    // }
    // return childWidget;
    // Container(
    //   height: 50,
    //   width: 50,
    //   child: childWidget,
    // );
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> _credentialSubject =
        widget.credentialMap!["credentialSubject"];

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DecoratedTextWidget(
                    content: _credentialSubject['coursename'] ?? "Course Name",
                    overflowEllipsisFlag: true,
                    maxLines: 1,
                    height: 0.8,
                  ),
                  DecoratedTextWidget(
                    content: _credentialSubject['courseprovider'] ??
                        "Course Provider",
                    fontSize: 10,
                    // height: 0.8,
                    overflowEllipsisFlag: true,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              child: SvgPicture.asset(
                'assets/sunbird-logo.svg',
                width: 24.0,
                height: 24.0,
                // color: Colors.black,
              ),
            ),
          ],
        ),
        ListTile(
          leading: _buildCompanyImage(),
          dense: true,
          title: Text(_credentialSubject["skills"] ?? "Skills"),
          subtitle: Text(
            _credentialSubject["completiondate"] ?? "Completion Date",
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }
}
