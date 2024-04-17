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
  TextEditingController? orgNameController;
  String? Function(BuildContext, String?)? orgNameControllerValidator;
  String? _orgNameControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? phoneOrgController;
  String? Function(BuildContext, String?)? phoneOrgControllerValidator;
  String? _phoneOrgControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? linkController;
  String? Function(BuildContext, String?)? linkControllerValidator;
  String? _linkControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? phoneStudentController;
  String? Function(BuildContext, String?)? phoneStudentControllerValidator;
  String? _phoneStudentControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? birthdayController;
  String? Function(BuildContext, String?)? birthdayControllerValidator;
  String? _birthdayControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? courseController;
  String? Function(BuildContext, String?)? courseControllerValidator;
  String? _courseControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  String? _passwordControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? passwordConfirmController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;
  String? _passwordConfirmControllerValidator(
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
    orgNameControllerValidator = _orgNameControllerValidator;
    phoneOrgControllerValidator = _phoneOrgControllerValidator;
    linkControllerValidator = _linkControllerValidator;
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    phoneStudentControllerValidator = _phoneStudentControllerValidator;
    birthdayControllerValidator = _birthdayControllerValidator;
    courseControllerValidator = _courseControllerValidator;
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    passwordControllerValidator = _passwordControllerValidator;
    passwordConfirmVisibility = false;
    passwordConfirmControllerValidator = _passwordConfirmControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    orgNameFocusNode?.dispose();
    orgNameController?.dispose();

    phoneOrgFocusNode?.dispose();
    phoneOrgController?.dispose();

    linkFocusNode?.dispose();
    linkController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    phoneStudentFocusNode?.dispose();
    phoneStudentController?.dispose();

    birthdayFocusNode?.dispose();
    birthdayController?.dispose();

    courseFocusNode?.dispose();
    courseController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmController?.dispose();
  }
}
