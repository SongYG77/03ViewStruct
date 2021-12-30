# 뷰 구조와 이동



iOS에서 화면을 이동하는 방법

크게 두가지

 1. 네비게이션 컨트롤러를 이용 - 이방법을 권장, -수평이동
 (스위프트 코드로 이동하는 방법과 세그로 이동하는 방법.)
 코드로 이동할 때 푸쉬와 팝 이라는 용어


 2. 팝업창으로 이동하는 방법 - 간단한 이벤트화면, 로그인 회원가입 등 화면 띄우고 사라질때 용도. - 수직이동
 (코드로 이동하는 방법과 세그로 이동하는 방법.)
 코드로 이동할 때 프리젠트와 디스미스.



네비게이션 만드는 법.

루트 뷰에서 뷰 컨트롤러 선택 후 상단의 Editor -> embed in

그러면 스토리보드에 네비게이션 컨트롤러가 생긴다.
이 화면은 실제 뷰가 아니여서 앱에서 보여지진 않는다.  해당 네비게이션 컨트롤러에 연결되어 있는 첫 화살표가 네비게이션의 루트뷰가 된다.

세그로 이동은 우클릭 드래그로 다음화면에 놓으면 자동으로 됨

 네비게이션 컨트롤러 뷰 관리 방법
1. 다음 화면으로 이동하기
self.navigationController?.pushViewController
2. 이전 화면으로 이동하가
popViewController
3. 맨 앞으로 이동하기 root뷰로
popToRootViewController
4. 특정번째 뷰로 이동하기(2,3번째)
popToViewController(newVC, animated:true)
5. 특정뷰를 삭제할 때
navigationController?.viewControllers 배열에서 삭제. remove(at:)
6. 특정뷰를 중간에 추가할때
navigationController?.viewControllers 배열에 추가. insert(at:)


뷰 컨트롤러의 수명주기(Life Cycle)
viewDidLoad: 뷰가 생성될 때 한번만 호출(초기화 용도)
viewWillAppear : 뷰가 화면에 보일때마다 호출(화면 갱신 용도)
viewDidAppear : 뷰가 화면에 보이고나서 매번 호출됨
viewWillDisappear : 뷰가 화면에 사라지기 전마다 호출됨(데이터 전달)
viewDidDisappear : 뷰가 화면에서 사라지고 나서 매번 호출됨.
viewWillLayoutSubviews : 컨트롤(서브뷰)들의 레이아웃을 잡기 전에 호출됨
viewDidLayoutSubviews : 컨트롤들의 레이아웃을 잡고 나서 호출됨.

뷰 컨트롤러 간의 데이터 전달(참조)하는법
1. 전역변수를 이용한다.(앱내 모든 VC에서 접근가능) - AppDelegate 쪽에서 전역변수.
2. A클래스(VC)에서 B클래스로 데이터 전달
3. B클래스에서 A클래스로 데이터 전달.
