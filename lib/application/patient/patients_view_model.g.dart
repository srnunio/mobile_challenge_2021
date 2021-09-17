// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PatientsViewModel on _PatientsViewModel, Store {
  Computed<List<Patient>>? _$patientsComputed;

  @override
  List<Patient> get patients =>
      (_$patientsComputed ??= Computed<List<Patient>>(() => super.patients,
              name: '_PatientsViewModel.patients'))
          .value;
  Computed<bool>? _$hasDataComputed;

  @override
  bool get hasData => (_$hasDataComputed ??= Computed<bool>(() => super.hasData,
          name: '_PatientsViewModel.hasData'))
      .value;
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_PatientsViewModel.hasError'))
          .value;
  Computed<RequestFailure>? _$failureComputed;

  @override
  RequestFailure get failure =>
      (_$failureComputed ??= Computed<RequestFailure>(() => super.failure,
              name: '_PatientsViewModel.failure'))
          .value;

  final _$_patientsAtom = Atom(name: '_PatientsViewModel._patients');

  @override
  ObservableList<Patient> get _patients {
    _$_patientsAtom.reportRead();
    return super._patients;
  }

  @override
  set _patients(ObservableList<Patient> value) {
    _$_patientsAtom.reportWrite(value, super._patients, () {
      super._patients = value;
    });
  }

  final _$_requestAtom = Atom(name: '_PatientsViewModel._request');

  @override
  PatientRequest get _request {
    _$_requestAtom.reportRead();
    return super._request;
  }

  @override
  set _request(PatientRequest value) {
    _$_requestAtom.reportWrite(value, super._request, () {
      super._request = value;
    });
  }

  final _$_failureAtom = Atom(name: '_PatientsViewModel._failure');

  @override
  RequestFailure? get _failure {
    _$_failureAtom.reportRead();
    return super._failure;
  }

  @override
  set _failure(RequestFailure? value) {
    _$_failureAtom.reportWrite(value, super._failure, () {
      super._failure = value;
    });
  }

  final _$loadAsyncAction = AsyncAction('_PatientsViewModel.load');

  @override
  Future<void> load({bool refresh = false}) {
    return _$loadAsyncAction.run(() => super.load(refresh: refresh));
  }

  final _$_PatientsViewModelActionController =
      ActionController(name: '_PatientsViewModel');

  @override
  void _save(List<Patient> data) {
    final _$actionInfo = _$_PatientsViewModelActionController.startAction(
        name: '_PatientsViewModel._save');
    try {
      return super._save(data);
    } finally {
      _$_PatientsViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRequest(PatientRequest request) {
    final _$actionInfo = _$_PatientsViewModelActionController.startAction(
        name: '_PatientsViewModel.setRequest');
    try {
      return super.setRequest(request);
    } finally {
      _$_PatientsViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
patients: ${patients},
hasData: ${hasData},
hasError: ${hasError},
failure: ${failure}
    ''';
  }
}
