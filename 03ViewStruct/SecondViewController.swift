//
//  SecondViewController.swift
//  03ViewStruct
//
//  Created by 송윤근 on 2021/12/29.
//

import UIKit

class SecondViewController: UIViewController  {
    

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var seconddata : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("두번째 화면")
        //전역변수를 참조하여 출력
        print(appDelegate.globaldata)
        
        //처음 화면에서 전달받은 데이터
        print(seconddata)
    }
    
    @IBAction func onbtnNext(_ sender: UIButton) {
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        self.navigationController?.pushViewController(NewVC, animated: true)
        
    }
    
    @IBAction func onbtnBack(_ sender: UIButton) {
        
        appDelegate.mainVC?.maindata = "세컨드VC애서 준 값."
        //메인에서 넘어왔기 때문에 연결이 이미 되어있을것이다.
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
