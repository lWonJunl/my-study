# My Study

프로그래밍 기초, 프론트엔드와 백엔드 개발, 데이터베이스를 공부하며 작성한 예제와 문제 풀이를 기록하는 개인 학습 저장소입니다.

## 학습 내용

| 분야 | 내용 |
| --- | --- |
| C | 기본 입출력, 산술 연산, 조건문, 백준 문제 풀이 |
| Python | 기본 입출력, 조건문, 반복문, 문자열 처리, 백준 문제 풀이 |
| Java | 기본 문법, 객체 지향, 컬렉션, 예외 처리 |
| Frontend | 시맨틱 HTML, 반응형 CSS, JavaScript, DOM, Fetch API |
| Backend | Node.js 파일·모듈, npm, Express API와 JSON 요청 처리 |
| AI/Data Analysis | NumPy·pandas·Matplotlib 기반 데이터 처리와 시각화 |
| Database | SQL 조회, CRUD, 조인, 서브쿼리, 트랜잭션, 뷰 |

## 최근 학습

- [pandas 시각화](AI/DataAnalysis/08_PandasVisualization.py): pandas 데이터를 그래프로 시각화했습니다.
- [Express 사용자 목록 API](Backend/NodeJS/12_ExpressUserList.js): GET·POST 요청으로 사용자 목록을 조회하고 추가했습니다.
- [SQL 그룹 집계 복습](Database/SQL/22_GroupByHavingReview.sql): `GROUP BY`와 `HAVING`으로 그룹별 조건을 적용했습니다.

## 저장소 구조

```text
my-study/
├── Programming/
│   ├── C/          # C 예제 및 백준 문제 풀이
│   ├── Python/     # Python 예제 및 백준 문제 풀이
│   └── Java/       # Java 기초 문법 실습
├── Frontend/       # HTML, CSS, JavaScript 실습
├── Backend/
│   └── NodeJS/     # Node.js 기초 실습
├── AI/
│   └── DataAnalysis/ # NumPy·pandas 데이터 분석
├── Database/
│   └── SQL/        # SQL 기초 실습
└── README.md
```

## Programming

### 백준 문제 풀이

| 문제 번호 | 문제 | 언어 |
| --- | --- | --- |
| 1000 | A+B | C, Python |
| 1001 | A-B | C, Python |
| 1008 | A/B | C, Python |
| 1330 | 두 수 비교하기 | C, Python |
| 10250 | ACM 호텔 | Python |
| 1152 | 단어의 개수 | Python |

### Java 기초

| 파일 | 학습 주제 |
| --- | --- |
| `Java01Basics.java` | 콘솔에 문자열 출력하기 |
| `Java02VariablesPractice.java` | 문자열, 정수, 실수, 논리형 변수 사용하기 |
| `Java03StudyTime.java` | 변수와 덧셈 연산으로 총 공부 시간 계산하기 |
| `Java04ConditionLoop.java` | 조건문과 반복문을 활용한 등급 판별, 숫자 출력, 짝수 합계 계산 |
| `Java05ArrayMethod.java` | 정수 배열을 메서드에 전달하여 합계 계산하기 |
| `Java06ClassObject.java` | 중첩 `Student` 클래스와 객체를 만들고 필드와 메서드 사용하기 |
| `Java07Constructor.java` | 생성자로 객체의 이름과 점수를 초기화하기 |
| `Java08This.java` | `this`로 인스턴스 필드와 생성자 매개변수 구분하기 |
| `Java09Encapsulation.java` | `private` 필드와 getter·setter를 사용한 캡슐화 및 점수 검증 |
| `Java10BankAccount.java` | 캡슐화된 은행 계좌 객체의 소유자 검증과 입금·출금 구현하기 |
| `Java11StudentScore.java` | getter·setter로 학생 정보를 조회하고 0~100 범위의 점수만 반영하기 |
| `Java12Book.java` | 캡슐화된 도서 객체의 제목·가격 관리와 가격 검증하기 |
| `Java13Inheritance.java` | 상속으로 부모·자식 클래스 관계 구현하기 |
| `Java14Super.java` | `super`로 부모 클래스 생성자와 멤버 사용하기 |
| `Java15Polymorphism.java` | 다형성으로 같은 타입에서 다양한 객체 동작하기 |
| `Java16Casting.java` | 업캐스팅·다운캐스팅과 타입 확인하기 |
| `Java17Abstract.java` | 추상 클래스와 추상 메서드 구현하기 |
| `Java18Interface.java` | 인터페이스를 구현해 공통 동작 정의하기 |
| `Java19Exception.java` | `try-catch-finally`로 예외 처리하기 |
| `Java20ExceptionPractice.java` | 여러 예외 상황을 처리하고 예외 흐름 복습하기 |
| `Java21ArrayList.java` | `ArrayList`에 객체를 추가·조회·삭제하기 |
| `Java22HashMap.java` | `HashMap`에 키와 값을 저장하고 조회하기 |
| `Java23HashMapCount.java` | `HashMap`으로 항목별 개수 세기 |

