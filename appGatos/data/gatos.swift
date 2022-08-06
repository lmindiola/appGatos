//
//  gatos.swift
//  appGatos
//
//  Created by Luis Mindiola Gonzalez on 6/08/22.
//

import Foundation

// MARK: Posible solucion no resuelve la lista

//struct respuesta {
//    let respon : [String?]
//}

struct Gatos: Decodable {
    let gato:Gato
}

struct Gato: Decodable {
    let breedName: String?
    let origin: String?
    let affectionLevel: Int?
    let inteligent: Int?
    let image: imagenGato?

enum codingKeys: String, CodingKey {
    case breedName = "name"
    case origin
    case affectionLevel = "affection_level"
    case inteligent
    case image
    }
}

struct imagenGato: Decodable {
    let id: String?
    let url: String?
}

//"image": {
//            "id": "0XYvRd7oD",
//            "width": 1204,
//            "height": 1445,
//            "url": "https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg"
// }
