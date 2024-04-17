import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for orgName widget.
  FocusNode? orgNameFocusNode;
  TextEditingController? orgNameTextController;
  String? Function(BuildContext, String?)? orgNameTextControllerValidator;
  String? _orgNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1cnmr6ue' /* Name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bmw95ssl' /* Name is required */,
      );
    }

    return null;
  }

  // State field(s) for phoneOrg widget.
  FocusNode? phoneOrgFocusNode;
  TextEditingController? phoneOrgTextController;
  String? Function(BuildContext, String?)? phoneOrgTextControllerValidator;
  String? _phoneOrgTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gvje3lps' /* Phone number is required */,
      );
    }

    if (!RegExp('^[0-9]{9}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7jvtfqjq' /* Invalid phone number */,
      );
    }
    return null;
  }

  // State field(s) for link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
  String? _linkTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oxck2a6o' /* Link is required */,
      );
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'zgqeb1cz' /* Invalid link */,
      );
    }
    return null;
  }

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'unlvpvyi' /* First name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o68tomgr' /* First name is required */,
      );
    }

    if (!RegExp('^([A-z0-9])*[^\\s]\\1*\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5mu0631g' /* First name cannot have 'space' */,
      );
    }
    return null;
  }

  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  String? _lastNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hll5obpb' /* Last Name is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n1px7ljk' /* Last Name is requiredLast Name... */,
      );
    }

    if (!RegExp('^([A-z0-9])*[^\\s]\\1*\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1ainb3xs' /* Last name cannot have 'space' */,
      );
    }
    return null;
  }

  // State field(s) for phoneStudent widget.
  FocusNode? phoneStudentFocusNode;
  TextEditingController? phoneStudentTextController;
  String? Function(BuildContext, String?)? phoneStudentTextControllerValidator;
  String? _phoneStudentTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cyu5d8ap' /* Invalid phone number */,
      );
    }

    if (!RegExp('^[0-9]{9}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'qgtq271t' /* Invalid phone number */,
      );
    }
    return null;
  }

  // State field(s) for birthday widget.
  FocusNode? birthdayFocusNode;
  TextEditingController? birthdayTextController;
  String? Function(BuildContext, String?)? birthdayTextControllerValidator;
  String? _birthdayTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7im3ur2v' /* Birthday year is required */,
      );
    }

    if (!RegExp('^[0-9]{4}\$').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'i5x6fyyo' /* Invalid birthday year */,
      );
    }
    return null;
  }

  // State field(s) for course widget.
  FocusNode? courseFocusNode;
  TextEditingController? courseTextController;
  String? Function(BuildContext, String?)? courseTextControllerValidator;
  String? _courseTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yheobf28' /* Course is required */,
      );
    }

    if (val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9hyn1rzh' /* Course is required */,
      );
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lqehfxmv' /* Email is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'tl9umto4' /* Invalid email */,
      );
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'cqnxl9mq' /* Password must have at least 6 ... */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'tjszvgis' /* Password must have at least 6 ... */,
      );
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  String? _passwordConfirmTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ej1z40fr' /* Password must have at least 6 ... */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'rb4ucz9h' /* Password must have at least 6 ... */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    orgNameTextControllerValidator = _orgNameTextControllerValidator;
    phoneOrgTextControllerValidator = _phoneOrgTextControllerValidator;
    linkTextControllerValidator = _linkTextControllerValidator;
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    lastNameTextControllerValidator = _lastNameTextControllerValidator;
    phoneStudentTextControllerValidator = _phoneStudentTextControllerValidator;
    birthdayTextControllerValidator = _birthdayTextControllerValidator;
    courseTextControllerValidator = _courseTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmTextControllerValidator =
        _passwordConfirmTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    orgNameFocusNode?.dispose();
    orgNameTextController?.dispose();

    phoneOrgFocusNode?.dispose();
    phoneOrgTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    phoneStudentFocusNode?.dispose();
    phoneStudentTextController?.dispose();

    birthdayFocusNode?.dispose();
    birthdayTextController?.dispose();

    courseFocusNode?.dispose();
    courseTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