## Frontend

| 파일 | 학습 주제 |
| --- | --- |
| `01_text_change.html` | 버튼 클릭으로 텍스트 변경 |
| `02_text_change_two_buttons.html` | 함수 매개변수를 활용한 텍스트 변경 |
| `03_js_variable_if.html` | 변수와 조건문을 이용한 ON/OFF 토글 |
| `04_js_counter.html` | 상태 값을 이용한 증감 카운터 |
| `05_js_input.html` | 입력값 검증과 숫자·문자 판별 |
| `06_js_dom_control.html` | DOM 요소의 색상과 표시 상태 제어 |
| `07_css_basic.html` | 선택자, 여백, 테두리와 기본 레이아웃 |
| `08_study_time_counter/` | 이벤트 리스너와 CSS를 활용한 10분 단위 공부 시간 카운터 |
| `09_custom_study_timer/` | 입력값 검증, Enter 키 입력과 `localStorage` 저장을 지원하는 사용자 지정 타이머 |
| `10_profile_card/` | 시맨틱 HTML, Flexbox와 미디어 쿼리를 활용한 반응형 프로필 카드 |
| `11_status_card/` | 버튼으로 학습 상태를 변경하고 `localStorage`에 저장하는 반응형 상태 카드 |
| `12_todo_card/` | 입력한 할 일을 DOM 목록에 추가하고 삭제하는 동적 카드 |
| `13_fetch_api/` | Fetch API로 서버 데이터를 받아 화면에 표시하기 |
| `14_fetch_post/` | Fetch API로 POST 요청을 보내고 응답 처리하기 |
| `15_fetch_user_list/` | 사용자 목록 조회·등록 API와 프론트엔드 연결하기 |

프론트엔드 예제는 해당 HTML 파일을 브라우저에서 열어 실행할 수 있습니다.

## Backend

| 파일 | 학습 주제 |
| --- | --- |
| `01_basics.js` | Node.js 출력, 명령줄 인자 처리, 숫자 검증과 `os` 내장 모듈 사용하기 |
| `02_FileSystem.js` | `fs` 모듈로 파일 생성·읽기·추가·덮어쓰기하기 |
| `03_Module/app.js` | 사용자 모듈을 불러와 계산 함수 사용하기 |
| `03_Module/calculator.js` | `module.exports`로 더하기·빼기 함수 내보내기 |
| `04_NPM/index.js` | npm 프로젝트와 `express` 패키지 사용 시작하기 |
| `05_Express.js` | Express 서버와 기본 라우트 만들기 |
| `06_ExpressParams.js` | URL 경로 파라미터 처리하기 |
| `07_ExpressQuery.js` | 쿼리 문자열 읽기 |
| `08_ExpressPost.js` | POST 요청과 JSON 본문 처리하기 |
| `09_ExpressValidation.js` | 요청 데이터 검증과 HTTP 상태 코드 응답하기 |
| `10_ExpressJson.js` | Express에서 JSON 요청 본문 읽기 |
| `11_ExpressPostJson.js` | JSON POST 요청 처리와 응답 보내기 |
| `12_ExpressUserList.js` | 사용자 목록 GET·POST API 만들기 |

## AI/Data Analysis

