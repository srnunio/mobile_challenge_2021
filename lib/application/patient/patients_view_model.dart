import 'package:mobile_challenge_2021/application/core/base_view_model.dart';
import 'package:mobile_challenge_2021/domain/core/request/patient_request.dart';
import 'package:mobile_challenge_2021/domain/core/request/request_failure.dart';
import 'package:mobile_challenge_2021/domain/patient/entities/patient.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_service.dart';
import 'package:mobx/mobx.dart';

part 'patients_view_model.g.dart';

class PatientsViewModel = _PatientsViewModel with _$PatientsViewModel;

abstract class _PatientsViewModel extends BaseViewModel with Store {
  final PatientService _service;

  _PatientsViewModel(this._service);

  @observable
  ObservableList<Patient> _patients = ObservableList.of([]);

  @observable
  PatientRequest _request = PatientRequest();

  @observable
  RequestFailure? _failure;

  /// data
  @computed
  List<Patient> get patients => _patients.toList();

  /// notify if data is
  @computed
  bool get hasData => _patients.isNotEmpty;

  /// informs that a filter has been mode
  @computed
  bool get hasFiltered => _request.hasFiltered;

  /// notify if error is
  @computed
  bool get hasError => (_failure != null);

  @computed
  RequestFailure get failure => _failure!;

  /// update data
  @action
  void _save(List<Patient> data) {
    if (hasData)
      this._patients.addAll(data);
    else
      this._patients = data.asObservable();
  }

  /// update request
  @action
  void setRequest(PatientRequest request) {
    this._request = request;
  }

  /// get patients
  @action
  Future<void> load({bool refresh = false}) async {
    if (isBusy) return;

    this._failure = null;

    if (refresh) onRefresh(value: refresh);

    setBusy(true);

    var request = _request.copyWith(page: _request.page + 1);

    var response = await _service.getPatients(request: request);

    setBusy(false);

    onRefresh(value: false);

    response.fold((error) => this._failure = error, (data) {
      _save(data);
      setRequest(request);
    });
  }
}
