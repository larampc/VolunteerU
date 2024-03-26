import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'create_action_model.dart';
export 'create_action_model.dart';

class CreateActionWidget extends StatefulWidget {
  const CreateActionWidget({super.key});

  @override
  State<CreateActionWidget> createState() => _CreateActionWidgetState();
}

class _CreateActionWidgetState extends State<CreateActionWidget>
    with TickerProviderStateMixin {
  late CreateActionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          hz: 5,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
    'buttonOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          hz: 5,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateActionModel());

    _model.eventNameController ??= TextEditingController();
    _model.eventNameFocusNode ??= FocusNode();

    _model.descriptionController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();

    _model.locationController ??= TextEditingController();
    _model.locationFocusNode ??= FocusNode();

    _model.durationController ??= TextEditingController();
    _model.durationFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
      anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'wd5fj8d7' /* Create Action */,
                        ),
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'ogjlt8c5' /* Fill out the information below... */,
                        ),
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                  ].divide(SizedBox(height: 4)),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: 1270,
                            ),
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 12, 16, 0),
                                  child: Wrap(
                                    spacing: 16,
                                    runSpacing: 16,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                    WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.center,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 570,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            TextFormField(
                                              controller:
                                              _model.eventNameController,
                                              focusNode:
                                              _model.eventNameFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                              TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kjhwvco2' /* Action name... */,
                                                ),
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .override(
                                                  fontFamily: 'Sora',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .secondaryText,
                                                  fontSize: 20,
                                                ),
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                                errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .error,
                                                  fontSize: 12,
                                                ),
                                                enabledBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                contentPadding:
                                                EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    16, 20, 16, 20),
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .override(
                                                fontFamily: 'Sora',
                                                fontSize: 18,
                                              ),
                                              maxLength: 30,
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              validator: _model
                                                  .eventNameControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller:
                                              _model.descriptionController,
                                              focusNode:
                                              _model.descriptionFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                              TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'itvg1ugd' /* Description... */,
                                                ),
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                                alignLabelWithHint: true,
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                                errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .error,
                                                  fontSize: 12,
                                                ),
                                                enabledBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                contentPadding:
                                                EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    16, 16, 16, 16),
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge,
                                              maxLines: 9,
                                              minLines: 5,
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              validator: _model
                                                  .descriptionControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ].divide(SizedBox(height: 12)),
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 570,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9bhort50' /* Category */,
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium,
                                            ),
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1yjrr5qk' /* Community */,
                                                    )),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mrf314uv' /* Animals */,
                                                    )),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zlsulcyd' /* Nature */,
                                                    )),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lc2tnkjb' /* Homeless */,
                                                    )),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'myrrqcmy' /* Eldery */,
                                                    ))
                                              ],
                                              onChanged: (val) => setState(() =>
                                              _model.choiceChipsValues =
                                                  val),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent2,
                                                textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .primaryText,
                                                ),
                                                iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                                iconSize: 18,
                                                elevation: 0,
                                                borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                                borderWidth: 2,
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                                textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .secondaryText,
                                                ),
                                                iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                iconSize: 18,
                                                elevation: 0,
                                                borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                                borderWidth: 2,
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              chipSpacing: 8,
                                              rowSpacing: 8,
                                              multiselect: true,
                                              initialized:
                                              _model.choiceChipsValues !=
                                                  null,
                                              alignment: WrapAlignment.start,
                                              controller: _model
                                                  .choiceChipsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                    [],
                                                  ),
                                              wrapped: true,
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(16, 12, 16, 12),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    'bj4r4e3k' /* Create Product */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 48,
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        24, 0, 24, 0),
                                                    iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 0, 0),
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                  ),
                                                ),
                                              ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                final _datePickedDate =
                                                await showDatePicker(
                                                  context: context,
                                                  initialDate:
                                                  getCurrentTimestamp,
                                                  firstDate:
                                                  getCurrentTimestamp,
                                                  lastDate: DateTime(2050),
                                                  builder: (context, child) {
                                                    return wrapInMaterialDatePickerTheme(
                                                      context,
                                                      child!,
                                                      headerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      headerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .info,
                                                      headerTextStyle:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .headlineLarge
                                                          .override(
                                                        fontFamily:
                                                        'Sora',
                                                        fontSize: 32,
                                                        fontWeight:
                                                        FontWeight
                                                            .w600,
                                                      ),
                                                      pickerBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .secondaryBackground,
                                                      pickerForegroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      selectedDateTimeBackgroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primary,
                                                      selectedDateTimeForegroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .info,
                                                      actionButtonForegroundColor:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .primaryText,
                                                      iconSize: 24,
                                                    );
                                                  },
                                                );

                                                TimeOfDay? _datePickedTime;
                                                if (_datePickedDate != null) {
                                                  _datePickedTime =
                                                  await showTimePicker(
                                                    context: context,
                                                    initialTime:
                                                    TimeOfDay.fromDateTime(
                                                        getCurrentTimestamp),
                                                    builder: (context, child) {
                                                      return wrapInMaterialTimePickerTheme(
                                                        context,
                                                        child!,
                                                        headerBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        headerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .info,
                                                        headerTextStyle:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .headlineLarge
                                                            .override(
                                                          fontFamily:
                                                          'Sora',
                                                          fontSize: 32,
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                        ),
                                                        pickerBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryBackground,
                                                        pickerForegroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        selectedDateTimeBackgroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primary,
                                                        selectedDateTimeForegroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .info,
                                                        actionButtonForegroundColor:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .primaryText,
                                                        iconSize: 24,
                                                      );
                                                    },
                                                  );
                                                }

                                                if (_datePickedDate != null &&
                                                    _datePickedTime != null) {
                                                  safeSetState(() {
                                                    _model.datePicked =
                                                        DateTime(
                                                          _datePickedDate.year,
                                                          _datePickedDate.month,
                                                          _datePickedDate.day,
                                                          _datePickedTime!.hour,
                                                          _datePickedTime.minute,
                                                        );
                                                  });
                                                }
                                              },
                                              text: valueOrDefault<String>(
                                                dateTimeFormat(
                                                  'MMMEd',
                                                  _model.datePicked,
                                                  locale: FFLocalizations.of(
                                                      context)
                                                      .languageCode,
                                                ),
                                                'Select date and time',
                                              ),
                                              options: FFButtonOptions(
                                                height: 40,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(24, 0, 24, 0),
                                                iconPadding:
                                                EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 0),
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                                textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall,
                                                elevation: 3,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                              'buttonOnActionTriggerAnimation1']!,
                                            ),
                                            TextFormField(
                                              controller:
                                              _model.locationController,
                                              focusNode:
                                              _model.locationFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                              TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'cux2jakl' /* Location */,
                                                ),
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .override(
                                                  fontFamily: 'Sora',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .secondaryText,
                                                  fontSize: 14,
                                                ),
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                                errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .error,
                                                  fontSize: 12,
                                                ),
                                                enabledBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                contentPadding:
                                                EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    16, 20, 16, 20),
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .override(
                                                fontFamily: 'Sora',
                                                fontSize: 15,
                                              ),
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              validator: _model
                                                  .locationControllerValidator
                                                  .asValidator(context),
                                            ),
                                            TextFormField(
                                              controller:
                                              _model.durationController,
                                              focusNode:
                                              _model.durationFocusNode,
                                              autofocus: true,
                                              textCapitalization:
                                              TextCapitalization.words,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'mdbjeixo' /* Duration */,
                                                ),
                                                labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .override(
                                                  fontFamily: 'Sora',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .secondaryText,
                                                  fontSize: 14,
                                                ),
                                                hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium,
                                                errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Inter',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .error,
                                                  fontSize: 12,
                                                ),
                                                enabledBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .alternate,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                focusedErrorBorder:
                                                OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .error,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                ),
                                                filled: true,
                                                fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                                contentPadding:
                                                EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    16, 20, 16, 20),
                                              ),
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .override(
                                                fontFamily: 'Sora',
                                                fontSize: 15,
                                              ),
                                              cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              validator: _model
                                                  .durationControllerValidator
                                                  .asValidator(context),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      maxWidth: 400.00,
                                                      maxHeight: 230.00,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      setState(() => _model
                                                          .isDataUploading =
                                                      true);
                                                      var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                      var downloadUrls =
                                                      <String>[];
                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                      '/')
                                                                      .last,
                                                                  bytes: m
                                                                      .bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash:
                                                                  m.blurHash,
                                                                ))
                                                                .toList();

                                                        downloadUrls =
                                                            (await Future.wait(
                                                              selectedMedia.map(
                                                                    (m) async =>
                                                                await uploadData(
                                                                    m.storagePath,
                                                                    m.bytes),
                                                              ),
                                                            ))
                                                                .where((u) =>
                                                            u != null)
                                                                .map((u) => u!)
                                                                .toList();
                                                      } finally {
                                                        _model.isDataUploading =
                                                        false;
                                                      }
                                                      if (selectedUploadedFiles
                                                          .length ==
                                                          selectedMedia
                                                              .length &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        setState(() {
                                                          _model.uploadedLocalFile =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                      } else {
                                                        setState(() {});
                                                        return;
                                                      }
                                                    }
                                                  },
                                                  text: FFLocalizations.of(
                                                      context)
                                                      .getText(
                                                    'v578xqzl' /* Upload image */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 40,
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        24, 0, 24, 0),
                                                    iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 0, 0),
                                                    color: FlutterFlowTheme.of(
                                                        context)
                                                        .primary,
                                                    textStyle: FlutterFlowTheme
                                                        .of(context)
                                                        .titleSmall
                                                        .override(
                                                      fontFamily: 'Inter',
                                                      color: Colors.white,
                                                    ),
                                                    elevation: 3,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                  'buttonOnActionTriggerAnimation2']!,
                                                ),
                                                if (_model.uploadedFileUrl !=
                                                    null &&
                                                    _model.uploadedFileUrl !=
                                                        '')
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        20, 0, 0, 0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          8),
                                                      child: Image.network(
                                                        _model.uploadedFileUrl,
                                                        width: 60,
                                                        height: 40,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 12)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 770,
                    ),
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 60),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (!(_model.datePicked != null)) {
                            if (animationsMap[
                            'buttonOnActionTriggerAnimation1'] !=
                                null) {
                              animationsMap['buttonOnActionTriggerAnimation1']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                          }
                          if (!(_model.uploadedFileUrl != null &&
                              _model.uploadedFileUrl != '')) {
                            if (animationsMap[
                            'buttonOnActionTriggerAnimation2'] !=
                                null) {
                              animationsMap['buttonOnActionTriggerAnimation2']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                          }
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          if ((_model.eventNameController.text != null &&
                              _model.eventNameController.text != '') &&
                              (_model.datePicked != null) &&
                              (_model.descriptionController.text != null &&
                                  _model.descriptionController.text != '') &&
                              (_model.locationController.text != null &&
                                  _model.locationController.text != '') &&
                              (_model.durationController.text != null &&
                                  _model.durationController.text != '') &&
                              (_model.uploadedFileUrl != null &&
                                  _model.uploadedFileUrl != '')) {
                            await EventRecord.collection
                                .doc()
                                .set(createEventRecordData(
                              eventName: _model.eventNameController.text,
                              eventDate: _model.datePicked,
                              eventLocation: _model.locationController.text,
                              eventImage: _model.uploadedFileUrl,
                              eventDuration: _model.durationController.text,
                            ));

                            context.goNamed('MainPage');

                            return;
                          } else {
                            return;
                          }
                        },
                        text: FFLocalizations.of(context).getText(
                          'd2piabr7' /* Create Product */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 48,
                          padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                          elevation: 3,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}