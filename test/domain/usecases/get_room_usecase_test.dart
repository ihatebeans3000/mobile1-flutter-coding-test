import 'package:flutter_test/flutter_test.dart';
import 'package:mobile1_flutter_coding_test/domain/entities/room_entity.dart';
import 'package:mobile1_flutter_coding_test/domain/repositories/room_repository.dart';
import 'package:mobile1_flutter_coding_test/domain/usecases/get_rooms_usecase.dart';
import 'package:get_it/get_it.dart';

class FakeRoomRepository implements RoomRepository {
  @override
  Future<List<RoomEntity>> getRooms() async {
    return [
      RoomEntity(
        roomId: 'room1',
        roomName: '테스트 회의실',
        creator: 'user1',
        participants: ['user1', 'user2'],
        createdAt: DateTime(2024, 1, 1, 10, 0, 0),
        lastMessage: LastMessageEntity(
          sender: 'user2',
          content: '마지막 메시지',
          timestamp: DateTime(2024, 1, 1, 11, 0, 0),
        ),
        thumbnailImage: '',
      ),
    ];
  }
}

void main() {
  setUp(() {
    GetIt.I.registerSingleton<RoomRepository>(FakeRoomRepository());
    GetIt.I.registerSingleton<GetRoomsUseCase>(GetRoomsUseCase(GetIt.I<RoomRepository>()));
  });

  tearDown(() {
    GetIt.I.reset();
  });

  test('GetRoomsUseCase', () async {
    final useCase = GetIt.I<GetRoomsUseCase>();

    final rooms = await useCase.call();

    expect(rooms, isA<List<RoomEntity>>());
    expect(rooms.length, 1);
    expect(rooms.first.roomId, 'room1');
  });
}
