import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.15 //Class yg dibutuhkan untuk DropShadow
import QtQml 2.3 //class yg dibutuhkan untuk QtObject
import "../../control" //import folder qml untuk kustom button
import QtQuick.Dialogs 1.3

Item {
    Component
    {
        id: columnComponent
        TableViewColumn{width: 100 }
    }

    TableView {
        id: view
        anchors.fill: parent
        resources:
        {
            var roleList = myModel.customRoleNames
            var temp = []
            for(var i=0; i<roleList.length; i++)
            {
                var role  = roleList[i]
                temp.push(columnComponent.createObject(view, { "role": role, "title": role}))
            }
            return temp
        }

        model: myModel
    }
//    Component{
//        id: columnComponent
//        TableViewColumn{width: 30}
//    }

//    TableView {
//        id: tableView
//        model: listModel
//        property var titles: somethingDynamic
//        property var curTitles: {
//            var t=[]
//            for(var i=0;i<columnCount;i++){
//                t.push(getColumn(i).title)
//            }
//            return t
//        }
//        onTitlesChanged:{
//            for(var i=0;i<titles.length;i++){
//                if(curTitles.indexOf(titles[i])==-1){
//                    var column = addColumn(columnComponent)
//                    column.title=titles[i]
//                    column.role=titles[i]
//                }
//            }
//            for(var i=curTitles.length-1;i>=0;i--){
//                if(titles.indexOf(curTitles[i])==-1){
//                    removeColumn(i)
//                }
//            }
//        }
//    }

}
