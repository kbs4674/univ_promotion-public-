# 담다 : 대학 정보 모아모아
<div align="center"><img src="https://github.com/kbs4674/univ_promotion-public-/blob/master/public/img/intro.jpg?raw=true" width="450px"></div>

## 팀원
#### 김철민, 김지은, 서동우, 반정훈, 박경덕, 한종우
##### Special Thanks to. 이인하 (로고디자인)

## 1. INFO
<img src="https://github.com/kbs4674/univ_promotion-public-/blob/master/public/img/hackathone_poster.png?raw=true" width="250px">

#### 2018 UNIST × NAVER D2SF × 멋쟁이 사자처럼 주관 해커톤
#### [DEMO] http://univ-promotion.herokuapp.com


## 2. 루비/루비온 레일즈 정보
* Ruby : 2.4.0
* Rails : 5.1.6
 

## 3. 프로젝트 개요
1. 학생 신분을 유지한 학생들은 여러 기업들이 제공하는 소프트웨어, 컨텐츠에 대한 혜택을 받을 수 있습니다.
2. 하지만 일부 학생들은 위 사실을 모릅니다. (문/이과생 구분 없이 물어봤을 때 10명 중 4명이 모름.)
3. 대학생 프로모션 혜택을 알더라도, 어떤 혜택을 모두 받을 수 있는지 아는 학생은 단 한명도 없었습니다.
4. 대학생의 정보격차를 줄이고, 어떤 대학교냐에 따라 어떤 프로모션을 받을 수 있는지 정리를 해봤습니다.
5. 해당 아이디어의 모티브는 <a href="https://education.github.com/pack">Github School Pack</a>, <a href="https://www.dreamspon.com/">드림스폰</a> 입니다.


## 4. 핵심 코드파일
1. ```app/views/promotions``` [<a href="/app/views/promotions">이동</a>] 혜택 목록 처리
2. ```app/views/promotions``` [<a href="/app/views/univs">이동</a>] 대학교 목록 처리
3. ```app/controllers/promotions_controller.rb``` [<a href="/app/controllers/promotions_controller.rb">이동</a>] 혜택(Promotion)에 대한 Controller 처리 (좋아요, 글쓰기 등 이벤트 처리)
4. ```app/controllers/univs_controller.rb``` [<a href="/app/controllers/univs_controller.rb">이동</a>] 대학(Univ)에 대한 Controller 처리 (글쓰기, 혜택이 참(True)일 때 마다 혜택 갯수 +1 등 이벤트 처리)
5. ```app/views/homes/index.html.erb``` [<a href="/app/views/homes/index.html.erb">이동</a>] 메인 인트로 페이지
6. ```public/js/typeahead.js``` [<a href="/public/js/typeahead.js">이동</a>] 메인 인트로 페이지 : 검색창 관련 javascript 코드 (Typeahead.js)
7. ```public/js/tagjs.js``` [<a href="/public/js/tagjs.js">이동</a>] 메인 인트로 페이지 : 해시태그 클릭 시 혜택 분류되서 나열
8. ```public/js/home.js``` [<a href="/public/js/home.js">이동</a>] 메인 인트로 페이지 : 검색 form에 대학 이름들이 바뀌면서 노출
9. ```app/views/devise``` [<a href="/app/views/devise">이동</a>] 회원가입, 로그인, 회원정보 수정 등 회원 관련 처리
10. ```app/views/univs/show.html.erb``` [<a href="/app/views/univs/show.html.erb">이동</a>] 대학별 혜택 목록 (상세 리스트) 
11. ```app/views/univs/show/_card.html.erb``` [<a href="/app/views/univs/show/_card.html.erb">이동</a>] Univ 에서 대학 헤택 열람 시 혜택에 대한 소개 (부트스트랩 Modal View)
12. ```app/views/promotions/index/_index_main.html.erb``` [<a href="/app/views/promotions/index/_index_main.html.erb">이동</a>] Promotion 에서 대학 헤택 열람 시 혜택에 대한 소개 (부트스트랩 Modal View)
13. ```config/initializers/devise.rb``` [<a href="/config/initializers/devise.rb">이동</a>] 네이버 및 페이스북 아이디 로그인 설정 : 네이버/페이스북/구글 API 계정 입력
14. ```app/models/identity.rb``` [<a href="/app/models/identity.rb">이동</a>] 네이버/페이스북/구글 아이디 로그인 설정 : API 연동 설정 및 연동로그인을 이용한 로그인 기록 저장
15. ```app/models/user.rb``` [<a href="/app/models/user.rb">이동</a>] 네이버/페이스북/구글 아이디 로그인 설정 : API 연동 설정
16. ```app/controllers/users/omniauth_callbacks_controller.rb``` [<a href="/app/controllers/users/omniauth_callbacks_controller.rb">이동</a>] 네이버/페이스북/구글 아이디 로그인 설정 : Devise Gem 단에서 외부 로그인(Omniauth) 이벤트 연동/콜백 설정
17. ```db/seeds.rb``` [<a href="/db/seeds.rb">이동</a>] 미리 작성해 둔 대학교/혜택에 대한 데이터
18. ```public/Top_Scroll_Btn/Top_Scroll_Btn.js``` [<a href="/public/Top_Scroll_Btn/Top_Scroll_Btn.js">이동</a>] 클릭 시 홈페이지 맨 위로 이동하는 버튼
19. ```app/views/layouts/application.html.erb``` [<a href="/app/views/layouts/application.html.erb">이동</a>] 메뉴바 등 공통으로 보여지는 홈페이지 디자인 View 및 CSS/Javascript
20. ```app/controllers/messages_controller.rb``` [<a href="/app/controllers/messages_controller.rb">이동</a>] 쪽지 시스템 관련 Controller

