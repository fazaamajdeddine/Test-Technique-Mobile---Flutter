import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:testtechniquemobileflutter/app/data/models/data.dart';
import 'package:testtechniquemobileflutter/app/data/models/recurring.dart';

class DataService {
  Future<List<Data>> getAllData() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Data> listData = [];

    listData.add(Data(
        id: 21835,
        status: "waiting",
        startAt: "2022-02-28 17:00:00",
        endAt: "2022-03-01 01:30:00",
        postName: "Server",
        postId: 1,
        startSoon: false,
        recurring: null,
        company: "Marroniers",
        buyPrice: "22.00",
        bonus: 5,
        latitude: 46.8139963,
        longitude: -71.1796024));
    listData.add(Data(
        id: 22201,
        status: "waiting",
        startAt: "2022-02-28 21:00:00",
        endAt: "2022-03-01 06:30:00",
        postName: "Food & Beverage Helper",
        postId: 10,
        startSoon: false,
        recurring: Recurring(
            endAt: "2022-03-01 06:30:00",
            id: 3067,
            isAvailable: false,
            startAt: "2022-02-28 21:00:00"),
        company: "Les Produits Alimaison 2014 inc.",
        buyPrice: "19.00",
        bonus: 2,
        latitude: 46.857129,
        longitude: -71.3390471));
    listData.add(Data(
        id: 22311,
        status: "accepted",
        startAt: "2022-03-01 16:00:00",
        endAt: "2022-03-02 00:30:00",
        postName: "Help-Cook",
        postId: 4,
        startSoon: false,
        recurring: null,
        company: "Manoir Manrèse groupe Cogir",
        buyPrice: "20.00",
        bonus: 0,
        latitude: 46.8027708,
        longitude: -71.2403502));
    listData.add(Data(
        id: 22313,
        status: "accepted",
        startAt: "2022-03-02 16:00:00",
        endAt: "2022-03-03 00:30:00",
        postName: "Help-Cook",
        postId: 4,
        startSoon: false,
        recurring: null,
        company: "Manoir Manrèse groupe Cogir",
        buyPrice: "20.00",
        bonus: 0,
        latitude: 46.8027708,
        longitude: -71.2403502));
    listData.add(Data(
        id: 22298,
        status: "accepted",
        startAt: "2022-03-05 21:00:00",
        endAt: "2022-03-06 01:00:00",
        postName: "Server",
        postId: 1,
        startSoon: false,
        recurring: null,
        company: "Pavillon Sekoia",
        buyPrice: "22.00",
        bonus: 0,
        latitude: 46.7922073,
        longitude: -71.1830321));
    listData.add(Data(
        id: 21522,
        status: "accepted",
        startAt: "2022-03-05 22:00:00",
        endAt: "2022-03-06 02:00:00",
        postName: "Server",
        postId: 1,
        startSoon: false,
        recurring: null,
        company: "Chartwell Trait-Carré",
        buyPrice: "22.00",
        bonus: 5,
        latitude: 46.8745704,
        longitude: -71.2521533));
    listData.add(Data(
        id: 22209,
        status: "waiting",
        startAt: "2022-03-07 21:00:00",
        endAt: "2022-03-08 06:30:00",
        postName: "Food & Beverage Helper",
        postId: 10,
        startSoon: false,
        recurring: Recurring(
            endAt: "2022-03-11 06:30:00",
            id: 3069,
            isAvailable: true,
            startAt: "2022-03-07 21:00:00"),
        company: "Les Produits Alimaison 2014 inc.",
        buyPrice: "19.00",
        bonus: 2,
        latitude: 46.857129,
        longitude: -71.3390471));
    listData.add(Data(
        id: 22213,
        status: "accepted",
        startAt: "2022-03-07 21:00:00",
        endAt: "2022-03-08 06:30:00",
        postName: "Food & Beverage Helper",
        postId: 10,
        startSoon: false,
        recurring: Recurring(
            endAt: "2022-03-11 06:30:00",
            id: 3070,
            isAvailable: true,
            startAt: "2022-03-07 21:00:00"),
        company: "Les Produits Alimaison 2014 inc.",
        buyPrice: "19.00",
        bonus: 2,
        latitude: 46.857129,
        longitude: -71.3390471));
    listData.add(Data(
        id: 22210,
        status: "accepted",
        startAt: "2022-03-08 21:00:00",
        endAt: "2022-03-09 06:30:00",
        postName: "Food & Beverage Helper",
        postId: 10,
        startSoon: false,
        recurring: Recurring(
            endAt: "2022-03-11 06:30:00",
            id: 3069,
            isAvailable: true,
            startAt: "2022-03-07 21:00:00"),
        company: "Les Produits Alimaison 2014 inc.",
        buyPrice: "19.00",
        bonus: 2,
        latitude: 46.857129,
        longitude: -71.3390471));
    listData.add(Data(
        id: 22214,
        status: "waiting",
        startAt: "2022-03-08 21:00:00",
        endAt: "2022-03-09 06:30:00",
        postName: "Food & Beverage Helper",
        postId: 10,
        startSoon: false,
        recurring: Recurring(
            endAt: "2022-03-11 06:30:00",
            id: 3070,
            isAvailable: true,
            startAt: "2022-03-07 21:00:00"),
        company: "Les Produits Alimaison 2014 inc.",
        buyPrice: "19.00",
        bonus: 2,
        latitude: 46.857129,
        longitude: -71.3390471));

    return listData;
  }
}
