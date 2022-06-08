import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "qml/control" //import folder qml untuk kustom button

Window {
    id: mainWindow
    width: 1280
    height: 720

    /*
      Pembatas lebar dan tinggi window yang dapat diresize
      Sc: Di video ke-8
      https://www.youtube.com/watch?v=jKz_ESy8psQ&list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-&index=8
    */
    minimumWidth: 400
    minimumHeight: 240

    visible: true
    color: "#00000000"
    // "#00000000"  colorcode hex untuk transparan

    title: qsTr("Percobaan membuat aplikasi")

    //remove title bar
    flags: Qt.Window | Qt.FramelessWindowHint

    //Properties
    property int windowStatus: 0
    property int windowMargin: 10

    /*
      Function untuk minimize, maximize dan close
      Sc: Di video ke-7
      https://www.youtube.com/watch?v=KmfcqpLXjKI&list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-&index=7
    */


    QtObject{
        id: internal

        /*
          function untuk menghide resizeWindow
          Sc: Di video ke-8

        */
        function resetResizeBorders(){
                                    //resize visibility
                                    resizeLeft.visible = true
                                    resizeRight.visible = true
                                    resizeBottom.visible = true
                                    resizeWindow.visible = true
        }


        function maximizeRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                //resize visibility
                resizeLeft.visible = false
                resizeRight.visible = false
                resizeBottom.visible = false
                resizeWindow.visible = false
                btnMaximizRestore.btnIconSource = "images/restore.png"

            }
            else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                internal.resetResizeBorders()
                btnMaximizRestore.btnIconSource = "images/svg_images/square.svg"

            }
        }
        function ifMaximizedWindowRestore(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                internal.resetResizeBorders()
                btnMaximizRestore.btnIconSource = "images/svg_images/square.svg"

            }
        }

        function restoreMargins(){
            windowStatus = 0
            windowMargin = 10
            internal.resetResizeBorders()
            btnMaximizRestore.btnIconSource = "images/svg_images/square.svg"
        }

    }




    Rectangle {
        id: bg
        color: "#2c313c"
        border.color: "#383e4c"
        border.width: 1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: windowMargin
        anchors.leftMargin: windowMargin
        anchors.bottomMargin: windowMargin
        anchors.topMargin: windowMargin
        z: 1 //fix DropShadow overlap bg

        Rectangle {
            id: appContainer
            color: "#00ffffff"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#1c1d20"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                /*
                  ToggleButton bla bla bla
                  Sc: Di video ke???

                */


                ToggleButton {
                    onClicked: animationMenu.running = true //mentrigger leftMenu extend dan collapse

                }


                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 105
                    anchors.leftMargin: 70
                    anchors.topMargin: 0

                    DragHandler {
                        onActiveChanged: if(active)
                                             mainWindow.startSystemMove()

                    }

                    /*
                      Menghapus standard title bar
                      Sc: Di video ke-6
                      https://www.youtube.com/watch?v=5-_KWgWdLa0&list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-&index=6
                    */


                    Image {
                        id: iconApp
                        width: 22
                        height: 22
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "images/train-station.png"
                        anchors.leftMargin: 5
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        color: "#c3cbdd"
                        text: qsTr("Modul Pembelajaran Kereta Api | Politeknik Negeri Madiun")
                        anchors.left: iconApp.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        font.pointSize: 10
                        anchors.leftMargin: 5
                    }

                    Row {
                        id: rowButton
                        x: 441
                        y: 0
                        width: 105
                        height: 35
                        anchors.right: parent.right
                        anchors.rightMargin: -105

                        TopBarButton{
                            id: btnMinimize
                            //minimize
                            onClicked: {
                                mainWindow.showMinimized()
                                internal.restoreMargins()
                            }

                        }

                        TopBarButton {
                            id: btnMaximizRestore
                            btnIconSource: "images/svg_images/square.svg"
                            //maximize dan restore internal menyamakan QtObject
                            onClicked: internal.maximizeRestore()
                        }

                        TopBarButton {
                            id: btnClose
                            btnColorClicked: "#f20e91"
                            btnIconSource: "images/svg_images/cross.svg"
                            //close
                            onClicked: mainWindow.close()
                        }
                    }
                }

                Rectangle {
                    id: topBarDescription
                    y: 27
                    height: 25
                    color: "#282c34"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 0

                    Label {
                        id: labelTopDescription
                        color: "#c3cbdd"
                        text: qsTr("Software untuk modul pembelajaran sekaligus untuk monitoring dan kontrol kereta api")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 300
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }
                    HomeButton {
                        id: btnHome
                        text: qsTr("")
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        btnIconSource: "images/svg_images/home.svg"
                        anchors.topMargin: 0
                        anchors.bottomMargin: 0
                        isActiveMenu: true
                        onClicked: {
                            btnVibrasi.isActiveMenu = false
                            btnDoor.isActiveMenu = false
                            btnLightning.isActiveMenu = false
                            btnAC.isActiveMenu = false
                            btnBrake.isActiveMenu = false
                            btnGarduTraksi.isActiveMenu = false
                            btnInfo.isActiveMenu = false
                            btnHome.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl("qml/pages/homePage.qml"))
                        }
                    }
                }

            }

            Rectangle {
                id: content
                color: "#00ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                clip: false
                anchors.topMargin: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#1c1d20"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0

                    /*
                      PropertyAnimation digunakan untuk extend dan collapse leftMenu
                      Sc: Di video ke-6
                      https://www.youtube.com/watch?v=5-_KWgWdLa0&list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-&index=6
                    */
                    PropertyAnimation{
                        id:animationMenu
                        target: leftMenu
                        property: "width"
                        //jika lebar pixel = 70 pixel akan extend ke 200, jika tidak kembali ke 70
                        to: if(leftMenu.width == 70) return 250; else return 70
                        duration: 500
                        easing.type: Easing.InOutQuint
                    }

                    Column {
                        id: columnMenus
                        height: 286
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.topMargin: 0

                        /* Button {
                             id: button
                             text: qsTr("Button")
                         }*/

                        LeftMenuButton{
                            id: btnVibrasi
                            width: leftMenu.width
                            text: qsTr("Vibration System")
                            clip: false
                            btnIconSource: "images/svg_images/vibration-ring.svg"
                            //isActiveMenu: true
                            onClicked: {
                                btnVibrasi.isActiveMenu = true
                                btnDoor.isActiveMenu = false
                                btnLightning.isActiveMenu = false
                                btnAC.isActiveMenu = false
                                btnBrake.isActiveMenu = false
                                btnGarduTraksi.isActiveMenu = false
                                btnInfo.isActiveMenu = false
                                btnHome.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                            }
                        }

                        LeftMenuButton {
                            id: btnDoor
                            width: leftMenu.width
                            text: qsTr("Door System")
                            btnIconSource: "images/btn-doubledoor.png"
                            onClicked: {
                                btnVibrasi.isActiveMenu = false
                                btnDoor.isActiveMenu = true
                                btnLightning.isActiveMenu = false
                                btnAC.isActiveMenu = false
                                btnBrake.isActiveMenu = false
                                btnGarduTraksi.isActiveMenu = false
                                btnInfo.isActiveMenu = false
                                btnHome.isActiveMenu = false
                                stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                            }
                        }


                         LeftMenuButton {
                             id: btnLightning
                             width: leftMenu.width
                             text: qsTr("Lightning System")
                             btnIconSource: "images/btnlogo-lightning.png"
                             onClicked: {
                                 btnVibrasi.isActiveMenu = false
                                 btnDoor.isActiveMenu = false
                                 btnLightning.isActiveMenu = true
                                 btnAC.isActiveMenu = false
                                 btnBrake.isActiveMenu = false
                                 btnGarduTraksi.isActiveMenu = false
                                 btnInfo.isActiveMenu = false
                                 btnHome.isActiveMenu = false
                                 stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                             }
                         }
                         LeftMenuButton {
                             id: btnAC
                             width: leftMenu.width
                             text: qsTr("Air Conditioner")
                             btnIconSource: "images/btn-air-conditioner.png"
                             onClicked: {
                                 btnVibrasi.isActiveMenu = false
                                 btnDoor.isActiveMenu = false
                                 btnLightning.isActiveMenu = false
                                 btnAC.isActiveMenu = true
                                 btnBrake.isActiveMenu = false
                                 btnGarduTraksi.isActiveMenu = false
                                 btnInfo.isActiveMenu = false
                                 btnHome.isActiveMenu = false
                                 stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                             }
                         }
                         LeftMenuButton {
                             id: btnBrake
                             width: leftMenu.width
                             text: qsTr("Brake System")
                             btnIconSource: "images/btnlogo-brake.png"
                             onClicked: {
                                 btnVibrasi.isActiveMenu = false
                                 btnDoor.isActiveMenu = false
                                 btnLightning.isActiveMenu = false
                                 btnAC.isActiveMenu = false
                                 btnBrake.isActiveMenu = true
                                 btnGarduTraksi.isActiveMenu = false
                                 btnInfo.isActiveMenu = false
                                 btnHome.isActiveMenu = false
                                 stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                             }
                         }
                         LeftMenuButton {
                             id: btnGarduTraksi
                             width: leftMenu.width
                             text: qsTr("Gardu Traksi")
                             btnIconSource: "images/btn-electricity-tower.png"
                             onClicked: {
                                 btnVibrasi.isActiveMenu = false
                                 btnDoor.isActiveMenu = false
                                 btnLightning.isActiveMenu = false
                                 btnAC.isActiveMenu = false
                                 btnBrake.isActiveMenu = false
                                 btnGarduTraksi.isActiveMenu = true
                                 btnInfo.isActiveMenu = false
                                 btnHome.isActiveMenu = false
                                 stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                             }
                         }
                    }

                    LeftMenuButton {
                        id: btnInfo
                        width: 250
                        text: qsTr("About Us")
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 25
                        btnIconSource: "images/svg_images/info.svg"
                        onClicked: {
                            btnVibrasi.isActiveMenu = false
                            btnDoor.isActiveMenu = false
                            btnLightning.isActiveMenu = false
                            btnAC.isActiveMenu = false
                            btnBrake.isActiveMenu = false
                            btnGarduTraksi.isActiveMenu = false
                            btnInfo.isActiveMenu = true
                            btnHome.isActiveMenu = false
                            stackView.push(Qt.resolvedUrl("../qtquick_hmidisplay_percobaan1/qml/pages/Dasboard-brake.qml"))

                        }
                    }


                }

                Rectangle {
                    id: contentPages
                    color: "#2c313c"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 25
                    anchors.topMargin: 0

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        clip: true
                        initialItem: Qt.resolvedUrl("qml/pages/homePage.qml")
                    }
                }

                Rectangle {
                    id: rectangle
                    color: "#1c1d20"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0

                    Label {
                        id: labelTopDescription1
                        color: "#c3cbdd"
                        text: qsTr("Dibuat pada tahun 2022")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.rightMargin: 30
                        anchors.topMargin: 0
                        anchors.leftMargin: 10
                    }

                    MouseArea {
                        id: resizeWindow
                        x: 693
                        y: 0
                        width: 25
                        height: 25
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        cursorShape: Qt.SizeFDiagCursor

                        DragHandler{
                            target: null
                            onActiveChanged: if (active){
                                                 mainWindow.startSystemResize(Qt.RightEdge | Qt.BottomEdge)
                                             }
                        }

                        Image {
                            id: image
                            opacity: 0.5
                            anchors.fill: parent
                            source: "../images/svg_images/apps.svg"
                            anchors.leftMargin: 5
                            anchors.topMargin: 5
                            sourceSize.height: 16
                            sourceSize.width: 16
                            fillMode: Image.PreserveAspectFit

                            ColorOverlay{
                                anchors.fill: image
                                source: image
                                color: "#ffffff"
                                antialiasing: false
                                height:16
                                width: 16
                            }

                        }
                    }
                }
            }
        }
    }

    /*
      Dropshadow
      Sc: Di video ke-6
      https://www.youtube.com/watch?v=5-_KWgWdLa0&list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-&index=6
    */
    DropShadow{
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 0
        radius: 16
        color: "#80000000"
        source: bg
        z: 0
    }

    /*
      Rezize window kiri
      Sc: Di video ke-8
      https://www.youtube.com/watch?v=jKz_ESy8psQ&list=PLfQ7GQSrl0_v1T4Pe_NW4GLaynBfydFy-&index=8
    */
    MouseArea {
        id: resizeLeft
        width: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) (mainWindow.startSystemResize(Qt.LeftEdge))
        }
    }

    MouseArea {
        id: resizeRight
        width: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) (mainWindow.startSystemResize(Qt.RightEdge))
        }
    }

    MouseArea {
        id: resizeBottom
        height: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 0
        cursorShape: Qt.SizeVerCursor

        DragHandler{
            target: null
            onActiveChanged: if (active) (mainWindow.startSystemResize(Qt.BottomEdge))
        }
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
