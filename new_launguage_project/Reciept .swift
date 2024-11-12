//
//  Reciept .swift
//  new_launguage_project
//
//  Created by Ai on 2024/11/12.
//

import SwiftUI


//class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//    @IBAction func buttonClick(_ sender: Any) {
//        let imagePickerController = UIImagePickerController()
//
//    }
//}



struct Reciept_: View {
    var body: some View {
        VStack(alignment: .leading){
//                LinearGradient(gradient:
//                                Gradient(colors: [ .white, .light, .dark]),
//                               startPoint: .topLeading,
//                               endPoint: .bottomTrailing)
//                .ignoresSafeArea()
                Text("Keep your reciept here📄")
                .font((.system(size: 30)))
                .padding(.bottom, 700)
            }
        
    }
}

#Preview {
    Reciept_()
}
