import '/flutter_flow/flutter_flow_util.dart';
import 'details_event_widget.dart' show DetailsEventWidget;
import 'package:flutter/material.dart';

class DetailsEventModel extends FlutterFlowModel<DetailsEventWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
