//: [Previous](@previous)

import PlaygroundSupport
import SwiftUI
import AVFoundation

struct Intro: View{
    func playSound(nome: String, exten: String){
        var filePath: String?
        filePath = Bundle.main.path(forResource: nome, ofType: exten)     // forResource: filename / ofType: extension
        let fileURL = URL(fileURLWithPath: filePath!)
        var soundID:SystemSoundID = 0
        AudioServicesCreateSystemSoundID(fileURL as CFURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
    }
var body: some View{
    ZStack{
//            Scena principale INSERIRE MOVIMENTO SCRAUSO GIF
//        SE POSSIBILE
        Image(nsImage:#imageLiteral(resourceName: "smoo4.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio6", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "waterbutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide1())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box5.png"))
            .resizable()
            .frame(width:750, height:125)
        }
}
    }

struct Slide1: View{
    func playSound(nome: String, exten: String){
        var filePath: String?
        filePath = Bundle.main.path(forResource: nome, ofType: exten)     // forResource: filename / ofType: extension
        let fileURL = URL(fileURLWithPath: filePath!)
        var soundID:SystemSoundID = 0
        AudioServicesCreateSystemSoundID(fileURL as CFURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
    }
var body: some View{
    ZStack{
//            Scena principale
        Image(nsImage:#imageLiteral(resourceName: "smoo5.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio7", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "waterbutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide2())
            }
        Image(nsImage:#imageLiteral(resourceName: "waterbackon.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:50, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Intro())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box6.png"))
            .resizable()
            .frame(width:750, height:125)
        }
}
}

struct Slide2: View{
    func playSound(nome: String, exten: String){
        var filePath: String?
        filePath = Bundle.main.path(forResource: nome, ofType: exten)     // forResource: filename / ofType: extension
        let fileURL = URL(fileURLWithPath: filePath!)
        var soundID:SystemSoundID = 0
        AudioServicesCreateSystemSoundID(fileURL as CFURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
    }
var body: some View{
    ZStack{
//            Scena principale
        Image(nsImage:#imageLiteral(resourceName: "smoo6.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio8", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "nobotton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide3())
            }
        Image(nsImage:#imageLiteral(resourceName: "waterbackon.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:50, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide1())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box7.png"))
            .resizable()
            .frame(width:750, height:125)
        }
}
}

struct Slide3: View{
    var body: some View{
        ZStack{
//            Scena principale
            Image(nsImage:#imageLiteral(resourceName: "continues.jpeg"))
                .resizable()
                .frame(width:750 ,height:400)
            
            Image(nsImage:#imageLiteral(resourceName: "bobotton.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:50, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide2())
                }
//            Bottone che cambia view
//            Image(nsImage:#imageLiteral(resourceName: "waterbutton.png"))
//                .resizable()
//                .frame(width:70, height:50)
//                .position(x:700, y:200)
//                .onTapGesture {
//                    PlaygroundPage.current.setLiveView(Slide5())
//                }
//        }
//        VStack{
//            Box di testo
//            Image(nsImage: #imageLiteral(resourceName: "box4.jpg"))
//                .resizable()
//                .frame(width:750, height:100)
//            }
    }
}
}

PlaygroundPage.current.setLiveView(Intro())
//: [Next](@next)
