import 'package:agsam/model/planModel.dart';
import 'package:bloc/bloc.dart';

part 'plan_state.dart';

class PlanCubit extends Cubit<PlanState> {
  PlanCubit() : super(PlanInitial());

  List<PlanModel> planList = [];

  void addPlan(String planName) {
    try {
      emit(PlanLoading());
      final newPlan = PlanModel(planName: planName);
      planList.add(newPlan);
      emit(PlanSuccess(plans: planList));
    } catch (e) {
      emit(PlanError('Somethingss wrongg !!!!'));
    }
  }
}
