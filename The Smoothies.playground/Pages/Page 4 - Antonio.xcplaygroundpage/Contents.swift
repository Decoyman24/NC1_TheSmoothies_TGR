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
        Image(nsImage:#imageLiteral(resourceName: "smoo11.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio12", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "kokobutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide1())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box11.png"))
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
        Image(nsImage:#imageLiteral(resourceName: "smoo11.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio13", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "kokobutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide2())
            }
        Image(nsImage:#imageLiteral(resourceName: "kokobackon.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:50, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Intro())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box12.png"))
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
        Image(nsImage:#imageLiteral(resourceName: "smoo12.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio14", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "kokobutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide3())
            }
        Image(nsImage:#imageLiteral(resourceName: "kokobackon.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:50, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide1())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box13.png"))
            .resizable()
            .frame(width:750, height:125)
        }
}
}

struct Slide3: View{
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
        Image(nsImage:#imageLiteral(resourceName: "smoo9.jpg"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio15", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "kokobutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide4())
            }
        Image(nsImage:#imageLiteral(resourceName: "kokobackon.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:50, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide2())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box14.png"))
            .resizable()
            .frame(width:750, height:125)
        }
}
}

struct Slide4: View{
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
        Image(nsImage:#imageLiteral(resourceName: "smoo.png"))
            .resizable()
            .frame(width:750 ,height:400)
            .onAppear{
                playSound(nome: "audio16", exten: "mp3")
            }
//            Bottone che cambia view
        Image(nsImage:#imageLiteral(resourceName: "kokobutton.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:700, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(TheEnd())
            }
        Image(nsImage:#imageLiteral(resourceName: "kokobackon.png"))
            .resizable()
            .frame(width:50, height:30)
            .position(x:50, y:200)
            .onTapGesture {
                PlaygroundPage.current.setLiveView(Slide3())
            }
    }
    VStack{
//            Box di testo
        Image(nsImage: #imageLiteral(resourceName: "box15.png"))
            .resizable()
            .frame(width:750, height:125)
        }
}
}

struct TheEnd: View{
    var body: some View{
        ZStack{
//            Scena principale
            Image(nsImage:#imageLiteral(resourceName: "end.png"))
                .resizable()
                .frame(width:750 ,height:400)
            
            Image(nsImage:#imageLiteral(resourceName: "kokobackon.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:50, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide4())
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
