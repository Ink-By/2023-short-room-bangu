
// ExpansionPanel 정보를 저장하는 공간입니다
import 'package:bangu/core/app_export.dart';
import 'package:bangu/presentation/android_large_seven_screen/android_large_seven_screen.dart';
// import 'package:bangu/widgets/app_bar/appbar_image.dart';
// import 'package:bangu/widgets/app_bar/appbar_title.dart';
// import 'package:bangu/widgets/app_bar/custom_app_bar.dart';
import 'package:bangu/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../android_large_five_screen/android_large_five_screen.dart';
import 'package:image_picker/image_picker.dart';
class RadioValue {
  final String title;
  final int value;

  RadioValue({required this.title, required this.value});
}

class Item {
  String header;
  List<RadioValue>? radioValues;
  RadioValue? selectedRadioValue;
  Widget? additionalButton; // 추가 버튼 위젯
  bool isExpanded; // 추가된 필드
  Item({
    required this.header,
    this.radioValues,
    this.selectedRadioValue,
    this.additionalButton,
  this.isExpanded = false,
  });
}

class InformationList extends StatefulWidget {
  @override
  _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
}

class _MyExpansionPanelListState extends State<InformationList> {
  List<Item> _data = [
  Item(
  header: '방종류',
  radioValues: [
  RadioValue(title: '원룸', value: 1),
  RadioValue(title: '투룸', value: 2),
  RadioValue(title: '오피스텔', value: 3),
  RadioValue(title: '아파트', value: 4),
  ],
  selectedRadioValue: null,
  ),
  Item(
  header: '위치',
  additionalButton: ElevatedButton(
  onPressed: () {
  // 위치 탐색 기능 구현
  },
  child: Text('위치 탐색'),
  ),
  ),
  Item(
  header: '보증금 / 월세',
  radioValues: null,
  selectedRadioValue: null,
  additionalButton: TextField(
  decoration: InputDecoration(
  labelText: '숫자 입력',
  border: OutlineInputBorder(),
  ),
  keyboardType: TextInputType.number,
  ),
  ),
  Item(
  header: '임대 기간',
  radioValues: null,
  selectedRadioValue: null,
  additionalButton: TextField(
  decoration: InputDecoration(
  labelText: '기간 입력',
  border: OutlineInputBorder(),
  ),
  keyboardType: TextInputType.number,
  ),
  ),
  Item(
  header: '관리비',
  radioValues: null,
  selectedRadioValue: null,
  additionalButton: TextField(
  decoration: InputDecoration(
  labelText: '관리비 입력',
  border: OutlineInputBorder(),
  ),
  keyboardType: TextInputType.number,
  ),
  ),
  Item(
  header: '주차',
  radioValues: [
  RadioValue(title: '주차 가능', value: 1),
  RadioValue(title: '주차 불가능', value: 2),
  ],
  selectedRadioValue: null,
  additionalButton: TextField(
  decoration: InputDecoration(
  labelText: '숫자 입력',
  border: OutlineInputBorder(),
  ),
  keyboardType: TextInputType.number,
  ),
  ),
  Item(
  header: '추가 정보 입력',
  radioValues: null,
  selectedRadioValue: null,
  additionalButton: TextField(
  decoration: InputDecoration(
  labelText: '추가 정보 입력',
  border: OutlineInputBorder(),
  ),
  ),
  ),
  Item(
  header: '전대 동의서 등록',
  additionalButton: ElevatedButton(
  onPressed: () async {
  // 사진 등록 기능 구현
    var picker = ImagePicker();
    var image = await picker.pickImage(source: ImageSource.gallery);
  },
  child: Text('전대 동의서 등록'),
  ),
  ),
  Item(
  header: '신분증 등록',
  additionalButton: ElevatedButton(
  onPressed: () async {
    var picker = ImagePicker();
    var image = await picker.pickImage(source: ImageSource.gallery);

    // 사진 등록 기능 구현
  },
  child: Text('신분증 등록'),
  ),
  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("방 정보 입력", style: TextStyle(color: ColorConstant.black900),),
          backgroundColor: Colors.white,
          leading:IconButton(
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> AndroidLargeFiveScreen()),
              );
              // Navigator.pop(context, null);
            },
            color: Colors.black,

          )
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ExpansionPanelList(
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _data[index].isExpanded = !isExpanded;
                  });
                },
                children: _data.map<ExpansionPanel>((Item item) {
                  return ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(item.header),
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (item.radioValues != null)
                            ...item.radioValues!
                                .map(
                                  (value) => RadioListTile<RadioValue>(
                                title: Text(value.title),
                                value: value,
                                groupValue: item.selectedRadioValue,
                                onChanged: (RadioValue? value) {
                                  setState(() {
                                    item.selectedRadioValue = value!;
                                  });
                                },
                              ),
                            )
                                .toList(),
                          if (item.additionalButton != null) ...[
                            SizedBox(height: 10),
                            item.additionalButton!,
                          ],
                        ],
                      ),
                    ),
                    isExpanded: item.isExpanded,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
          floatingActionButton: FloatingActionButton.extended(

            onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> AndroidLargeSevenScreen()),
             );
            }, label: Text('입력 완료'),

            backgroundColor: ColorConstant.blueGray600,
          ),
    );
  }
}

























