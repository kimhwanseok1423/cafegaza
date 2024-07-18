
[![카페가자](src/main/webapp/resources/img/CF.png)](https://www.notion.so/b9f1db7a7b3f43d18218d3d2e0cb0f1c)</br>
(해당 이미지 클릭시 서비스내용 구현화면 및 개발방법 확인가능합니다).




---
## 목차
- [개요](#개요)
- [사용기술](#사용기술)
- [느낀 점](#느낀-점)
- [구현 기능](#구현기능)
- [시스템 구성도](#시스템-구성도)
- [ERD](#ERD)





## 개요


원하는 카페를 가야하는데 일일이 검색해서 찾기 불편한걸 해소하고자 제작한 사이트입니다. </br>
최근 SNS에서 인기를 끌고있는 카페들이 많아짐으로 원하는 카테고리를 선택하여 찾을수 있다 .
<br/>현재 지도를 통해 원하는 카페와 내위치간의 거리를 확인할수 있다. <br/> 20대부터 50대까지 연령별 인기있는 카페를 찾을수 있다!<br/>



## 사용기술

<img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/123123123111.PNG">



## 느낀 점

이번 프로젝트는 아무것도 모르는 백지 상태에서 구글링을 통해 백엔드 기능을 맡아 구현했다. 첫 팀 프로젝트였기에 배울 것이 너무 많았다. 구글링을 통해 얻은 지식을 가지고 작업하다 보니 안되는 기능이 많았다. 백엔드 작업을 혼자 맡다 보니 기능적, 시간적으로 많이 부족함을 느꼈다.

카카오 API를 활용하려 했으나 시간상의 문제로 간단한 로그인 처리로 대체했고, CRUD 기능만 구현한 점이 아쉬웠다. 더 복잡하고 다양한 기능을 추가하고 싶었지만, 프로젝트의 범위와 시간 제약 때문에 실현하지 못한 것이 아쉬웠다.

이번 경험을 통해 프로젝트의 계획과 시간 관리를 어떻게 해야 하는지, 그리고 팀원과의 협업의 중요성을 배울 수 있었다. 앞으로는 더 나은 계획과 시간 관리를 통해 더욱 완성도 높은 프로젝트를 수행하고 싶다.



## 구현기능

<details>
  <summary>회원가입 및 로그인 기능</summary>
  
  - **구현 기능** <br>
  사용자 회원가입 및 로그인 기능을 구현했습니다.

- **구현 방법** <br>
  
  - 계정 중복 확인 -> `UserRepository`조회하여 중복 시 예외 던짐
  - 로그인 완료시 기능 , 로그인 아닐시 기능 분리 
  - 사이드바를 통해 회원정보수정 , 자유게시판 , 추천리스트 활성화
  - 메인 페이지 우측에 회원 이름 표시
      
 <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인1.PNG">

 <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인2.PNG">

  <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인3.PNG">

   <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인4.PNG">

</details>

<details>
  <summary>회원관리기능 (마이페이지  / 자유게시판 / 댓글 )</summary>

  - **구현 기능** <br>
    - 회원 정보 관리기능을 구현했습니다.
   
   **구현 방법** <br>

   - 마이페이지 기능을 추가
   - 게시판 기능 
   - 댓글 삭제 , 수정

 <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인1.PNG">

 <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인2.PNG">

  <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인3.PNG">

   <img src="https://github.com/kimhwanseok1423/cafegaza/blob/master/src/main/webapp/resources/img/로그인4.PNG">
</details>


<details>
  <summary>통계 기능</summary>

- **구현 기능** <br>
    - Github push시 Webhook작동

- **구현 방법**<br>
  ![image](https://images-ext-1.discordapp.net/external/-ocE9N4j4sT8LGgyOQMnI_YlZzqfa8stQdHk-CCYuOM/https/github.com/7th-wanted-pre-onboarding-teamN/sns-feed/assets/86291408/7ea4fccf-5dc3-4396-b86c-075b48107bb9?width=1086&height=1056)
</details>

  
