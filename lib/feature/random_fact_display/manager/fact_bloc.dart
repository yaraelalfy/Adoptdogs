import 'package:animals/feature/random_fact_display/data/api_service.dart';
import 'package:animals/feature/random_fact_display/manager/fact_event.dart';
import 'package:animals/feature/random_fact_display/manager/fact_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  final FactApiService factApiService;
  FactBloc(this.factApiService) : super(InitState());

  fetchFact() async {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(LoadingState());

    try {
      String fact;
      fact = await factApiService.fetchFact();

      // ignore: invalid_use_of_visible_for_testing_member
      emit(ScucessState(fact));
    } catch (e) {
      // ignore: invalid_use_of_visible_for_testing_member
      emit(FailedState(e.toString()));
    }
  }
}