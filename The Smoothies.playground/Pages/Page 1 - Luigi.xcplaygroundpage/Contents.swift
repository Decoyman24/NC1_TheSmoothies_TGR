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
    func playSound2(nome: String, exten: String){
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
            Image(nsImage:#imageLiteral(resourceName: "smoo1.png"))
                .resizable()
                .frame(width:750 ,height:400)
                .onAppear{
                    playSound(nome: "audio1", exten: "mp3")
                }
               
//            Bottone che cambia view
//            onReceive(timer){_ in
//                if tempo > 0 {
//                    tempo -= 1
//                }
//                else if tempo == 0 {
//                avanti = true
//                }
//            }
//            if avanti == true {
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
            Image(nsImage: #imageLiteral(resourceName: "boxintro.png"))
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
            Image(nsImage:#imageLiteral(resourceName: "smss.png"))
                .resizable()
                .frame(width:750 ,height:400)
                .onAppear{
                    playSound(nome: "audio2", exten: "mp3")
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
            Image(nsImage: #imageLiteral(resourceName: "box1.png"))
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
            Image(nsImage:#imageLiteral(resourceName: "smoo0.png"))
                .resizable()
                .frame(width:750 ,height:400)
                .onAppear{
                    playSound(nome: "audio3", exten: "mp3")
                }
//            Bottone che cambia view
            Image(nsImage:#imageLiteral(resourceName: "waterbutton.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:700, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide3())
                }
            Image(nsImage:#imageLiteral(resourceName: "waterbackon.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:40, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide1())
                }
        }
        VStack{
//            Box di testo
            Image(nsImage: #imageLiteral(resourceName: "box2.png"))
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
            Image(nsImage:#imageLiteral(resourceName: "smoo2.png"))
                .resizable()
                .frame(width:750 ,height:400)
                .onAppear{
                    playSound(nome: "audio4", exten: "mp3")
                }
//            Bottone che cambia view
            Image(nsImage:#imageLiteral(resourceName: "waterbutton.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:700, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide4())
                }
            Image(nsImage:#imageLiteral(resourceName: "waterbackon.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:50, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide2())
                }
        }
        VStack{
//            Box di testo
            Image(nsImage: #imageLiteral(resourceName: "box3.png"))
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
            Image(nsImage:#imageLiteral(resourceName: "Posteri.png"))
                .resizable()
                .frame(width:750 ,height:400)
                .onAppear{
                    playSound(nome: "audio5", exten: "mp3")
                }
//            Bottone che cambia view
            Image(nsImage:#imageLiteral(resourceName: "waterbutton.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:700, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide5())
                }
            Image(nsImage:#imageLiteral(resourceName: "waterbackon.png"))
                .resizable()
                .frame(width:50, height:30)
                .position(x:50, y:200)
                .onTapGesture {
                    PlaygroundPage.current.setLiveView(Slide3())
                }
        }
        VStack{
//            Box di testo
            Image(nsImage: #imageLiteral(resourceName: "box4.png"))
                .resizable()
                .frame(width:750, height:125)
            }
    }
}

struct Slide5: View{
    var body: some View{
        ZStack{
//            Scena principale
            Image(nsImage:#imageLiteral(resourceName: "continues.jpeg"))
                .resizable()
                .frame(width:750 ,height:400)
            
            Image(nsImage:#imageLiteral(resourceName: "waterbackon.png"))
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
