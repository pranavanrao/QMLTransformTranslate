import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: root
        anchors.centerIn: parent
        rotation: 0

        Rectangle {
            id: yellowRect
            width: 200
            height: 200
            radius: width
            color: "yellow"
            border.color: "black"
            border.width: 3
            opacity: 0.5
            anchors.centerIn: parent

            transform: Translate {y: -75}
        }

        Rectangle {
            id: redRect
            width: 200
            height: 200
            radius: width
            color: "red"
            border.color: "black"
            border.width: 3
            opacity: 0.5
            anchors.centerIn: parent

            transform: Translate {x: 75}
        }

        Rectangle {
            id: blueRect
            width: 200
            height: 200
            radius: width
            color: "blue"
            border.color: "black"
            border.width: 3
            opacity: 0.5
            anchors.centerIn: parent

            transform: Translate {x: -75}
        }

        Rectangle {
            id: greenRect
            width: 200
            height: 200
            radius: width
            color: "green"
            border.color: "black"
            border.width: 3
            opacity: 0.5
            anchors.centerIn: parent

            transform: Translate {y: 75}
        }

        Rectangle {
            id: whiteRect
            width: 50
            height: 50
            radius: width
            color: "white"
            border.color: "black"
            border.width: 3
            anchors.centerIn: parent

            Rectangle {
                width: 5
                height: 5
                radius: width
                color: "black"
                anchors.centerIn: parent
            }
        }

        RotationAnimation {
            target: root
            from: 360
            to: 0
            duration: 5000
            direction: RotationAnimation.Counterclockwise
            loops: Animation.Infinite
            running: true
        }
    }
}
