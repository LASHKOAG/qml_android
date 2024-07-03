import QtQuick 2.13
import QtQuick.Window 2.13

Window {
    visible: true
    width: 420
    height: 780
    title: qsTr("Hello World")
    color: "steelblue"

    property var myModel: [
        {
            "name": "Alice",
            "ava": "https://i.pravatar.cc/256?u=a042581f4e29026704d",
            "status": "online",
            "lastPost": "Live each day as a gift"
        },
        {
            "name": "Bob",
            "ava": "https://i.pravatar.cc/256?u=a042581f4e2902344323",
            "status": "offline",
            "lastPost": "Fjhljk;h iih  ou hkjlkl;;p uyrudjh heyrjcbs jfhmflflf;fk ;fkfl,f;fl;f' kfkglbg ;bg;g ;g;g;g' tejfpielki ll uytfdg;h ddssj lfk lffsdk gdkhfhf jgjkg;; lutuyfvh hhllg lg uglhj ;iiij hurrtudjg 'oip pop"
        },
        {
            "name": "Julia",
            "ava": "https://i.pravatar.cc/256?u=100258134e2sffsdfsd",
            "status": "online",
            "lastPost": "Fjhljk;h iih  ou hkjlkl;;p uyrudjh heyrjcbs jfhmflflf;fk ;fkfl,f;fl;f' kfkglbg ;bg;g ;g;g;g' tejfpielki ll uytfdg;h ddssj lfk lffsdk gdkhfhf jgjkg;; lutuyfvh hhllg lg yuert fet ygu dgrtyh rtjui figfyui dtuy fde hheh yti o euhi iuyri gh[urt ui h] uit hiuug uityu iipp iyutwrjl kjywqsccxza klkiyh l;iyj kkigdf  kleth'nlo lkjoh'lj lklhd gkdkjofghc hlkjhg jkgl; j;;;g fuytrtywtrphjjk kghujhfkhfglj,. hffhj dfs er jkek"
        }
    ]

    ListView {
        anchors.fill: parent
        anchors.margins: 20
        model: myModel
        spacing: 10
        delegate: PersonDelegate {
            width: parent.width
            ava: modelData.ava
            name: modelData.name
            online: modelData.status === "online"
            lastPost: modelData.lastPost
        }
    }
}
