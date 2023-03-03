import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/modules/jobs/widgets/applied-jobs.widget.dart';
import 'package:my_buddy/modules/jobs/widgets/job-list.widget.dart';
import 'package:my_buddy/modules/jobs/widgets/saved-jobs.widget.dart';
import 'package:my_buddy/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagementapi;
import 'package:flutter/material.dart';

class JobsDashboardWidget extends StatefulWidget {
  final String? filterName;
  const JobsDashboardWidget({
    super.key,
    this.filterName,
  });

  @override
  State<JobsDashboardWidget> createState() => _JobsDashboardWidgetState();
}

class _JobsDashboardWidgetState extends State<JobsDashboardWidget> {
  bool _pageInitialized = false;
  // List<JobSummary>? _courses;
  String? _currentStatusFilterName;
  List<String>? _filterNames = ["ALL JOBS", "WATCHED", "APPLIED"];

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      setState(() {
        _currentStatusFilterName = widget.filterName ?? "ALL JOBS";
      });
      // _loadJobs();
      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  // final _controller = PageController();

  // _loadJobs() {
  //   switch (_currentStatusFilterName!) {
  //     case 'ALL JOBS':
  //       {
  //         _controller.animateToPage(
  //           1,
  //           duration: const Duration(milliseconds: 300),
  //           curve: Curves.ease,
  //         );
  //         break;
  //       }
  //     case 'WATCHED':
  //       {
  //         _controller.animateToPage(
  //           1,
  //           duration: const Duration(milliseconds: 300),
  //           curve: Curves.ease,
  //         );
  //         break;
  //       }
  //     case 'APPLIED':
  //       {
  //         _controller.animateToPage(
  //           2,
  //           duration: const Duration(milliseconds: 300),
  //           curve: Curves.ease,
  //         );

  //         break;
  //       }
  //   }
  //   return;
  // }

  _buildJobsListWidget() {
    switch (_currentStatusFilterName!) {
      case 'ALL JOBS':
        {
          return const JobListWidget();
        }
      case 'WATCHED':
        {
          return const SavedJobsWidget();
        }
      case 'APPLIED':
        {
          return const AppliedJobsWidget();
        }
      default:
        {
          return Container();
        }
    }
  }

  Widget _buildStatusFilters() {
    return Container(
      // width: 150,
      // height: 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: (_filterNames ?? []).map((String filterName) {
            return Container(
              height: 34,
              margin: const EdgeInsets.all(4.0),
              child: ActionChip(
                backgroundColor: ((_currentStatusFilterName != null) &&
                        (_currentStatusFilterName == filterName))
                    ? GlobalConstants.backgroundColor
                    : Theme.of(context).colorScheme.onInverseSurface,
                label: Text(
                  filterName.toUpperCase(),
                  style: TextStyle(
                    color: ((_currentStatusFilterName != null) &&
                            (_currentStatusFilterName == filterName))
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: ((_currentStatusFilterName != null) &&
                          (_currentStatusFilterName == filterName))
                      ? BorderSide.none
                      : const BorderSide(
                          width: 0.2,
                          color: Colors.black54,
                        ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      50,
                    ),
                  ),
                ),
                onPressed: () {
                  if (_currentStatusFilterName != filterName) {
                    setState(() {
                      _currentStatusFilterName = filterName;
                    });
                    // _loadJobs();
                  }
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 40,
          color: GlobalConstants.backgroundColor.withOpacity(0.1),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: const Text(
            "Jobs",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          color: GlobalConstants.backgroundColor.withOpacity(0.1),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: _buildStatusFilters(),
        ),
        Expanded(
          child: _buildJobsListWidget(),
        )
      ],
    );
  }
}
