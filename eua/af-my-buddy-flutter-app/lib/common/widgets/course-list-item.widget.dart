import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';

import 'package:flutter/material.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart'
    as jobseekerapi;
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.models.swagger.dart'
    as usermanagementapi;

class CourseListItemWidget extends StatefulWidget {
  final usermanagementapi.Course? course;
  const CourseListItemWidget({super.key, required this.course});

  @override
  State<CourseListItemWidget> createState() => _CourseListItemWidgetState();
}

class _CourseListItemWidgetState extends State<CourseListItemWidget> {
  Widget? _buildCourseImage() {
    Widget? childWidget;
    if ((widget.course != null) && (widget.course!.imageUrl != null)) {
      childWidget = Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              widget.course!.imageUrl!,
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
          Icons.menu_book,
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
                    content: widget.course!.title,
                    // height: 0.8,
                  ),
                  DecoratedTextWidget(
                    content: widget.course!.duration,
                    fontSize: 10,
                    height: 0.8,
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
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: _buildCourseImage(),
          dense: true,
          title: Text(widget.course!.providerName ?? ""),
          // subtitle: (widget.course!.categoryName != null)
          //     ? Text(
          //         widget.course!.categoryName,
          //         style: const TextStyle(
          //           color: Colors.black54,
          //         ),
          //       )
          //     : Container(),
        )
      ],
    );
  }
}
