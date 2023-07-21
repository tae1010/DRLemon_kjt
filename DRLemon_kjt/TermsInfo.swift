//
//  termsInfo.swift
//  DRLemon_kjt
//
//  Created by 김정태 on 2023/07/21.
//

import Foundation

struct TermsInfo {
    let termsTitle: String
    var check: Bool = false
}

extension TermsInfo {
    static var terms = [
        TermsInfo(termsTitle: "[필수] 청구의신 서비스 이용 악관"),
        TermsInfo(termsTitle: "[필수] 개인(신용)정보 수집 및 이용 동의"),
        TermsInfo(termsTitle: "[필수] 민감정보 및 진료정보 처리 동의"),
        TermsInfo(termsTitle: "[필수] 고유식별정보 처리 동의"),
        TermsInfo(termsTitle: "asdasdadadasdasdasdadadasdafdhasdfasfdfgfgjdasfgjdsfgdfgjsjadfgs")
    ]
}