//   class InformationList extends StatefulWidget {
//   @override
//   _MyExpansionPanelListState createState() => _MyExpansionPanelListState();
// }
//
// class _MyExpansionPanelListState extends State<InformationList> {
//   List<Item> _data = generateItems(9);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             centerTitle: true,
//             title: Text("방 정보 입력", style: TextStyle(color: ColorConstant.black900),),
//             backgroundColor: Colors.white,
//             leading:IconButton(
//               icon: const Icon(Icons.arrow_back),
//               iconSize: 30,
//               onPressed: () {
//                 onTapArrowleft1(context);
//                 // Navigator.pop(context, null);
//               },
//               color: Colors.black,
//
//             )
//         ),
//       // appBar: AppBar(
//       //   title: Text('ExpansionPanelList with Radio Buttons'),
//       // ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: _buildPanel(),
//         ),
//       ),
//
//     );
//   }
//
//   Widget _buildPanel() {
//     return ExpansionPanelList(
//       expansionCallback: (int index, bool isExpanded) {
//         setState(() {
//           _data[index].isExpanded = !isExpanded;
//         });
//       },
//       children: _data.map<ExpansionPanel>((Item item) {
//         return ExpansionPanel(
//           headerBuilder: (BuildContext context, bool isExpanded) {
//             return ListTile(
//               title: Text(item.header),
//             );
//           },
//           body: Container(
//             child: Column(
//               children: item.radioValues
//                   .map<RadioListTile>((RadioValue radioValue) {
//                 return RadioListTile(
//                   title: Text(radioValue.title),
//                   value: radioValue,
//                   groupValue: item.selectedRadioValue,
//                   onChanged: (value) {
//                     setState(() {
//                       item.selectedRadioValue = value;
//                     });
//                   },
//                 );
//               }).toList(),
//             ),
//           ),
//           isExpanded: item.isExpanded,
//         );
//       }).toList(),
//     );
//   }
//   onTapArrowleft1(BuildContext context) {
//     // Navigator.pop(context);
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context)=> AndroidLargeFiveScreen()),
//     );
//   }
// }
//
// class Item {
//   String header;
//   List<RadioValue> radioValues;
//   RadioValue selectedRadioValue;
//   bool isExpanded;
//
//   Item({
//     required this.header,
//     required this.radioValues,
//     required this.selectedRadioValue,
//     required this.isExpanded,
//   });
// }
//
// class RadioValue {
//   String title;
//   int value;
//
//   RadioValue({
//     required this.title,
//     required this.value,
//   });
// }
//
// List<Item> generateItems(int numberOfItems) {
//   return List.generate(numberOfItems, (int index) {
//     return Item(
//       header: 'Item ${index + 1}',
//       radioValues: [
//         RadioValue(title: 'Option 1', value: 1),
//         RadioValue(title: 'Option 2', value: 2),
//         RadioValue(title: 'Option 3', value: 3),
//       ],
//       selectedRadioValue: RadioValue(title: 'Option 1', value: 1),
//       isExpanded: false,
//     );
//   });
// }







