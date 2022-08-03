import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.3
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../control" //import folder qml untuk kustom button
import "../pages/windowPage" //import halaman swipeview

Item {
    id: item1
    Image {
        id: image
        anchors.fill: parent
        source: "../../images/gearlogs.jpg"
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle {
        id: rectangle
        color: "#282c34"
        radius: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        clip: false
        anchors.bottomMargin: 60
        anchors.leftMargin: 90
        anchors.rightMargin: 90
        anchors.topMargin: 60
    }

    Rectangle {
        id: rectangleTop
        height: 92
        color: "#ffffff"
        radius: 10
        anchors.left: rectangle.left
        anchors.right: rectangle.right
        anchors.top: rectangle.top
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        Text {
            id: textTop
            text: qsTr("Event Logs (Log Kejadian)")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.top: parent.top
            font.pixelSize: 24
            font.italic: true
            anchors.leftMargin: 30
            font.bold: true
            anchors.topMargin: 30
        }
        clip: false
        anchors.topMargin: 0
    }

    ScrollView {
        id: scrollView
        anchors.left: rectangle.left
        anchors.right: rectangle.right
        anchors.top: rectangleTop.bottom
        anchors.bottom: rectangle.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 20
        ScrollBar.vertical.interactive: true
        Text {
            id: textContent
            width: 1050
            height: 470
            color: "#ffffff"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\n</style></head><body style=\" font-family:'MS Shell Dlg 2'; font-size:9.75pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a name=\"hs_cos_wrapper_module_1502712469324135\"></a><span style=\" font-size:12pt; font-weight:600; color:#ffffff;\">F</span><span style=\" font-size:12pt; font-weight:600; color:#ffffff;\">our</span><span style=\" font-size:12pt; font-weight:600;\"> Degrees of Freedom</span></p>\n<h2 style=\" margin-top:16px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a name=\"hs_cos_wrapper_module_1502712469324135\"></a><span style=\" font-size:7.8pt; font-weight:600;\">L</span><span style=\" font-size:7.8pt; font-weight:600;\">GPL has been chosen as the primary open-source license for Qt, because it provides the following four degrees of freedom that stem from the foundations of the GPL:</span></h2>\n<ul style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; -qt-list-indent: 1;\"><li style=\" font-size:7.8pt;\" style=\" margin-top:12px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Freedom to run the program for any purpose.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Freedom to study how the program works &amp; adapt it to specific needs.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Freedom to redistribute copies so you can help your neighbor.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Freedom to improve the program &amp; release your improvements to the public, so that the whole community benefits.</li></ul>\n<p style=\" margin-top:0px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a name=\"hs_cos_wrapper_module_1502712469324135\"></a><span style=\" font-size:7.8pt; font-weight:600;\">D</span><span style=\" font-size:7.8pt; font-weight:600;\">eveloping with LGPL</span></p>\n<p style=\" margin-top:0px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><a name=\"hs_cos_wrapper_module_1502712469324135\"></a><span style=\" font-size:7.8pt;\">T</span><span style=\" font-size:7.8pt;\">hese four degrees of freedom are very important for the success of the open-source Qt Project, and it is important that all users of Qt under LGPL adhere to these and fully meet all the requirements set by the LGPL. It is recommended that a thorough legal analysis is conducted when choosing to use any open-source licenses. In many cases, the LGPL is a viable solution to use, but it is important that the freedoms of the LGPL are not restricted from the user of an application or device using an LGPL library such as Qt, which may be difficult to achieve in some use cases. For such cases the commercial licensing option is typically a better choice. The following requirements should be fulfilled when, for example, creating an application or a device with Qt using the LGPL:</span></p>\n<ul style=\"margin-top: 0px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; -qt-list-indent: 1;\"><li style=\" font-size:7.8pt;\" style=\" margin-top:12px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Complete corresponding source code of the library used with the application or the device built using LGPL, including all modifications to the library, should be delivered with the application (or alternatively provide a written offer with instructions on how to get the source code). It should be noted that the complete corresponding source code has to be delivered even if the library has not been modified at all.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">In case of dynamic linking, it is possible, but not mandatory, to keep application source code proprietary as long as it is “work that uses the library” – typically achieved via dynamic linking of the library. In case of static linking of the library, the application itself may no longer be “work that uses the library” and thus become subject to LGPL. It is recommended to either link dynamically, or provide the application source code to the user under LGPL.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The user is allowed to change and re-link the library used in the application or device – including reverse engineering. With LGPLv3 it is explicitly stated that the user also needs to be able to run the re-linked binary, and that sufficient installation information must be provided. In practice, this forbids the creation of closed devices, also known as <span style=\" font-style:italic;\">tivoization</span>.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">If the application or device is not fully following all requirements of the LGPL, it is not allowed to be distributed at all. This includes, for example, possible patent license restricting distribution of the application in which case there is no right to distribute.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The freedoms provided by the LGPL license cannot be in any way negotiated upon or restricted from any of the recipients – i.e. it is not possible to make such terms for an application or a device using the LGPL library that would in any way restrict the rights provided by the LGPL. For example some means of distribution, such as online application stores, may have rules that are in conflict with LGPL, in which case those cannot be used with the LGPL licensing option of Qt.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The user of an application or device created with LGPL library has to be notified of their rights by providing a copy of the LGPL license text to the user and displaying a prominent notice about using the LGPL library – i.e. it is not allowed to hide the fact the LGPL library is used.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The LGPLv3 doesn’t forbid anyone from implementing any kind of DRM technology. However, if someone breaks the DRM, the license says that he will be free to distribute his software. For more details, see the <a href=\"http://www.gnu.org/licenses/gpl-faq.html#DRMProhibited\"><span style=\" text-decoration: underline; color:#0000ff;\">(L)GPLv3 license FAQ</span></a>.</li>\n<li style=\" font-size:7.8pt;\" style=\" margin-top:0px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">The LGPLv3 contains explicit patent clauses in order to prevent people from trying to enforce patent claims against other licensees of the open source libraries. The clauses are rather complex but extremely relevant especially for larger corporations with software patents. So, it is always recommended to go through the patent clauses carefully with a legal counsel to make sure this would not be an issue if deciding to use LGPLv3. For more information and details, please see the <a href=\"http://www.gnu.org/licenses/gpl-faq.html#v3PatentRetaliation\"><span style=\" text-decoration: underline; color:#0000ff;\">(L)GPLv3 FAQ</span></a>.</li></ul>\n<p style=\" margin-top:12px; margin-bottom:12px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-size:7.8pt;\">This is not a complete list of LGPL requirements – please refer to the LGPL for complete list of requirements – it is always recommended to contact an experienced legal counsel to clarify detailed licensing suitability. Please note that The Qt Company does not offer legal guidance on whether or not a certain license is suited for your need, or if your application or device meets the LGPL requirements. In case there is any doubt whether or not the requirements of LGPL can be met in full, the commercial licensing option of Qt is often the best choice.</span></p></body></html>"
            elide: Text.ElideNone
            font.pixelSize: 12
            verticalAlignment: Text.AlignBottom
            lineHeightMode: Text.ProportionalHeight
            wrapMode: Text.WordWrap
            textFormat: Text.RichText
            fontSizeMode: Text.FixedSize
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:720;width:1280}D{i:2}D{i:3}D{i:5}
}
##^##*/
