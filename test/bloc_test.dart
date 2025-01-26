// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:rentcarbloc/core/class/StatusRequest.dart';
// import 'package:rentcarbloc/ordersfeature/data/model/carsmodels.dart';
// import 'package:rentcarbloc/ordersfeature/data/respotories/orders_respositoryImp.dart';
// import 'package:rentcarbloc/ordersfeature/domain/enities/cars.dart';
// import 'package:rentcarbloc/ordersfeature/domain/usercases/addusescase.dart';
// import 'package:rentcarbloc/ordersfeature/domain/usercases/deletorder_usecase.dart';
// import 'package:rentcarbloc/ordersfeature/domain/usercases/getcheckout_usecase.dart';
// import 'package:rentcarbloc/ordersfeature/domain/usercases/getdataservice_usescase.dart';
// import 'package:rentcarbloc/ordersfeature/present/bloc/orders_bloc.dart';
// import 'package:rentcarbloc/ordersfeature/present/bloc/orders_bloc.dart';

// class MockGetdataserviceUsescase extends Mock
//     implements GetdataserviceUsescase {}

// class MockGetCheckoutUsercase extends Mock implements GetCheckoutUsercase {}

// class MockDeletOrdersUsescase extends Mock implements DeletOrdersUsescase {}

// void main() {
//   group('group name', () {
//     late OrdersBloc ordersBloc;
//     late MockGetdataserviceUsescase mockGetdataserviceUsescase;
//     late MockGetCheckoutUsercase mockGetCheckoutUsercase;
//     late MockDeletOrdersUsescase mockDeletOrdersUsescase;

//     setUp(() {

//       mockGetCheckoutUsercase = MockGetCheckoutUsercase();
//       mockGetdataserviceUsescase = MockGetdataserviceUsescase();
//       ordersBloc = OrdersBloc(
//         getdataserviceUsescase: mockGetdataserviceUsescase,
//         deletOrdersUsescase: mockDeletOrdersUsescase,
//         getCheckoutUsercase: mockGetCheckoutUsercase,
//       );
//     });

//     test("intial state", () => expect(ordersBloc.state, OrdersInitial()));
//     blocTest('getdataservice',
//         build: () => ordersBloc,
//         act: (ordersBloc) =>
//             ordersBloc.add(GetDataServiceEvent(carsbrand: "bmw")),
//         expect: () => [
//               GetDataServiceState(cars: [
//               Cars(
//                     carsTank: '100',
//                     carsPrice: '10',
//                     carsOwnername: 'sherif',
//                     carsNumber: '123',
//                     carsOwnerid: '1',
//                     carsModel: 'bmw',
//                     carsKilos: '100',
//                     carsAddress: 'alex',
//                     carsImage: 'bmw',
//                     carsApprove: '1',
//                     carsBrand: 'bmw',
//                     carsDate: '2-11-2024',
//                     carsDriver: 'sherif',
//                     carsEngine: '100',
//                     carsId: '1')
//               ]),
//               ErrorPostsState(message: "No Data")
//             ]);
//     blocTest("getcheckout",
//         build: () => ordersBloc,
//         act: (ordersBloc) => ordersBloc.add(GetCheckoutEvent(data: {})),
//         expect: () => [GetCheckoutState()]);
//   });
// // blocTest("deletorder",
// //  build: () => ordersBloc,
// //         act: (ordersBloc) => ordersBloc.add(DeleteOrdersEvent(carsId: "1")),
// //         expect: () => [DeleteOrdersState()]);
// }
