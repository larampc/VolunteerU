import '/flutter_flow/flutter_flow_util.dart';
import 'check_participants_widget.dart' show CheckParticipantsWidget;
import 'package:flutter/material.dart';

class CheckParticipantsModel extends FlutterFlowModel<CheckParticipantsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