| 파일 | 학습 주제 |
| --- | --- |
| `01_NumPyBasics.py` | NumPy 배열 생성과 기본 속성 확인하기 |
| `02_NumPyOperations.py` | NumPy 배열 연산과 집계하기 |
| `03_PandasBasics.py` | pandas DataFrame과 CSV 데이터 다루기 |
| `04_PandasMissingValues.py` | 결측치 확인·대체와 조건 필터링하기 |
| `05_PandasGroupBy.py` | pandas `groupby`로 그룹별 통계 구하기 |
| `06_PandasMerge.py` | 여러 DataFrame을 `merge`로 결합하기 |
| `07_MatplotlibBasics.py` | Matplotlib로 기본 그래프 그리기 |
| `08_PandasVisualization.py` | pandas 데이터를 시각화하기 |

## Database

| 파일 | 학습 주제 |
| --- | --- |
| `01_SelectWhere.sql` | `SELECT`와 `WHERE`로 데이터를 조회하고 `ORDER BY`로 오름차순·내림차순 정렬하기 |
| `02_InsertUpdateDelete.sql` | `INSERT`, `UPDATE`, `DELETE`로 데이터 추가·수정·삭제하기 |
| `03_AggregateFunctions.sql` | `COUNT`, `SUM`, `AVG`로 전체 또는 조건별 학생 수·합계·평균 구하기 |
| `04_GroupBy.sql` | `GROUP BY`와 집계 함수로 전공별 학생 수·평균·최고 점수 구하기 |
| `05_Having.sql` | `WHERE`와 `HAVING`으로 행과 그룹에 각각 조건 적용하기 |
| `06_InnerJoin.sql` | `INNER JOIN`으로 학생과 전공 테이블을 연결하고 조건에 맞는 데이터 조회하기 |
| `07_LeftJoin.sql` | `LEFT JOIN`으로 학생이 없는 전공까지 조회하고 전공별 학생 수 집계하기 |
| `08_JoinAggregateReview.sql` | `LEFT JOIN`, `GROUP BY`, `HAVING`으로 전공별 학생 수와 평균 점수 분석하기 |
| `09_LeftJoinReview.sql` | 모든 전공을 기준으로 학생 수와 평균 점수 집계하기 |
| `10_LeftJoinPractice.sql` | 모든 부서를 기준으로 직원 수를 `LEFT JOIN`과 `GROUP BY`로 집계하기 |
| `11_LeftJoinAggregateReview.sql` | `LEFT JOIN`과 집계 함수 복습하기 |
| `12_Subquery.sql` | 조건문 안에 서브쿼리 사용하기 |
| `13_FromSubquery.sql` | `FROM` 절의 서브쿼리로 조회 결과 재사용하기 |
| `14_CorrelatedSubquery.sql` | 외부 행과 연결된 상관 서브쿼리 작성하기 |
| `15_CreateTable.sql` | 테이블 생성과 기본 제약조건 정의하기 |
| `16_ForeignKey.sql` | 외래 키로 테이블 간 관계 설정하기 |
| `17_AlterTable.sql` | `ALTER TABLE`로 열과 테이블 구조 변경하기 |
| `18_Transaction.sql` | 트랜잭션의 시작·커밋·롤백 사용하기 |
| `19_TransactionReview.sql` | 트랜잭션 처리 흐름 복습하기 |
| `20_JoinGroupByReview.sql` | 조인 결과를 그룹별로 집계하기 |
| `21_View.sql` | 조회 결과를 뷰로 저장하고 사용하기 |
| `22_GroupByHavingReview.sql` | `GROUP BY`와 `HAVING`으로 그룹별 조건 집계하기 |

## 학습 목표

- C와 Python의 기본 문법 및 Java 클래스·객체·캡슐화 익히기
- 알고리즘 문제 풀이를 통해 문제 해결 능력 기르기
- HTML, CSS, JavaScript의 역할과 상호작용 이해하기
- 시맨틱 마크업과 반응형 CSS를 익히고 DOM 기반의 동적 웹 페이지 구현하기
- Node.js와 Express로 JSON API를 만들고 Fetch로 프론트엔드와 연결하기
- Java 컬렉션과 예외 처리로 데이터와 오류 흐름 다루기
- NumPy·pandas·Matplotlib로 데이터를 정리·결합·시각화하기
- SQL 서브쿼리, 조인, 트랜잭션, 뷰와 집계로 데이터 분석하기
- 학습 과정과 결과물을 꾸준히 기록하기

> 학습 내용이 늘어날 때마다 예제와 문서를 함께 업데이트합니다.
