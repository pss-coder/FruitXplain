//
//  FruitSnap.swift
//  FruitXplain
//
//  Created by Pawandeep Sekhon on 4/6/23.
//

import SwiftUI

struct FruitSnap: View {
    
    @State private var isImagePickerDisplay = false
    
    @State private var image: Image? // to display
    @State private var selectedImage: UIImage = UIImage() // select image from library
    @State var sourceType: UIImagePickerController.SourceType = .photoLibrary

    
    // for ML
    @State private var ciImage: CIImage?
    
    @ObservedObject var classifier: ImageClassifier

    
    var body: some View {

        // frame to display photo
        // button to upload photo ( either by photos or camera )
        // upon photo upload => auto classify and get detail
        
        VStack {
            if image != nil {
                Image(uiImage: selectedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                           .clipShape(Circle())
                    .frame(width: 350, height: 400)
            } else {
//                Image(systemName: "snow")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .clipShape(Circle())
//                    .frame(width: 300, height: 300)
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .fill(.gray)
                                .frame(width: 350, height: 400)
            }
            
            HStack {
                Button("Photo Library") {
                    sourceType = .photoLibrary
                    self.isImagePickerDisplay.toggle()

                }
                Button("Camera") {
                    sourceType = .camera
                    self.isImagePickerDisplay.toggle()
                }
                
                Button("Snap a Fruit") {
                    // do something
                    
                    classifier.detect(ciImage: ciImage!)

                }
            }
            .buttonBorderShape(.capsule)
            .buttonStyle(.bordered)
            .padding()
            
            Group {
                    if let imageClass = classifier.imageClass {
                        HStack{
                            Text("Image categories:")
                                .font(.caption)
                            Text(imageClass)
                                .bold()
                        }
                    } else {
                        HStack{
                            Text("Image categories: NA")
                                .font(.caption)
                        }
                    }
                }
                .font(.subheadline)
                .padding()
        }
        .onChange(of: selectedImage, perform: { _ in
             loadImage()
        })
        .sheet(isPresented: self.$isImagePickerDisplay) {
            ImagePicker(selectedImage: $selectedImage, sourceType: sourceType)
        }
    }
    
    // function must be placed at the bottom
    func loadImage() {
        //let selectedImage = selectedImage else { return }
        image = Image(uiImage: selectedImage)
        ciImage = CIImage(image: selectedImage)
    }
}

struct FruitSnap_Previews: PreviewProvider {
    static var previews: some View {
        FruitSnap(classifier: ImageClassifier())
    }
}
