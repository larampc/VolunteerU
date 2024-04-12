import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_action_widget.dart' show CreateActionWidget;
import 'package:flutter/material.dart';

class CreateActionModel extends FlutterFlowModel<CreateActionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameController;
  String? Function(BuildContext, String?)? eventNameControllerValidator;
  String? _eventNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cz0vx98s' /* Name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8eflun3x' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  String? _descriptionControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l4mi0cud' /* Description is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'unywo9lb' /* Description is required */,
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
  TextEditingController? durationController;
  String? Function(BuildContext, String?)? durationControllerValidator;
  String? _durationControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'vzkgtubo' /* Duration is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rsp7cy33' /* Duration is required */,
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
    eventNameControllerValidator = _eventNameControllerValidator;
    descriptionControllerValidator = _descriptionControllerValidator;
    durationControllerValidator = _durationControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventNameFocusNode?.dispose();
    eventNameController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();

    durationFocusNode?.dispose();
    durationController?.dispose();
  }
}
