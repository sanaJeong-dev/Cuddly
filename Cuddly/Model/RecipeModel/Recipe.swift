//
//  Recipe.swift
//  Cuddly
//
//  Created by Haru on 2021/03/28.
//

import UIKit

enum Target {
    case onlyCat
    case onlyDog
    case catAndDog
}

struct Recipe {
    let title: String               //제목
    let subtitle: String            //소제목
    let time: String                //소요시간
    let effect: String
    let image: UIImage?             //메인이미지
    let ingredients: [Ingredient]   //재료
    let tools: [String]?            //도구
    let target: Target              //급여가능대상
    let caution: String?            //주의사항
    let steps: [Step]
    let comments: [Comment]?        //댓글
    let linkedProducts: [Product]?  //관련제품
    
    static func fetchRecipes() -> [Recipe] {
        var recipes = [Recipe]()
        
        let recipe1 = Recipe(title: "퍼푸치노",
                             subtitle: "포근한 겨울을 위한 한 잔",
                             time: "15분",
                             effect: "모질 개선 기능",
                             image: UIImage(named: "puppucinoMain.jpg"),
                             ingredients: [Ingredient(name: "락토프리 우유 혹은 펫밀크", weight: "150ml"),
                                           Ingredient(name: "캐롭파우더", weight: "2tsp")],
                             tools: ["전자레인지", "거품기"],
                             target: .catAndDog,
                             caution: "유당 분해가 어려운 반려동물을 위해 꼭 락토프리 우유 혹은 펫밀크를 이용해주세요.",
                             steps: [Step(number: 1,
                                          title: "우유 데워주기",
                                          description: "준비된 락토프리 우유 혹은 펫밀크의 절반을 전자레인지용 그릇에 담아 30초 돌립니다.",
                                          image: UIImage(named: "puppucinoStep1.jpeg")),
                                     Step(number: 2,
                                          title: "우유와 캐롭파우더 섞기",
                                          description: "데워진 우유 반 정도를 머그잔에 채워주고 캐롭파우더 1tsp을 넣어 우유와 잘 섞어줍니다.",
                                          image: UIImage(named: "puppucinoStep2.jpg")),
                                     Step(number: 3,
                                          title: "우유거품 만들기",
                                          description: "남은 우유는 거품기를 이용해 40초 정도 휘저어, 충분한 거품을 만들어줍니다.",
                                          image: UIImage(named: "puppucinoStep3.jpg")),
                                     Step(number: 4,
                                          title: "우유거품 올리기",
                                          description: "캐롭파우더를 섞은 우유 위에 거품을 올려줍니다.",
                                          image: UIImage(named: "puppucinoStep4.jpg")),
                                     Step(number: 5,
                                          title: "캐롭파우더 토핑하기",
                                          description: "거품 위 캐롭파우더를 솔솔 뿌려주면 완성!",
                                          image: UIImage(named: "puppucinoStep5.jpg"))
                             ],
                             comments: nil,
                             linkedProducts: [
                                Product(name: "키친아트 라팔스퀘어5단 식품건조기 KAFD-B230",
                                        price: 36500,
                                        mainImage: UIImage(named: "식품건조기Main.jpg"),
                                        descImages: [
                                            UIImage(named: "식품건조기1.jpg"),
                                            UIImage(named: "식품건조기2.jpg"),
                                            UIImage(named: "식품건조기3.jpg"),
                                            UIImage(named: "식품건조기4.jpg"),
                                            UIImage(named: "식품건조기5.jpg"),
                                            UIImage(named: "식품건조기6.jpg")])
                             ])
        let recipe2 = Recipe(title: "고구마 치즈볼",
                             subtitle: "겉은 바삭 속은 촉촉한 간식",
                             time: "14시간 30분",
                             effect: "장내 유익균 증식",
                             image: UIImage(systemName: "star"),
                             ingredients: [Ingredient(name: "고구마", weight: "500g"),
                                           Ingredient(name: "락토프리우유", weight: "1L"),
                                           Ingredient(name: "식초(레몬즙 대체가능)", weight: "4T")],
                             tools: ["건조기", "거름망", "면보", "짤주머니"],
                             target: .onlyDog,
                             caution: nil,
                             steps: [Step(number: 1, title: "고구마 찌기", description: "고구마를 껍질을 벗긴 채 삶아주세요! (수분이 많은 호박고구마 추천)", image: UIImage(systemName: "highlighter")),
                                     Step(number: 2, title: "우유 끓이기", description: "락토프리우유를 중불에 끓이다가 테두리에 거품이 생기면 약한불로 줄여주세요", image: UIImage(systemName: "highlighter")),
                                     Step(number: 3, title: "식초 넣기", description: "우유막이 생기면 식초(혹은 레몬즙)을 4스푼 넣어주세요. 금방 부풀어오르며 유청이 분리됩니다. 살짝씩만 저어주세요.", image: UIImage(systemName: "highlighter")),
                                     Step(number: 4, title: "코티지치즈 만들기", description: "젖은 면보를 깔고 치즈를 부어준 후 꼭 짜 주세요. (뜨거우니 손 조심!)", image: UIImage(systemName: "highlighter")),
                                     Step(number: 5, title: "고구마와 코티지치즈 섞기", description: "물렁해진 고구마를 잘 으깨줍니다. (너무 되직하면 물 혹은 락토프리우유를 넣어주어도 좋아요!) 으깬 고구마 위에 코티지치즈를 섞어주세요.", image: UIImage(systemName: "highlighter")),
                                     Step(number: 6, title: "건조기에 짜기", description: "짤주머니에 내용물을 담은 후 원하는 두께, 길이를 고려하여 짜주세요. (건조 후엔 1/3정도 크기가 줄어듭니다) 크기가 일정해야 잘 건조됩니다.", image: UIImage(systemName: "highlighter")),
                                     Step(number: 7, title: "건조기 돌리기", description: "건조기에서 60도 14시간 설정 후 기다립니다", image: UIImage(systemName: "highlighter")),
                                     Step(number: 8, title: "완성!", description: "꼭 냉동, 냉장보관 해주세요", image: UIImage(systemName: "highlighter"))],
                             comments: nil,
                             linkedProducts: nil)
        
        recipes.append(recipe1)
        recipes.append(recipe2)
        recipes.append(recipe1)
        recipes.append(recipe2)
        recipes.append(recipe1)
        recipes.append(recipe2)
        recipes.append(recipe1)
        recipes.append(recipe2)
        
        
        return recipes
    }
}


