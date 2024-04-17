import '/flutter_flow/flutter_flow_util.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? latsNameController;
  String? Function(BuildContext, String?)? latsNameControllerValidator;
  String? _latsNameControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? courseController;
  String? Function(BuildContext, String?)? courseControllerValidator;
  String? _courseControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? birthYearController;
  String? Function(BuildContext, String?)? birthYearControllerValidator;
  String? _birthYearControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? linkController;
  String? Function(BuildContext, String?)? linkControllerValidator;
  String? _linkControllerValidator(BuildContext context, String? val) {
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
    firstNameControllerValidator = _firstNameControllerValidator;
    latsNameControllerValidator = _latsNameControllerValidator;
    courseControllerValidator = _courseControllerValidator;
    birthYearControllerValidator = _birthYearControllerValidator;
    nameControllerValidator = _nameControllerValidator;
    linkControllerValidator = _linkControllerValidator;
  }

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    latsNameFocusNode?.dispose();
    latsNameController?.dispose();

    courseFocusNode?.dispose();
    courseController?.dispose();

    birthYearFocusNode?.dispose();
    birthYearController?.dispose();

    nameFocusNode?.dispose();
    nameController?.dispose();

    linkFocusNode?.dispose();
    linkController?.dispose();
  }
}
