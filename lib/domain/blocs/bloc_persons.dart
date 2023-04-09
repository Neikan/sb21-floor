// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:app_floor/data/repositories/repository_persons/repository_persons.dart';
import 'package:app_floor/domain/blocs/bloc_persons_event.dart';
import 'package:app_floor/domain/blocs/bloc_persons_state.dart';

class BlocPersons extends Bloc<BlocPersonsEvent, BlocPersonsState> {
  final RepositoryPersons repo;

  BlocPersons({required this.repo}) : super(const BlocPersonsState.init()) {
    on<BlocPersonsEventInit>(_init);
    on<BlocPersonsEventAdd>(_add);
    on<BlocPersonsEventUpdate>(_update);
    on<BlocPersonsEventRemove>(_remove);
  }

  void _init(
    BlocPersonsEventInit event,
    Emitter<BlocPersonsState> emit,
  ) async {
    await repo.init();

    final persons = await repo.persons;
    final cards = await repo.cards;

    persons.isEmpty
        ? emit(const BlocPersonsState.loadedNoData())
        : emit(BlocPersonsState.loadedData(persons, cards));
  }

  Future<void> _add(
    BlocPersonsEventAdd event,
    Emitter<BlocPersonsState> emit,
  ) async {
    await repo.add(event.person, event.card);

    final persons = await repo.persons;
    final cards = await repo.cards;

    emit(BlocPersonsState.loadedData(persons, cards));
  }

  Future<void> _update(
    BlocPersonsEventUpdate event,
    Emitter<BlocPersonsState> emit,
  ) async {
    await repo.update(event.person, event.card);

    final persons = await repo.persons;
    final cards = await repo.cards;

    emit(BlocPersonsState.loadedData(persons, cards));
  }

  Future<void> _remove(
    BlocPersonsEventRemove event,
    Emitter<BlocPersonsState> emit,
  ) async {
    await repo.remove(event.id);

    final persons = await repo.persons;
    final cards = await repo.cards;

    persons.isEmpty
        ? emit(const BlocPersonsState.loadedNoData())
        : emit(BlocPersonsState.loadedData(persons, cards));
  }
}
