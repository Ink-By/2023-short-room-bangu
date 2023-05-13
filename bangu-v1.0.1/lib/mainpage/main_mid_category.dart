import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MainMidCategory extends StatefulWidget {
  const MainMidCategory({Key? key}) : super(key: key);

  @override
  State<MainMidCategory> createState() => _MainMidCategoryState();
}

class _MainMidCategoryState extends State<MainMidCategory> {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: [
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('방 개수',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      int? selectedValue = 0;
                      return AlertDialog(
                        title: Text('방 개수을 결정해주세요',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                        content: StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                RadioListTile(
                                  title: Text('원룸',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 1,
                                  groupValue: selectedValue,
                                  onChanged: (int? value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('투룸',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 2,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('쓰리룸 이상',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 3,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('적용'),
                            onPressed: () {
                              // Perform actions based on selectedValue
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),//방 개수 버튼
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('평수',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      int? selectedValue = 0;
                      return AlertDialog(
                        title: Text('평수를 결정해주세요',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                        content: StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                RadioListTile(
                                  title: Text('5평 이하',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 1,
                                  groupValue: selectedValue,
                                  onChanged: (int? value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('6 ~ 10평',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 2,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('11평 이상',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 3,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('적용'),
                            onPressed: () {
                              // Perform actions based on selectedValue
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ), //방 평수 버튼
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('추가 옵션',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      int? selectedValue = 0;
                      return AlertDialog(
                        title: Text('추가 옵션을 결정해주세요',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                        content: StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                RadioListTile(
                                  title: Text('신축',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 1,
                                  groupValue: selectedValue,
                                  onChanged: (int? value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('풀옵션',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 2,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('주차가능',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 3,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                                RadioListTile(
                                  title: Text('엘리베이터',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 4,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                                RadioListTile(
                                  title: Text('반려 동물 동반 가능',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 5,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                                RadioListTile(
                                  title: Text('역세권',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 6,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                                RadioListTile(
                                  title: Text('공원 인근',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 7,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('적용'),
                            onPressed: () {
                              // Perform actions based on selectedValue
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ), //추가 옵션 버튼
              SizedBox(width: 10),
              ElevatedButton(
                child: Text('건물 형태',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      int? selectedValue = 0;
                      return AlertDialog(
                        title: Text('건물 형태를 결정해주세요',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                        content: StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                RadioListTile(
                                  title: Text('빌라',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 1,
                                  groupValue: selectedValue,
                                  onChanged: (int? value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('오피스텔',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 2,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);

                                  },
                                ),
                                RadioListTile(
                                  title: Text('아파트',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 3,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                ),
                                RadioListTile(
                                  title: Text('주택',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
                                  value: 4,
                                  groupValue: selectedValue,
                                  onChanged: (value) {
                                    setState(() =>
                                    selectedValue = value);
                                  },
                                )
                              ],
                            );
                          },
                        ),
                        actions: <Widget>[
                          ElevatedButton(
                            child: Text('적용'),
                            onPressed: () {
                              // Perform actions based on selectedValue
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(width: 10,),//건물 형태 버튼
              ElevatedButton(
                  child: Text('월세',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MonSliderDialog();
                        });}
              ),//월세 버튼

              SizedBox(width: 10,),//건물 형태 버튼
              ElevatedButton(
                  child: Text('보증금',style:TextStyle(fontSize:12,fontWeight: FontWeight.bold)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return DepoSliderDialog();
                        });}
              )//보증금 버튼
            ]



        ));

  }
}







class MonSliderDialog extends StatefulWidget {

  @override
  _MonSliderDialogState createState() => _MonSliderDialogState();
}

class _MonSliderDialogState extends State<MonSliderDialog> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('월세를 결정해주세요',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
      content:Container(
        height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Slider(
              value:sliderValue,
              onChanged: (newValue){
                setState(() {
                  sliderValue = newValue;
                });
              },
              min:0.0,
              max:1000.0,
            ),
            Text('0원 ~ ${sliderValue.toStringAsFixed(2)}만원', // Display the value below the slider
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),


      actions: [
        ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('적용')
        ),
      ],
    );
  }
}

class DepoSliderDialog extends StatefulWidget {

  @override
  _DepoSliderDialogState createState() => _DepoSliderDialogState();
}

class _DepoSliderDialogState extends State<DepoSliderDialog> {
  double sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('보증금을 결정해주세요',style:TextStyle(fontSize:15,fontWeight: FontWeight.bold)),
      content:Container(
        height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Slider(
              value:sliderValue,
              onChanged: (newValue){
                setState(() {
                  sliderValue = newValue;
                });
              },
              min:0.0,
              max:1000.0,
            ),
            Text('0원 ~ ${sliderValue.toStringAsFixed(2)}만원', // Display the value below the slider
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),


      actions: [
        ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('적용')
        ),
      ],
    );
  }
}







