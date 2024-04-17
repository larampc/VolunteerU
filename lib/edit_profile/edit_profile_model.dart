import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ry2zx2sh' /* First name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bwt1pqxg' /* First name is required */,
      );
    }

    if (!RegExp('^([A-z0-9])*[^\\s]\\1*\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1239v147' /* First name cannot have 'space' */,
      );
    }
    return null;
  }

  // State field(s) for LatsName widget.
  FocusNode? latsNameFocusNode;
  TextEditingController? latsNameTextController;
  String? Function(BuildContext, String?)? latsNameTextControllerValidator;
  String? _latsNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '0x2fqe7a' /* Last name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '2oy9iwni' /* Last name is required */,
      );
    }

    if (!RegExp('^([A-z0-9])*[^\\s]\\1*\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3ooivc25' /* Last name cannot have 'space' */,
      );
    }
    return null;
  }

  // State field(s) for Course widget.
  FocusNode? courseFocusNode;
  TextEditingController? courseTextController;
  String? Function(BuildContext, String?)? courseTextControllerValidator;
  String? _courseTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'j1h2fu7k' /* Course is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kyow2i7k' /* Course is required */,
      );
    }

    return null;
  }

  // State field(s) for BirthYear widget.
  FocusNode? birthYearFocusNode;
  TextEditingController? birthYearTextController;
  String? Function(BuildContext, String?)? birthYearTextControllerValidator;
  String? _birthYearTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jvetz7sh' /* Birthday year is required */,
      );
    }

    if (!RegExp('^[0-9]{4}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'c81glokt' /* Invalid birthday year */,
      );
    }
    return null;
  }

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'uknxwz5v' /* Name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gl9rehlk' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for Link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
  String? _linkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '44lzwwt8' /* Link is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'f2vxoz14' /* Link is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '2wpzmh7e' /* Invalid link */,
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
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    latsNameTextControllerValidator = _latsNameTextControllerValidator;
    courseTextControllerValidator = _courseTextControllerValidator;
    birthYearTextControllerValidator = _birthYearTextControllerValidator;
    nameTextControllerValidator = _nameTextControllerValidator;
    linkTextControllerValidator = _linkTextControllerValidator;
  }

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    latsNameFocusNode?.dispose();
    latsNameTextController?.dispose();

    courseFocusNode?.dispose();
    courseTextController?.dispose();

    birthYearFocusNode?.dispose();
    birthYearTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();
  }
}
