//
//  ViewController.swift
//  03ViewStruct
//
//  Created by 송윤근 on 2021/12/29.
//


//iOS에서 화면을 이동하는 방법
//크게 두가지
// 1. 네비게이션 컨트롤러를 이용 - 이방법을 권장, -수평이동
// (스위프트 코드로 이동하는 방법과 세그로 이동하는 방법.)
// 코드로 이동할 때 푸쉬와 팝 이라는 용어
//
//
// 2. 팝업창으로 이동하는 방법 - 간단한 이벤트화면, 로그인 회원가입 등 화면 띄우고 사라질때 용도. - 수직이동
// (코드로 이동하는 방법과 세그로 이동하는 방법.)
// 코드로 이동할 때 프리젠트와 디스미스.

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("깃허브 연동 테스트.")
        
        
    }
    
    //네비게이션 - 코드로 이동하기
    @IBAction func onbtnNext(_ sender: UIButton) {
        
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        
//        withIdentifier 파라미터에 들어가는 이름은 직접 지정이 필요하다.
//        지금 프로젝트 기준으로 두번째 뷰로 이동하여 viewcontroll에서 identity 이동
//        storyBoard ID를 Identifier값과 동일하게 해야한다. 그리고 아래 Use StoryBoard ID도 체크.
        
        
        self.navigationController?.pushViewController(NewVC, animated: true)
        
        
    }
    
    
    

}

