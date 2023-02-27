import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-job.dart';

import 'package:flutter/material.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart';

class JobListItemWidget extends StatefulWidget {
  final SerializedJob? job;
  const JobListItemWidget({super.key, required this.job});

  @override
  State<JobListItemWidget> createState() => _JobListItemWidgetState();
}

class _JobListItemWidgetState extends State<JobListItemWidget> {
  Widget? _buildCompanyImage() {
    Widget? childWidget;
    if ((widget.job != null) && (widget.job!.companyLogo != null)) {
      childWidget = Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: NetworkImage(
              widget.job!.companyLogo!,
            ),
          ),
        ),
      );
    } else {
      childWidget = Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              40,
            ),
          ),
          border: Border.all(
            width: 0.2,
            color: Colors.black26,
          ),
        ),
        child: const Icon(
          Icons.account_circle_sharp,
          size: 40,
          color: Colors.black54,
        ),
      );
    }
    return childWidget;
    // Container(
    //   height: 50,
    //   width: 50,
    //   child: childWidget,
    // );
  }

  @override
  Widget build(BuildContext context) {
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
                    content: widget.job!.role,
                    overflowEllipsisFlag: true,
                    maxLines: 1,
                    height: 0.8,
                  ),
                  (widget.job!.fulfillmentCategory != null)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: (widget.job!.fulfillmentCategory ?? [])
                              .asMap()
                              .map((int index,
                                  JobFulfillmentCategory fulfillmentCategory) {
                                return MapEntry(
                                  index,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        (fulfillmentCategory.type ?? '')
                                            .toLowerCase(),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      (index !=
                                              (widget.job!.fulfillmentCategory!
                                                      .length -
                                                  1))
                                          ? Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 6,
                                              ),
                                              child: Container(
                                                height: 4,
                                                width: 4,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(4),
                                                  ),
                                                  color: Colors.black54,
                                                ),
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                );
                              })
                              .values
                              .toList())
                      : DecoratedTextWidget(
                          content: widget.job!.description,
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
              child: const Icon(
                Icons.bookmark_add_outlined,
              ),
            ),
          ],
        ),
        ListTile(
          leading: _buildCompanyImage(),
          dense: true,
          title: Text(widget.job!.company),
          subtitle: Text(
            (widget.job!.city ?? "") + ", " + (widget.job!.state ?? ""),
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }
}
