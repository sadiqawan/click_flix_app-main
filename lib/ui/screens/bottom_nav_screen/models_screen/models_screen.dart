
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../../controller/AppController.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_style.dart';
import '../../../component/tabContainer.dart';


class ModelsScreen extends StatefulWidget {
  const ModelsScreen({super.key});

  @override
  State<ModelsScreen> createState() => _ModelsScreenState();
}

class _ModelsScreenState extends State<ModelsScreen> {
  List<Map<String, dynamic>> rowData = [
    {'image': 'assets/images/row_image_one.png', 'name': 'Ahmad'},
    {'image': 'assets/images/row_image_two.png', 'name': 'Ahmad'},
    {'image': 'assets/images/row_image_three.png', 'name': 'Ahmad'},
    {'image': 'assets/images/row_image_four.png', 'name': 'Ahmad'},
  ];

  final appController = Get.find<AppController>();

  List<String> list = [
    "Models",
    "Influencer",
    "Hostess",
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final commentsController = TextEditingController();
    return Obx(() {
      return DefaultTabController(
          length: list.length,
          child: SafeArea(
            child: Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/images/bg_image.png",
                        ))),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: height * .032,
                    right: width * .056,
                    left: width * .056,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svg_images/icon_solor.svg",
                            width: width * .032,
                            height: height * .032,
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            "assets/svg_images/icon_search.svg",
                            width: width * .032,
                            height: height * .032,
                          ),
                          SizedBox(
                            width: width * .040,
                          ),
                          SvgPicture.asset(
                            "assets/svg_images/icon_notification.svg",
                            width: width * .040,
                            height: height * .032,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .016,
                      ),
                      SizedBox(
                        height: 100,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: height * .100,
                                  width: width * .190,
                                ),
                                Container(
                                  height: height * .095,
                                  width: width * .170,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/image_profile.png'),
                                      )),
                                ),
                                Positioned(
                                  bottom: 7,
                                  right: -3,
                                  child: Container(
                                    height: height * .030,
                                    width: width * .10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: ConstColor.blueColor.value,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: SvgPicture.asset(
                                        "assets/svg_images/icon_add.svg",
                                        height: 10,
                                        width: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: rowData.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          InkWell(
                                            onTap:(){

                                            },
                                            child: Container(
                                              height: height * .095,
                                              width: width * .170,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 2,
                                                      color: Colors.red),
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        rowData[index]['image']),
                                                  )),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            rowData[index]['name'],
                                            style:
                                                desStyle.copyWith(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0, top: 24),
                        child: Container(
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: ConstColor.greyColor.value)
                          ),
                          width: Get.width,
                          height: Get.height * 0.056,
                          child: ListView.builder(
                            physics: ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      appController.index.value = index;
                                    });
                                    },
                                  child: TabContainer(
                                    linerGradient: appController.index ==index? LinearGradient(
                                        begin:Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          ConstColor.gradientOneColor.value,
                                          ConstColor.gradientTwoColor.value,
                                        ]
                                    ):   LinearGradient(
                                        begin:Alignment.topLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Colors.transparent,
                                          Colors.transparent,
                                        ]
                                    ),
                                    textColor: appController.index== index
                                        ? ConstColor.primaryColor.value
                                        :ConstColor.greyColor.value,
                                    text: list[index],
                                    onPress: () {},
                                  ),
                                );
                              }),
                        ),
                      ),
                      Visibility(
                          visible: appController.index.value == 0 ? true : false,
                          child: const Expanded(
                              child:ModelScreen()
                          )


                      ),
                      Visibility(
                          visible: appController.index.value == 1 ? true : false,
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Container( height: 300,
                                  color: Colors.yellow,),
                              ))),
                      Visibility(
                          visible: appController.index.value == 2 ? true : false,
                          child: Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16.0),
                                child: Container(
                                  height: 300,
                                  color: Colors.red,
                                ),
                              ))),

                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 16.0, top: 24),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(24),
                      //         border: Border.all(
                      //             color: ConstColor.primaryColor.value)),
                      //     width: Get.width,
                      //     height: Get.height * 0.052,
                      //     child: ListView.builder(
                      //         scrollDirection: Axis.horizontal,
                      //         itemCount: list.length,
                      //         itemBuilder: (context, index) {
                      //           return TabContainer();
                      //           //   Padding(
                      //           //   padding:  const EdgeInsets.only(left: 4.0,right: 4.0,top: 2,bottom: 2),
                      //           //   child: Container(
                      //           //     alignment: Alignment.center,
                      //           // decoration: BoxDecoration(
                      //           //       borderRadius: BorderRadius.circular(24),
                      //           //       gradient: LinearGradient(
                      //           //           begin:Alignment.topLeft,
                      //           //           end: Alignment.topRight,
                      //           //           colors: [
                      //           //             ConstColor.gradientOneColor.value,
                      //           //             ConstColor.gradientTwoColor.value,
                      //           //           ]
                      //           //       ),
                      //           //     ),
                      //           //     child: Padding(
                      //           //       padding: const EdgeInsets.only(left: 27.0,right: 27.0),
                      //           //       child: Text(list[index],style: desStyle,),
                      //           //     ),
                      //
                      //           // return TabContainer(
                      //           //   textColor: myController.index == index
                      //           //       ? Colors.black
                      //           //       : textColorGrey.value,
                      //           //   text: list[index],
                      //           //   borderColor: myController.index == index
                      //           //       ? whiteColor.value
                      //           //       : textColorGrey.value,
                      //           //   onPress: () {
                      //           //     setState(() {
                      //           //       myController.index.value = index;
                      //           //     });
                      //           //   },
                      //           // );
                      //         }),
                      //   ),
                      // ),
                      // Expanded(
                      //   child: TabBarView(children: [
                      //     Visibility(
                      //       visible:
                      //           appController.index.value == 0 ? true : false,
                      //       child: Container(
                      //         color: Colors.green,
                      //       ),
                      //     ),
                      //     Visibility(
                      //       visible:
                      //           appController.index.value == 1 ? true : false,
                      //       child: Container(
                      //         color: Colors.yellow,
                      //       ),
                      //     ),
                      //     Visibility(
                      //       visible:
                      //           appController.index.value == 2 ? true : false,
                      //       child: Container(
                      //         color: Colors.red,
                      //       ),
                      //     ),
                      //   ]),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ));
    });
  }
}




