//
//  MemeController.swift
//  Memes
//
//  Created by ALYSSON DODO on 26/12/22.
//

import Foundation
import Alamofire

class MemeController {
    
    private var arrayMemes:[MemeObject] = []
    
    
    
    func numberOfRowsInSection() -> Int {
        return self.arrayMemes.count
    }
    
    func loadCurrentName( indexPath: IndexPath) -> String{
        return self.arrayMemes[indexPath.row].name
    }
    
    func getRequestMemes( completionHandler: @escaping(Bool, Error?) -> Void){
        AF.request("https://api.imgflip.com/get_memes").responseJSON { response in
            
            if response.response?.statusCode == 200 {
                if let data = response.data{
                    
                    do {
                        let memeModel: Meme? = try JSONDecoder().decode(Meme.self, from: data)
                        
                        self.arrayMemes = (memeModel?.data.memes ?? [])
                        completionHandler(true, nil)
                    }catch{
                        print("error")
                        completionHandler(false, error)
                    }
                }
            }
        }
    }
}
