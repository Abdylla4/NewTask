part of 'plan_cubit.dart';

sealed class PlanState {}

final class PlanInitial extends PlanState {}

final class PlanLoading extends PlanState {}

class PlanSuccess extends PlanState {
  final List<PlanModel> plans;
  PlanSuccess({required this.plans,});
}

class PlanError extends PlanState {
  final String message;
  PlanError(this.message);
}