## 5. M : 모델 설명
* Ability : 권한에 따른 허용 권한범위 설정
* Univ : 대학교 및 혜택별 Boolean 체크
* Promotion : 혜택 이름 및 혜택 설명
* Conversation : 쪽지함 내 1:1 대화방
* Message : 쪽지에서 유저 간 오고가는 메세지


## 6. Ruby on Rails 프로젝트 설정
* 첫 레일즈 셋팅 (C9에서 Ruby on Rails Tutorial 프로젝트를 선택하세요.)
    * 공개버전 Github에서는 ```seeds.rb``` 및 ```application.yml``` 파일이 없습니다.
    ```
    git init
    rm -rf README.md
    git remote add origin https://github.com/kbs4674/univ_promotion-public-
    git pull origin master
    gem install rails --version=5.1.6
    bundle install
    rake db:drop;rake db:migrate;rake db:seed
    rails s -b $IP -p $PORT
    ```
* <b>AWS 기준</b> 서버 설정법은 다음 과정을 따라주길 바랍니다.
    * <a href="https://blog.naver.com/kbs4674/221168996150" target="_blank">```https://blog.naver.com/kbs4674/221168996150```</a>
* <b>Heroku</b> 서버 셋팅은 <a href="http://wantknow.tistory.com/61" target="_blank"><b>여기</b></a>를 참고 바랍니다.
* <b>development 환경</b>에서 ```rake db:drop``` 시 오류가 나오는 것은 "정상"입니다.
    * production 모드에서 설정한 PostgreSQL DB 설정 때문이며, 정상 drop 됩니다.
* <b>Heroku</b> 서버 설정 시, ```database.yml``` 파일을 수정해주세요.
* <b>Heroku</b> 에 Deploy 때, <b>You must use Bundler 2 or greater with this lockfile</b> 오류 발생 시,
```heroku login``` 및 ```git remote heroku ...``` 후,  ```heroku buildpacks:set https://github.com/bundler/heroku-buildpack-bundler2``` 명령어를 입력해주세요.
 

## 7. Ruby on Rails 간단 이론 설명
* 이론
    * Ruby on Rails은 Ruby 기반의 웹 프레임워크임. (Python의 Django 혹은 Java의 Spring 같은 개념)
    * Ruby on Rails은 MVC 패턴으로 이루어져 있으며, 디자인 작업은 보통 V(View)에서 이루어짐
        * M : Model(DB 및 DB 관계를 다룸) / V : View (페이지를 다루며, HTML/CSS/Javascript/Rails 코드와 병합되어 사용) / C : Controller (DB를 어떻게 처리할건지 관리)
        * 디자인을 할 땐 M, C를 고려할 것 없이 V만 신경쓰면 될 것임.
    * Javascript, CSS는 ```app/assets/javascript``` 혹은 ```app/assets/stylesheets```에 넣어두면 됨.
        * ```<script src="...">``` 혹은 ```<link rel="...">```을 정의하지 않아도 알아서 적용됨.
        * 캐싱에 영향을 안받음. (F12로 보면 파일 이름 뒤에 난수가 붙는걸 확인 가능)
    * ```<%= ... %>``` 혹은 ```<% ... %>```은 레일즈 코드임.
    * ```<%= render '...' %>```은 ```'...'``` 위치의 View를 불러오는 역할을 맡음 (Default : ```app/views/```)
    * 모든 View에 있어 공통적으로 보여지는 View(예 : 상단 메뉴, 기본 글꼴 style) ```app/views/layouts/application.html.erb``` 
    * 홈페이지 View 코드 수정은 ```app/views/(모델명)``` 에서 이루어짐.<br/><br/>
    * Ruby on Rails에는 크게 3가지 모드가 존재함 : Development, Test, Production
        * Development : 주로 개발용 모드로서 오류를 일으킬 시 오류메세지 및 디버그를 알려줌.
        * Production : 서비스를 릴리즈할 때 쓰이는 모드로서, 링크를 잘못 입력하거나 오류 발생 시 404 에러페이지 혹은 500 에러페이지로 리다이렉트 시킴.
            * 404 혹은 500 페이지 view는 ```public``` 폴더 안에 있음.

* 명령어 및 위치 모음
    * 서버 ON 명령어 : ```rails s -b $IP -p $PORT```
    * DB추가, 애트리뷰트 추가 등으로 인한 업데이트 시( 기존의 데이터 삭제) : ```rake db:drop;rake db:migrate```
    * 미리 입력된 DB 불러오기(app/db/seeds.rb) ```rake db:seed```