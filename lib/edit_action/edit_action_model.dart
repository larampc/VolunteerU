import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_action_widget.dart' show EditActionWidget;
import 'package:flutter/material.dart';

class EditActionModel extends FlutterFlowModel<EditActionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameTextController;
  String? Function(BuildContext, String?)? eventNameTextControllerValidator;
  String? _eventNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '3olao78x' /* Name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1bfjd183' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9l6di66n' /* Description is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zafsev1k' /* Description is required */,
      );
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  DateTime? datePicked;
  // State field(s) for duration widget.
  FocusNode? durationFocusNode;
  TextEditingController? durationTextController;
  String? Function(BuildContext, String?)? durationTextControllerValidator;
  String? _durationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ru18d3kq' /* Duration is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '4xtf1f2o' /* Duration is required */,
      );
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    eventNameTextControllerValidator = _eventNameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    durationTextControllerValidator = _durationTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventNameFocusNode?.dispose();
    eventNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    durationFocusNode?.dispose();
    durationTextController?.dispose();
  }
}
