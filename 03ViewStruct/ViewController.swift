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

// 네비게이션 컨트롤러 뷰 관리 방법
//1. 다음 화면으로 이동하기
//self.navigationController?.pushViewController
//2. 이전 화면으로 이동하가
//popViewController
//3. 맨 앞으로 이동하기 root뷰로
//popToRootViewController
//4. 특정번째 뷰로 이동하기(2,3번째)
//popToViewController(newVC, animated:true)
//5. 특정뷰를 삭제할 때
//navigationController?.viewControllers 배열에서 삭제. remove(at:)
//6. 특정뷰를 중간에 추가할때
//navigationController?.viewControllers 배열에 추가. insert(at:)


//뷰 컨트롤러의 수명주기(Life Cycle)
//viewDidLoad: 뷰가 생성될 때 한번만 호출(초기화 용도)
//viewWillAppear : 뷰가 화면에 보일때마다 호출(화면 갱신 용도)
//viewDidAppear : 뷰가 화면에 보이고나서 매번 호출됨
//viewWillDisappear : 뷰가 화면에 사라지기 전마다 호출됨(데이터 전달)
//viewDidDisappear : 뷰가 화면에서 사라지고 나서 매번 호출됨.
//viewWillLayoutSubviews : 컨트롤(서브뷰)들의 레이아웃을 잡기 전에 호출됨
//viewDidLayoutSubviews : 컨트롤들의 레이아웃을 잡고 나서 호출됨.

//뷰 컨트롤러 간의 데이터 전달(참조)하는법
//1. 전역변수를 이용한다.(앱내 모든 VC에서 접근가능) - AppDelegate 쪽에서 전역변수.
//2. A클래스(VC)에서 B클래스로 데이터 전달
//3. B클래스에서 A클래스로 데이터 전달.

import UIKit

class ViewController: UIViewController {

    //전역변수를 참조하는 방법.
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    //이것은 정해져있는 코드라 계속 사용한다.
    
    var maindata : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        //전역변수를 참조하는 곳
        appDelegate.globaldata = "전역변수 설정함"
        
        appDelegate.mainVC = self
        //전역변수에서 ViewController 형의 변수 mainVC에 self를 넣어줌으로써 접근이 가능하다.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewwillappear")
        print(maindata)
        //didload는 이미 생성된 상태로 넘어가서 실행되지 않는다
        //그래서 화면에 보여지기 전에 넣어주는것
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewwilldis")
    }
    override func viewWillLayoutSubviews() {
        print("view will layout sub")
    }
    override func viewDidLayoutSubviews() {
        print("viewDidlayout")
    }
    
    //세그로 넘어갈때 데이터를 주는법
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" { //세그이동에서 identifier 지정 필요.
            let vc = segue.destination as! SecondViewController
            vc.seconddata = "매인화면에서 준 데이터 세그"
        }
    }
    
    
    //네비게이션 - 코드로 이동하기
    @IBAction func onbtnNext(_ sender: UIButton) {
        
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        
//        withIdentifier 파라미터에 들어가는 이름은 직접 지정이 필요하다.
//        지금 프로젝트 기준으로 두번째 뷰로 이동하여 viewcontroll에서 identity 이동
//        storyBoard ID를 Identifier값과 동일하게 해야한다. 그리고 아래 Use StoryBoard ID도 체크.
        
        NewVC.seconddata = "메인에서 지정해준 데이터."
        //다음 화면으로 데이터를 넘겨줄때 사용이 가능하다. 미리 넘어가는 화면에 변수지정.
        
        self.navigationController?.pushViewController(NewVC, animated: true)
        
        
    }
    
    @IBAction func onbtnPopup(_ sender: UIButton) {
        let Newpop = self.storyboard?.instantiateViewController(withIdentifier: "PopupView") as! popupViewController
        self.present(Newpop, animated: true, completion: nil)
    }
    
    

}

