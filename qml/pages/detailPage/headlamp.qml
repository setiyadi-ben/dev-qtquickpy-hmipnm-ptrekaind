import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../../control" //import folder qml untuk kustom button
import "../../pages/windowPage" //import halaman swipeview

Item {
    id: item1
    Rectangle {
       anchors.fill: parent
       color: "#2F3136"
    }

Text {
    id: textJudul
    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'MS Shell Dlg 2'; font-size:18pt; font-weight:600; color:#ffffff;\">Head Lamp</span></p></body></html>"
    anchors.left: parent.left
    anchors.top: parent.top
    font.pixelSize: 12
    textFormat: Text.RichText
    anchors.leftMargin: 40
    anchors.topMargin: 15
}

DownloadButton {
    x: 188
    anchors.top: rectanglePict.bottom
    anchors.topMargin: 5
    onClicked: {
         Qt.openUrlExternally("https://acrobat.adobe.com/id/urn:aaid:sc:AP:0bb00457-8817-499d-921e-ea4d1a70e213")
    }
}

Rectangle {
    id: rectanglePict
    width: 325
    height: 325
    opacity: 1
    color: "#cfcfcf"
    radius: 50
    anchors.left: parent.left
//    anchors.right: left
    anchors.top: parent.top
    anchors.leftMargin: 53
    anchors.topMargin: 81
    Image {
        id: image1
        visible: false
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: "../../../images/modulLighting/headlamp.JPG"
        fillMode: Image.PreserveAspectCrop
        anchors.rightMargin: 20
        anchors.bottomMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: 20
    }

    Rectangle {
        id: circleImg
        x: 20
        y: 20
        width: image1.width
        height: image1.height
        visible: false
        radius: 250
        smooth: true
    }

    OpacityMask {
        visible: true
        anchors.fill: image1
        source: image1
        maskSource: circleImg
    }
    anchors.rightMargin: 20
}

MenuButton {
    id: btnNext
    text: qsTr("Selanjutnya")
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    btnIconSource: "../../../images/next.png"
    anchors.rightMargin: 20
    anchors.bottomMargin: 40
    onClicked: {
        stackView.push(Qt.resolvedUrl("../detailPage/housing.qml"))
    }
}

MenuButton {
    id: btnBack
    x: 829
    y: 620
    text: qsTr("Kembali")
    anchors.right: btnNext.left
    anchors.bottom: parent.bottom
    btnIconSource: "../../../images/go-back-arrow.png"
    anchors.rightMargin: 31
    anchors.bottomMargin: 40
    onClicked: {
        stackView.push(Qt.resolvedUrl("../../../qml/pages/windowPage/lightingIntroduksi.qml"))
    }
}

//Flickable {
//    id: flickable
//    anchors.fill: parent
//    clip: true

//    Text/*.flickable: TextArea*/ {
//    id: textContent
//    height: 467
//    visible: true
//    color: "#ffffff"
//    text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:7.8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Generator listrik pertama kali ditemukan oleh Michael Faraday pada tahun 1831. Generator listrik pertama saat itu dibuat dalam bentuk kawat besi berbentuk “U” yang dililitkan dengan gulungan kawat. Generator tersebut dikenal dengan nama Generator Cakram Faraday. Dengan menggunakan induksi elektromagnetik, generator listrik tersebut bekerja dengan memutar kumparan dalam medan magnet sehingga muncul energi induksi.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Terdapat 2 komponen utama pada generator listrik, yaitu: sator (bagian yang diam) dan rotor (bagian yang bergerak). Rotor akan berhubungan dengan poros generator listrik yang berputar pada pusat stator. Kemudian poros generator listrik tersebut biasanya diputar dengan menggunakan usaha yang berasal dari luar, seperti yang berasal dari turbin air maupun turbin uap.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Berdasarkan jenis arus listrik yang dihasilkan, generator listrik dibedakan menjadi 2 macam, yaitu Generator Listrik Alternator (AC) dan Generator Listrik Dinamo (DC).</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:9.75pt; font-weight:600;\">Mount Melbourne</span><span style=\" font-size:9.75pt;\"> is a 2,733-metre-high (8,967 ft) ice-covered </span><a href=\"https://en.wikipedia.org/wiki/Stratovolcano\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">stratovolcano</span></a><span style=\" font-size:9.75pt;\"> in </span><a href=\"https://en.wikipedia.org/wiki/Victoria_Land\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Victoria Land</span></a><span style=\" font-size:9.75pt;\">, </span><a href=\"https://en.wikipedia.org/wiki/Antarctica\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Antarctica</span></a><span style=\" font-size:9.75pt;\">, between </span><a href=\"https://en.wikipedia.org/wiki/Wood_Bay\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Wood Bay</span></a><span style=\" font-size:9.75pt;\"> and </span><a href=\"https://en.wikipedia.org/wiki/Terra_Nova_Bay\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Terra Nova Bay</span></a><span style=\" font-size:9.75pt;\">. It is an elongated mountain with a summit </span><a href=\"https://en.wikipedia.org/wiki/Caldera\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">caldera</span></a><span style=\" font-size:9.75pt;\"> filled with ice with numerous </span><a href=\"https://en.wikipedia.org/wiki/Parasitic_vent\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">parasitic vents</span></a><span style=\" font-size:9.75pt;\">; a </span><a href=\"https://en.wikipedia.org/wiki/Volcanic_field\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">volcanic field</span></a><span style=\" font-size:9.75pt;\"> surrounds the edifice. Mount Melbourne has a volume of about 180 cubic kilometres (43 cu mi) and consists of </span><a href=\"https://en.wikipedia.org/wiki/Tephra\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">tephra</span></a><span style=\" font-size:9.75pt;\"> deposits and </span><a href=\"https://en.wikipedia.org/wiki/Lava_flow\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">lava flows</span></a><span style=\" font-size:9.75pt;\">; tephra deposits are also found encased within ice and have been used to date the last eruption of Mount Melbourne to 1892 ± 30 years. The volcano is </span><a href=\"https://en.wikipedia.org/wiki/Fumarole\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">fumarolically</span></a><span style=\" font-size:9.75pt;\"> active. </span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:9.75pt;\">The volcano is part of the </span><a href=\"https://en.wikipedia.org/wiki/McMurdo_Volcanic_Group\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">McMurdo Volcanic Group</span></a><span style=\" font-size:9.75pt;\">, and together with </span><a href=\"https://en.wikipedia.org/wiki/The_Pleiades_(volcano_group)\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">The Pleiades</span></a><span style=\" font-size:9.75pt;\">, </span><a href=\"https://en.wikipedia.org/wiki/Mount_Overlord\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Mount Overlord</span></a><span style=\" font-size:9.75pt;\">, </span><a href=\"https://en.wikipedia.org/wiki/Mount_Rittmann\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Mount Rittmann</span></a><span style=\" font-size:9.75pt;\"> and the </span><a href=\"https://en.wikipedia.org/wiki/Malta_Plateau\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Malta Plateau</span></a><span style=\" font-size:9.75pt;\"> forms a subprovince, the Melbourne volcanic province. The volcanism is related both to the </span><a href=\"https://en.wikipedia.org/wiki/West_Antarctic_Rift\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">West Antarctic Rift</span></a><span style=\" font-size:9.75pt;\"> and to local </span><a href=\"https://en.wikipedia.org/wiki/Tectonic\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">tectonic</span></a><span style=\" font-size:9.75pt;\"> structures such as </span><a href=\"https://en.wikipedia.org/wiki/Fault_(geology)\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">faults</span></a><span style=\" font-size:9.75pt;\"> and </span><a href=\"https://en.wikipedia.org/wiki/Graben\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">grabens</span></a><span style=\" font-size:9.75pt;\">.</span><a name=\"cite_ref-3\"></a><a href=\"https://en.wikipedia.org/wiki/Mount_Melbourne#cite_note-3\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff; vertical-align:super;\">[</span></a><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff; vertical-align:super;\">a]</span><span style=\" font-size:9.75pt;\"> Mount Melbourne has mainly erupted </span><a href=\"https://en.wikipedia.org/wiki/Trachyandesite\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">trachyandesite</span></a><span style=\" font-size:9.75pt;\"> and </span><a href=\"https://en.wikipedia.org/wiki/Trachyte\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">trachyte</span></a><span style=\" font-size:9.75pt;\">, which formed within a </span><a href=\"https://en.wikipedia.org/wiki/Magma_chamber\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">magma chamber</span></a><span style=\" font-size:9.75pt;\">; </span><a href=\"https://en.wikipedia.org/wiki/Basalt\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">basaltic</span></a><span style=\" font-size:9.75pt;\"> rocks are less common. </span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"https://en.wikipedia.org/wiki/Geothermal_heat\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">Geothermal heat</span></a><span style=\" font-size:9.75pt;\"> flow on Mount Melbourne has created a unique ecosystem formed by </span><a href=\"https://en.wikipedia.org/wiki/Moss\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">mosses</span></a><span style=\" font-size:9.75pt;\"> and </span><a href=\"https://en.wikipedia.org/wiki/Liverwort\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">liverworts</span></a><span style=\" font-size:9.75pt;\"> that grow between fumaroles, </span><a href=\"https://en.wikipedia.org/wiki/Fumarolic_ice_tower\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">ice towers</span></a><span style=\" font-size:9.75pt;\">, and ice </span><a href=\"https://en.wikipedia.org/wiki/Hummock\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">hummocks</span></a><span style=\" font-size:9.75pt;\">. This type of vegetation is found at other volcanoes of Antarctica and develops when volcanic heat generates meltwater from snow and ice, thus allowing plants to grow in the cold Antarctic environment. These mosses are particularly common in a </span><a href=\"https://en.wikipedia.org/wiki/Protected_area\"><span style=\" font-size:9.75pt; text-decoration: underline; color:#0000ff;\">protected area</span></a><span style=\" font-size:9.75pt;\"> known as Cryptogam Ridge within and south of the summit caldera.</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The &quot;Release&quot; position connects the main reservoir to the brake pipe.  This raises the air pressure in the brake pipe as quickly as possible to get a rapid release after the driver gets the signal to start the train.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">In the &quot;Running&quot; position, the feed valve is selected.  This allows a slow feed to be maintained into the brake pipe to counteract any small leaks or losses in the brake pipe, connections and hoses.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">&quot;Lap&quot; is used to shut off the connection between the main reservoir and the brake pipe and to close off the connection to atmosphere after a brake application has been made.  It can only be used to provide a partial application. A partial release is not possible with the common forms of air brake, particularly those used on US freight trains. </p>\n<h4 style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:medium; font-weight:600;\">More Information </span></h4>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"http://www.railcar.co.uk/technology/brakes/?page=description\"><span style=\" font-family:'Verdana'; text-decoration: underline; color:#0000ff;\">Vacuum Brake</span></a><span style=\" font-family:'Verdana'; color:#424242;\"> description from the Railcar website.</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"http://www.catskillarchive.com/rrextra/chapt21.Html\"><span style=\" font-family:'Verdana'; text-decoration: underline; color:#0000ff;\">The Westinghouse Air Brake</span></a><span style=\" font-family:'Verdana'; color:#424242;\"> a 19th century description from the Catskill Archive</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a href=\"file:///Users/prconnor/Documents/Website%20Files/Sandvox%20Old%20Test/xtrains/train-equipment/index.html\"><span style=\" text-decoration: underline; color:#0000ff;\">Train Equipment</span></a> </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">&quot;Application&quot; closes off the connection from the main reservoir and opens the brake pipe to atmosphere.  The brake pipe pressure is reduced as air escapes.  The driver (and any observer in the know) can often hear the air escaping. </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Most driver's brake valves were fitted with an &quot;Emergency&quot; position.  Its operation is the same as the &quot;Application&quot; position, except that the opening to atmosphere is larger to give a quicker application.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Verdana';\">To ensure that brake pipe pressure remains at the required level, a feed valve is connected between the main reservoir and the brake pipe when the &quot;Running&quot; position is selected.  This valve is set to a specific operating pressure.  Different railways use different pressures but they generally range between 65 and 90 psi (4.5 to 6.2 bar).</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">A small pilot reservoir (the Equalising Reservoir) <span style=\" font-family:'Verdana';\">used to help the driver select the right pressure in the brake pipe when making an application.  When an application is made, moving the brake valve handle to the application position does not discharge the brake pipe directly, it lets air out of the equalising reservoir.  The equalising reservoir is connected to a relay valve (called the &quot;equalising discharge valve&quot; and not shown in my diagram) which detects the drop in pressure and automatically lets air escape from the brake pipe until the pressure in the pipe is the same as that in the equalising reservoir.</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The equalising reservoir overcomes the difficulties which can result from a long brake pipe.  A long pipe will mean that small changes in pressure selected by the driver to get a low rate of braking will not be seen on his gauge until the change in pressure has stabilised along the whole train.  The equalising reservoir and associated relay valve allows the driver to select a brake pipe pressure without having to wait for the actual pressure to settle down along a long brake pipe before he gets an accurate reading.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Verdana';\">The brake pipe running the length of the train, which transmits the variations in pressure required to control the brake on each vehicle.  It is connected between vehicles by flexible hoses, which can be uncoupled to allow vehicles to be separated.   The use of the air system makes the brake &quot;fail safe&quot;, i.e. loss of air in the brake pipe will cause the brake to apply.  Brake pipe pressure loss can be through a number of causes as follows:</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• A controlled reduction of pressure by the driver </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• A rapid reduction by the driver using the emergency position on his brake valve </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• A rapid reduction by the conductor (guard) who has an emergency valve at his position </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• A rapid reduction by passengers (on some railways) using an emergency system to open a valve </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• A rapid reduction through a burst pipe or hose </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• A rapid reduction when the hoses part as a result of the train becoming parted or derailed. </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">At the ends of each vehicle, &quot;angle cocks&quot; are provided to allow the ends of the brake pipe hoses to be sealed when the vehicle is uncoupled.  The cocks prevent the air being lost from the brake pipe.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The brake pipe is carried between adjacent vehicles through flexible hoses.  The hoses can be sealed at the outer ends of the train by closing the angle cocks.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Each vehicle has at least one brake cylinder.  Sometimes two or more are provided.   The movement of the piston contained inside the cylinder operates the brakes through links called &quot;rigging&quot;.  The rigging applies the blocks to the wheels.  Some modern systems use disc brakes.  The piston inside the brake cylinder moves in accordance with the change in air pressure in the cylinder. </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The operation of the air brake on each vehicle relies on the difference in pressure between one side of the triple valve piston and the other.  In order to ensure there is always a source of air available to operate the brake, an &quot;auxiliary reservoir&quot; is connected to one side of the piston by way of the triple valve.  The flow of air into and out of the auxiliary reservoir is controlled by the triple valve.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">This is the friction material which is pressed against the surface of the wheel tread by the upward movement of the brake cylinder piston. Often made of cast iron or some composition material, brake blocks are the main source of wear in the brake system and require regular inspection to see that they are changed when required.  Many modern braking systems use air operated disc brakes. These operate to the same principles as those used on road vehicles.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">This is the system by which the movement of the brake cylinder piston transmits pressure to the brake blocks on each wheel.  Rigging can often be complex, especially under a passenger car with two blocks to each wheel, making a total of sixteen.  Rigging requires careful adjustment to ensure all the blocks operated from one cylinder provide an even rate of application to each wheel.  If you change one block, you have to check and adjust all the blocks on that axle.</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The operation of the brake on each vehicle is controlled by the &quot;triple valve&quot;, so called because it originally comprised three valves - a &quot;slide valve&quot;, incorporating a &quot;graduating valve&quot; and a &quot;regulating valve&quot;.  It also has functions - to release the brake, to apply it and to hold it at the current level of application.  The triple valve contains a slide valve which detects changes in the brake pipe pressure and rearranges the connections inside the valve accordingly.  It either:</p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• recharges the auxiliary reservoir and opens the brake cylinder exhaust, </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• closes the brake cylinder exhaust and allows the auxiliary reservoir air to feed into the brake cylinder </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">• or holds the air pressures in the auxiliary reservoir and brake cylinder at the current level.  </p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The triple valve is now usually replaced by a distributor - a more sophisticated version with built-in refinements like graduated release.</p></body></html>"
//    anchors.left: parent.left
//    anchors.right: parent.right
//    anchors.top: parent.top
//    font.pixelSize: 12
//    horizontalAlignment: Text.AlignLeft
//    verticalAlignment: Text.AlignTop
//    wrapMode: Text.WordWrap
//    textFormat: Text.RichText

//    }
//    ScrollBar.vertical: ScrollBar{}
//}

ScrollView {
    id: scrollView
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    activeFocusOnTab: false
    anchors.bottomMargin: 206
    anchors.rightMargin: 30
    anchors.leftMargin: 428
    anchors.topMargin: 81
    clip: true

    Text {
        id: textContent
        x: 0
        y: 0
        width: 812
        height: 415
        visible: true
        color: "#ffffff"
        text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'Titillium Web'; font-size:8pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Times New Roman','serif'; font-size:14pt;\">Head Lamp merupakan lampu penerangan utama yang terletak di bagian depan kereta.</span></p>\n<p style=\"-qt-paragraph-type:empty; margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-size:14pt;\"><br /></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Times New Roman','serif'; font-size:16pt; font-weight:600; color:#000000;\">Spesifikasi komponen </span><span style=\" font-family:'Times New Roman','serif'; font-size:14pt; font-weight:600;\">\t</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Times New Roman','serif'; font-size:14pt;\">Nominal Power\t\t\t: 500 Watt</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Times New Roman','serif'; font-size:14pt;\">Nominal Lamp Voltage\t\t: 120 Volt</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Times New Roman','serif'; font-size:14pt;\">Nominal Coreelated Colour Tempature\t: 2750 Kelvin</span></p>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Times New Roman','serif'; font-size:14pt;\">Nominal Lumens\t\t\t: 7650 lumen</span></p></body></html>"
        font.pixelSize: 12
        verticalAlignment: Text.AlignTop
        wrapMode: Text.Wrap
        textFormat: Text.RichText
    }
    ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
}

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:720;width:1280}
}
##^##*/
