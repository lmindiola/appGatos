//
//  clienteHttp.swift
//  appGatos
//
//  Created by Luis Mindiola Gonzalez on 6/08/22.
//

import Foundation
import Alamofire

final class ClienteHttp {
    static let shared = ClienteHttp()
    private let bUrl = "https://api.thecatapi.com/v1/breeds"
    private let apiKey = "bda53789-d59e-46cd-9bc4-2936630fde39"
    private let kStatusOk = 200...299
    func getGatos(success: @escaping( _ cats:Gatos) -> (),failure : @escaping(_ error:Error?) -> ()){
        let _: HTTPHeaders = [.authorization("api-x-key:\(apiKey)")]
        
        //Utilizando el decoder para variables especiales
        AF.request(bUrl, method: .get).validate(statusCode: kStatusOk).responseDecodable(of: Gatos.self) {
                response in
            if let gatos = response.value {
                success(gatos)
            } else {
                failure(response.error)
            }
        }
    }
    
}
