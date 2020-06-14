//
//  Model.swift
//  AppHackathon
//
//  Created by José Guilherme Bestel on 14/06/20.
//  Copyright © 2020 José Guilherme Bestel. All rights reserved.
//

import Foundation

//Singleton
class Model{

    static let instance = Model()
    
    private init(){
    }
    
    var nearbyPlaces :[Place?] = [
        Place(id: "1",
              name: "Rest. Sabor do Interior",
              addres: Address(street: "Rod. Presidente Dutra",
                              number: nil,
                              complement: "KM 49",
                              district: "Goiabal",
                              city: "Pindamonhangaba",
                              state: "SP",
                              longitude: -45.423933,
                              latitude: -22.961573),
              category: "Restaurante",
              coverPhoto: "coverSaborInterior.png",
              photos: ["restSabInt-0.png", "restSabInt-1.png", "restSabInt-3.png", "restSabInt-4.png"],
              comments: [
                Comment(title: "Comida muito saborosa!",
                        subTitle: "A salada de frutas com melancia é imperdível", rating: 5)
        ]),
        Place(id: "2",
              name: "Posto Dois Irmãos",
            addres: Address(street: "Rod. Presidente Dutra",
                            number: nil,
                            complement: "KM 50",
                            district: "Goiabal",
                            city: "Pindamonhangaba",
                            state: "SP",
                            longitude: -45.420475,
                            latitude: -22.960402),
            category: "Posto",
            coverPhoto: "coverDoisIrmaos.png",
            photos: ["postoDoisIrmaos-0.png", "postoDoisIrmaos-1.png", "postoDoisIrmaos-3.png", "postoDoisIrmaos-4.png"],
            comments: [
                Comment(title: "Comida muito saborosa!",
                        subTitle: "A salada de frutas com melancia é imperdível", rating: 5)
        ])
    ]
    
    var truckerMarcos = Trucker(id: "0",
                                name: "Marcos Andrade",
                                avatarImg : "marcos.png",
                                wallet: Wallet(points: 2000,
                                               coupons: [
                                                Coupon(id: "0",
                                                       trackingCode: "SJA837FSG",
                                                       place: Model.instance.nearbyPlaces[0]!,
                                                       oldPrice: 16.00,
                                                       newPrice: 8.00,
                                                       title: "Arroz com feijão e bife temperado",
                                                       discount: 0.5,
                                                       points: 30,
                                                       nameImg: "coupon1.png",
                                                       highlight: false)
                                ]))
    
    //Form padrão para nova avaliação
    var searchModel = SearchForm(
        itensStarRating: [
         SearchItem(title: "Segurança", subTitle: "Quão seguro(a) você se sentiu nesse local?", rating: 0),
            SearchItem(title: "Higiene dos banheiros", subTitle: "Os banheiros eram limpos?", rating: 0),
            SearchItem(title: "Custo benefício", subTitle: "O quanto valeu a visita?", rating: 0),
            SearchItem(title: "Qualidade da comida", subTitle: "O quanto a comida te agradou?", rating: 0)
        ],
        itensLikeDislike: [
            SearchItem(title: "Pernoite gratuito?", subTitle: nil, rating: 0),
            SearchItem(title: "Banho gratuito?", subTitle: nil, rating: 0),
            SearchItem(title: "Os banheiros são acessíveis?", subTitle: nil, rating: 0),
            SearchItem(title: "Lugar para estacionar?", subTitle: nil, rating: 0),
            SearchItem(title: "WiFi gratuito?", subTitle: nil, rating: 0)])
    
    //Formulário de pesquisa será um objeto SearchForm já pre-definido
    var researches : [Search?] = [
        Search(place: Model.instance.nearbyPlaces[0]!,
               trucker: Model.instance.truckerMarcos,
               customersTroubled: false,
               searchForm: SearchForm(
                   itensStarRating: [
                    SearchItem(title: "Segurança", subTitle: "Quão seguro(a) você se sentiu nesse local?", rating: 4),
                       SearchItem(title: "Higiene dos banheiros", subTitle: "Os banheiros eram limpos?", rating: 5),
                       SearchItem(title: "Custo benefício", subTitle: "O quanto valeu a visita?", rating: 3),
                       SearchItem(title: "Qualidade da comida", subTitle: "O quanto a comida te agradou?", rating: 4)
                   ],
                   itensLikeDislike: [
                       SearchItem(title: "Pernoite gratuito?", subTitle: nil, rating: 1),
                       SearchItem(title: "Banho gratuito?", subTitle: nil, rating: 0),
                       SearchItem(title: "Os banheiros são acessíveis?", subTitle: nil, rating: 1),
                       SearchItem(title: "Lugar para estacionar?", subTitle: nil, rating: 1),
                       SearchItem(title: "WiFi gratuito?", subTitle: nil, rating: 1)
       ])),
       Search(place: Model.instance.nearbyPlaces[0]!,
              trucker: Model.instance.truckerMarcos,
              customersTroubled: false,
              searchForm: SearchForm(
                  itensStarRating: [
                   SearchItem(title: "Segurança", subTitle: "Quão seguro(a) você se sentiu nesse local?", rating: 4),
                      SearchItem(title: "Higiene dos banheiros", subTitle: "Os banheiros eram limpos?", rating: 5),
                      SearchItem(title: "Custo benefício", subTitle: "O quanto valeu a visita?", rating: 3),
                      SearchItem(title: "Qualidade da comida", subTitle: "O quanto a comida te agradou?", rating: 4)
                  ],
                  itensLikeDislike: [
                      SearchItem(title: "Pernoite gratuito?", subTitle: nil, rating: 1),
                      SearchItem(title: "Banho gratuito?", subTitle: nil, rating: 0),
                      SearchItem(title: "Os banheiros são acessíveis?", subTitle: nil, rating: 1),
                      SearchItem(title: "Lugar para estacionar?", subTitle: nil, rating: 1),
                      SearchItem(title: "WiFi gratuito?", subTitle: nil, rating: 1)
      ]))
    ]
    
    var coupons :[Coupon] = [
        Coupon(id: "0",
               trackingCode: "SJA837FSG",
               place: Model.instance.nearbyPlaces[0]!,
               oldPrice: 16.00,
               newPrice: 8.00,
               title: "Arroz com feijão e bife temperado",
               discount: 0.5,
               points: 30,
               nameImg: "coupon1.png",
               highlight: true),
        Coupon(id: "0",
               trackingCode: "GTI669QQE",
               place: Model.instance.nearbyPlaces[0]!,
               oldPrice: 10.00,
               newPrice: 6.00,
               title: "Salada de fruta na cumbuca de melancia",
               discount: 0.4,
               points: 20,
               nameImg: "coupon2.png",
               highlight: false)
            ]
}