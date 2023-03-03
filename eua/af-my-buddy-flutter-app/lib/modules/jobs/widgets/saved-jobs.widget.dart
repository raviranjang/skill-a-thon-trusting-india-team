import 'package:my_buddy/animations/slide-right.animation.dart';
import 'package:my_buddy/common/widgets/job-list-tem.widget.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-job.dart';

import 'package:my_buddy/modules/jobs/pages/view-job.page.dart';
import 'package:my_buddy/services/user-data.service.dart';
import 'package:flutter/material.dart';

class SavedJobsWidget extends StatefulWidget {
  const SavedJobsWidget({super.key});

  @override
  State<SavedJobsWidget> createState() => _SavedJobsWidgetState();
}

class _SavedJobsWidgetState extends State<SavedJobsWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: (UserDataService().savedJobs ?? []).map((SerializedJob job) {
          return GestureDetector(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                child: JobListItemWidget(
                  job: job,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(SlideRightRoute(
                    page: ViewJobPage(
                  job: job,
                )));
              });
        }).toList(),
      ),
    );
  }
}
