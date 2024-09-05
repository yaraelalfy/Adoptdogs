abstract class FactState {}

class InitState extends FactState {}

class LoadingState extends FactState {}

class ScucessState extends FactState {
  final String fact;

  ScucessState(this.fact);
}

class FailedState extends FactState {
  final String message;

  FailedState(this.message);

}