class ModelScreen extends StatefulWidget {
  const ModelScreen({super.key});

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}


class _ModelScreenState extends State<ModelScreen> {
  final appController = Get.find<AppController>();



  List data = [
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_one.png",
    "assets/images/image_dash_two.png",
  ];


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final commentsController = TextEditingController();
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        mainAxisExtent: 256, // Adjust the height of each item here
      ),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final name = appController.modelsData[index]['name'];
        final image = appController.modelsData[index]['image'];
        final location = appController.modelsData[index]['location'];
        return Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image),
            fit: BoxFit.fill
            )
          ),
          //height: 456, // Adjust the height of each item here
          width: width,
          child: Stack(
           // alignment: Alignment.bottomLeft,
            children: [

               Positioned(
                 right: 8,
                 top: 8,
                 child: Container(
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     gradient: LinearGradient(
                         begin:Alignment.topLeft,
                         end: Alignment.topRight,
                         colors: [
                           ConstColor.gradientOneColor.value,
                           ConstColor.gradientTwoColor.value,
                         ]
                     ),
                   ),
                   child:  Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Icon(Icons.diamond_outlined,color: ConstColor.primaryColor.value,),
                   ),
                 ),
               ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(name,style:normalStyle,),
                    Text(location,style: desStyle,),
                  ],
                ),
              ),


           //   Image.asset(data[index],),

              // Add other widgets to the Stack as needed
            ],
          ),
        );
      },
    );

  }
}
