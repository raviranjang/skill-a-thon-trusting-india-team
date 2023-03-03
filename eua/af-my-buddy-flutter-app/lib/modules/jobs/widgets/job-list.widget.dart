import 'dart:convert';
import 'dart:math';

import 'package:chopper/chopper.dart';
import 'package:my_buddy/animations/slide-bottom.animation.dart';
import 'package:my_buddy/animations/slide-right.animation.dart';
import 'package:my_buddy/common/widgets/decorated-text.widget.dart';
import 'package:my_buddy/common/widgets/job-list-tem.widget.dart';
import 'package:my_buddy/common/widgets/loading-animation.widget.dart';

import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-job.dart';
import 'package:my_buddy/modules/jobs/pages/view-job.page.dart';
import 'package:my_buddy/modules/jobs/services/jobs-data.service.dart';
import 'package:my_buddy/modules/jobs/widgets/job-filters.widget.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.models.swagger.dart'
    as jobseekermodels;
import 'package:flutter_svg/svg.dart';
import 'package:rxdart/rxdart.dart';

class JobListWidget extends StatefulWidget {
  const JobListWidget({super.key});

  @override
  State<JobListWidget> createState() => _JobListWidgetState();
}

class _JobListWidgetState extends State<JobListWidget> {
  bool _pageInitialized = false;
  // List<JobSummary>? _jobs;

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      // CompanyLocation location = CompanyLocation(city: "Bangalore");
      // List<CompanyLocation> companylocations = [];
      // companylocations.add(location);

      // SearchJob$Company company =
      //     SearchJob$Company(name: "Affinidi", locations: companylocations);
      // NameCode skill = NameCode(name: "Flutter");
      // List<NameCode> skills = [];
      // skills.add(skill);

      SearchJob? _searchJobBody = SearchJob(
        title: SearchJob$Title(key: "Manager"),
        // company: company,
        // skills: skills,
      );

      JobsDataService().updateSearchJobInput(searchJobInput: _searchJobBody);
      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  bool _streamControllerFlag = true;
  bool streamControllerCondition(dynamic i) {
    return _streamControllerFlag;
  }

  @override
  dispose() {
    _streamControllerFlag = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 40,
              color: GlobalConstants.backgroundColor.withOpacity(0.1),
            ),
            Container(
              height: 80,
              width: (MediaQuery.of(context).size.width - 30),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: DecoratedTextWidget(
                            content: "Manager",
                            textColor: Colors.black45,
                            maxLines: 1,
                            overflowEllipsisFlag: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    SlideBottomRoute(
                      page: const JobFiltersWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: StreamBuilder(
            stream: CombineLatestStream.list([
              JobsDataService()
                  .loadingInProgressFlag$
                  .takeWhile(streamControllerCondition),
              JobsDataService().alljobs$.takeWhile(streamControllerCondition),
            ]).takeWhile(streamControllerCondition),
            builder: (BuildContext context, AsyncSnapshot ss) {
              if ((ss.data != null) && (ss.data != null)) {
                bool? loadingInProgressFlag = ss.data[0] as bool?;
                List<SerializedJob>? jobs = ss.data[1] as List<SerializedJob>?;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (!(loadingInProgressFlag ?? false))
                        ? (((jobs ?? []).length == 0)
                            ? Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(
                                  top: 100,
                                ),
                                child: SvgPicture.asset(
                                  'assets/svgs/no_results.svg',
                                  height: 180,
                                ),
                              )
                            : Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 6,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      ((jobs ?? []).length.toString() +
                                          " jobs found"),
                                    ),
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                          'assets/svgs/ic_filter.svg'),
                                      onTap: () {
                                        Navigator.of(context).push(
                                          SlideBottomRoute(
                                            page: const JobFiltersWidget(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ))
                        : Container(),
                    Expanded(
                      child: (loadingInProgressFlag ?? false)
                          ? LoadingAnimationWidget()
                          : SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: (jobs ?? []).map((job) {
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
                                        Navigator.of(context)
                                            .push(SlideRightRoute(
                                                page: ViewJobPage(
                                          job: job,
                                        )));
                                      });
                                  ;
                                }).toList(),
                              ),
                            ),
                    ),
                  ],
                );
              } else {
                return Container();
              }
            },
          ),
        ),
      ],
    );
  }
}
