import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';

class SelectableCredentialItemWidget extends StatefulWidget {
  final Map<String, dynamic>? credential;
  final int? itemHeight;
  final int? itemWidth;
  final bool? selected;
  final void Function({required Map<String, dynamic> credential})
      onCredentialSelected;
  final void Function({required Map<String, dynamic> credential})
      onCredentialRemoved;

  const SelectableCredentialItemWidget({
    Key? key,
    required this.credential,
    required this.onCredentialSelected,
    required this.onCredentialRemoved,
    required this.selected,
    this.itemHeight,
    this.itemWidth,
  }) : super(key: key);

  @override
  _SelectableCredentialItemWidgetState createState() =>
      _SelectableCredentialItemWidgetState();
}

class _SelectableCredentialItemWidgetState
    extends State<SelectableCredentialItemWidget> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  Border border = Border.all(
    color: GlobalConstants.backgroundColor,
    width: 0.5,
  );
  bool _pageInitialized = false;
  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      recheck();
      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  @override
  didUpdateWidget(SelectableCredentialItemWidget oldWidget) {
    if (widget.selected != oldWidget.selected) {
      recheck();
    }
    super.didUpdateWidget(oldWidget);
  }

  recheck() {
    if ((widget.selected != null) && widget.selected!) {
      setState(() {
        backgroundColor = Theme.of(context).colorScheme.secondaryContainer;
        textColor = Theme.of(context).colorScheme.onSecondaryContainer;
        border = Border.all(
          width: 0,
        );
      });
    } else {
      setState(() {
        backgroundColor = Colors.white;
        textColor = Colors.black87;
        border = Border.all(
          color: Theme.of(context).colorScheme.outline,
          width: 0.5,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? _credentialSubject =
        widget.credential!["credentialSubject"];

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        height: ((widget.itemHeight ?? 60) * 1.0),
        width: ((widget.itemWidth ?? 300) * 1.0),
        child: Row(
          children: <Widget>[
            // Container(
            //   padding: const EdgeInsets.all(6.0),
            //   child: selectIconWidget,
            // ),
            Container(
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
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DecoratedTextWidget(
                    content: _credentialSubject!["coursename"] ?? "Course Name",
                    textAlign: TextAlign.left,
                    textColor: textColor,
                    maxLines: 1,
                    overflowEllipsisFlag: true,
                    height: 0.6,
                    uppercase: true,
                    bold: true,
                    fontSize: 12,
                  ),
                  DecoratedTextWidget(
                    content: _credentialSubject["completiondate"] ??
                        "Completion Date",
                    textAlign: TextAlign.left,
                    textColor: textColor,
                    fontSize: 10,
                    maxLines: 2,
                    overflowEllipsisFlag: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        if (!widget.selected!) {
          widget.onCredentialSelected(
            credential: widget.credential!,
          );
        } else {
          widget.onCredentialRemoved(
            credential: widget.credential!,
          );
        }
      },
    );
  }
}
