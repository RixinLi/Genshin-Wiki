//
//  ContentModel.swift
//  Genshin-wiki
//
//  Created by Rixin Li on 5/17/22.
//

import Foundation

class ContentModel: ObservableObject{
    
    @Published var roles: [String : Character] = [:]
    @Published var enter: Bool = false
    
    init(){
        getRemoteData()
    }
    
    func getRemoteData() {
        
        let urlString = Constants.database + "characters/"
        
        for character in Constants.Characters{
            
            let url = URL(string: String(urlString + character))
            
            guard url != nil else{
                return
            }
            
            // Create a URLRequest object
            
            let request = URLRequest(url: url!)
            
            // Get the session and kick of the task
            
            let session = URLSession.shared
            
            // data
            session.dataTask(with: request) { data, response, error in
                // Check if there's an error
                guard error == nil else{
                    return
                }
                
                // Decode
                do{
                    // Create a json decode
                    let decoder = JSONDecoder()
                    
                    // Decoder
                    let role = try decoder.decode(Character.self, from: data!)
                    
                    DispatchQueue.main.async {
                        self.roles[character] = role
                    }
                    
                }catch{
                    print("Couldn't parse Json")
                }
                
            }.resume()
            
        }
        
        
    }
    
}