// class InformationList extends StatelessWidget {
//   const InformationList({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(
//             centerTitle: true,
//             title: Text("방 정보 입력", style: TextStyle(color: ColorConstant.black900),),
//             backgroundColor: Colors.white,
//             leading:IconButton(
//               icon: const Icon(Icons.arrow_back),
//               iconSize: 30,
//               onPressed: () {
//                 onTapArrowleft1(context);
//                 // Navigator.pop(context, null);
//               },
//               color: Colors.black,
//
//             )
//         ),
//         // appBar: CustomAppBar(
//         //     height: getVerticalSize(47),
//         //     leadingWidth: 24,
//         //     leading: AppbarImage(
//         //         height: getVerticalSize(18),
//         //         width: getHorizontalSize(10),
//         //         svgPath: ImageConstant.imgArrowleft,
//         //         margin: getMargin(left: 14, top: 14, bottom: 15),
//         //         onTap: () {
//         //           onTapArrowleft1(context);
//         //         }),
//         //     centerTitle: true,
//         //     title: AppbarTitle(text: "방 정보입력"),
//         //     styleType: Style.bgFillWhiteA700),
//         body: const MyStatefulWidget(),
//
//         floatingActionButton: FloatingActionButton.extended(
//
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context)=> AndroidLargeSevenScreen()),
//           );
//         }, label: Text('입력 완료'),
//
//         backgroundColor: ColorConstant.blueGray600,
//
//
//           // bottomNavigationBar: CustomButton(
//           //     height: getVerticalSize(40),
//           //     text: "입력 완료",
//           //     margin: getMargin(left: 47, right: 50, bottom: 21))));
//       ),
//       ),
//
//     );
//   }
//   onTapArrowleft1(BuildContext context) {
//     // Navigator.pop(context);
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context)=> AndroidLargeFiveScreen()),
//     );
//   }
//
// }
// class Item {
//   Item({
//     required this.expandedValue,
//     required this.headerValue,
//     this.isExpanded = false,
//   });
//
//   String expandedValue;
//   String headerValue;
//   bool isExpanded;
// }
//
// List<Item> generateItems(int numberOfItems) {
//   final List<String> items = ["방종류","위치","보증금/월세","임대 기간","관리비","주차","추가 정보 작성","전대 동의서 등록","신분증 등록"];
//   final List<String> expand_items = ["원룸 | 투룸 | 오피스텔 | 아파트", "주소 검색하기", "직접 작성" ,
//       "일주일 | 1달 ~ 6달 | 6개월 이상","직접 작성하기", "주차 가능 | 주차 불가능", "직접 작성", "등록하기", "인증하기"];
//
//   return List<Item>.generate(numberOfItems, (int index) {
//     return Item(
//       /// 헤더와 본문에 들어갈 내용
//       headerValue: items[index],
//       expandedValue: expand_items[index],
//       // expandedValue: 'This is item number $index',
//     );
//   });
// }
//
// /// MyStatefulWidget은 stateful widget으로 하위위젯을 감쌉니다.
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// /// MyStatefulWidget의 개인 상태 클래스입니다.
// /// SingleChildScrollView로 ExpansionPanelList를 감쌉니다.
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//
//   /// 총 8개의 리스트 생성
//   final List<Item> _data = generateItems(9);
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         child: _buildPanel(),
//       ),
//     );
//   }
//
//   /// ExpansionPanelList
//   Widget _buildPanel() {
//     return ExpansionPanelList(
//       expansionCallback: (int index, bool isExpanded) {
//         setState(() {
//           _data[index].isExpanded = !isExpanded;
//         });
//       },
//       children: _data.map<ExpansionPanel>((Item item) {
//         return ExpansionPanel(
//
//           /// ExpansionPanel은 header와 body로 구성되어 있습니다.
//           headerBuilder: (BuildContext context, bool isExpanded) {
//             return ListTile(
//               title: Text(item.headerValue),
//             );
//           },
//           body: ListTile(
//               title: Text(item.expandedValue),
//               subtitle:
//               const Text('To delete this panel, tap the trash can icon'),
//               trailing: const Icon(Icons.delete),
//               /// 아이콘 클릭 시 리스트를 삭제합니다.
//               onTap: () {
//                 setState(() {
//                   _data.removeWhere((Item currentItem) => item == currentItem);
//                 });
//               }),
//           isExpanded: item.isExpanded,
//         );
//       }).toList(),
//
//     );
//
//   }
//
// }
//
