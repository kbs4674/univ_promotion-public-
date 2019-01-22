class CreateUnivs < ActiveRecord::Migration[5.1]
  def change
    create_table :univs do |t|
      t.string :univ_name_kor # 대학 이름(국문)
      t.string :univ_name_eng # 대학 이름(영문)
      t.string :univ_nickname # 대학 이름(줄임말/ 예 : UNIST, 강대 등)
      t.text :content # 내용
      t.string :img_name  # 각 대학별 배너이미지 이름
      t.string :email_url  # 대학별 웹메일 주소
      t.text :etc_content # 기타 내용
      t.boolean :KOSAF, default: true # 한국장학재단 [http://www.kosaf.go.kr/]
      t.boolean :ms_office, default: true # MS OFFICE [https://products.office.com/ko-kr/student/office-in-education]
      t.boolean :naver_music, default: true # 네이버 뮤직 1년 50% 할인권 [https://music.naver.com/buy/index.nhn?list=college]
      t.boolean :aws_credit_normal, default: true # AWS Credit [https://aws.amazon.com/ko/education/awseducate/]
      t.boolean :github, default: true # Github 외 개발 Tool 사이트 학생혜택(Github School Pack) [https://education.github.com/pack]
      t.boolean :jet_brain, default: true # IDE 개발툴 학생 무료지원 [https://www.jetbrains.com/]
      t.boolean :Y_goon, default: true # YGOON 대학생 복지몰 교육할인스토어 [https://www.ygoon.com/mall/]
      t.boolean :adobe, default: true # 어도비 클라우드(Tool 패키지) 60% 할인 [https://goo.gl/y9sJiL]
      t.boolean :dbpia, default: true # 무료 논문 열람사이트 [http://www.dbpia.co.kr/]
      t.boolean :riss, default: true # 보통 학교 도서관 사이트를 경유해서 무료로 논문열람 가능 [www.riss.kr]
      t.boolean :aws_credit_100, default: false # AWS 협약대학 100달러 Credit 제공 [https://aws.amazon.com/ko/education/awseducate/]
      t.boolean :job_planet, default: false # 잡 플래닛 광고없이 기업리뷰 열람 [https://www.jobplanet.co.kr/welcome/notices]
      t.boolean :win10, default: false # Window 10 Edu 무료 소프트웨어 [https://event.eventservice.co.kr/microsoft/2017/00/web/0223_win10.html]
      t.boolean :inflearn, default: false # 인프런 : IT 교육 플랫폼 [https://www.inflearn.com/inflearnxschool/]
      t.boolean :edwith, default: false # 에드위드 : IT 교육 플랫폼 [https://www.edwith.org/]
      t.boolean :goorm_ide, default: false # 구름IDE : 클라우드 IDE (C9같은거)
      t.boolean :KFC, default: false # 중앙대 KFC 10% 할인
      t.boolean :AOC, default: false # 애플 스토어 할인 [https://www.apple.com/kr/shop/browse/home/aoc]
      t.boolean :blue_ladder, default: false # 한국 장학재단에서 지원하는 파란 사다리 장학사업(500만원 상당의 1개월 단기 어학연수 지원) [http://news.khan.co.kr/kh_news/khan_art_view.html?art_id=201802141118001]
      t.boolean :matlab, default: true # 매트랩 무료 [https://kr.mathworks.com/academia/student_version.html?s_tid=acport_sv_sp_cta1]
      t.boolean :autodesk, default: true # 오토캐드, 마야 등 오토데스크 브랜드에서 취급하는 소프트웨어 무료 [https://www.autodesk.co.kr/education/free-educational-software]
      t.boolean :samsung_dreamclass, default: true # 삼성 드림클래스 [https://www.dreamclass.org/index.do]
      t.boolean :korail_youth, default: true # 청소년 드림(코레일 KTX 30% 할인) [http://www.letskorail.com/]
      t.boolean :lh, default: true # LH 대학생 전세임대주택 : 대학생 및 취업준비생들을 대상으로 시행하는 제도로, 전세금 지원
      t.boolean :etc, default: false # 기타

      t.timestamps
    end
  end
end
