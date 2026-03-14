# Java Education 002

이 저장소는 **자바 기초 문법부터 자료구조/알고리즘, 입출력, JVM 관찰**까지 폭넓게 연습할 수 있도록 구성된 실습 모음입니다.
각 `.java` 파일이 독립적인 미니 과제 역할을 하며, 수업 시간에 단위 주제별로 실행·토론하기 좋게 설계되어 있습니다.

---

## 1) 학습 목표

이 레포를 통해 아래 역량을 단계적으로 훈련할 수 있습니다.

- 콘솔 기반 입력/출력(`Scanner`, `System.out`) 처리
- 변수, 상수, 산술 연산, 형변환, 문자열 포맷팅
- 조건문/반복문을 활용한 문제 해결
- 배열 및 컬렉션(`List`, `Set`, `Map`, `Vector`) 사용
- 간단한 알고리즘 구현(소수, 회문, 자리수 뒤집기, 시뮬레이션)
- 외부 라이브러리(Jackson) 기반 JSON 직렬화/역직렬화
- `java.lang.management` 기반 JVM 메모리/스레드 진단

---

## 2) 프로젝트 구조

```text
src/main/java/
 ├─ 수학/물리 계산 실습 클래스
 ├─ 조건문/반복문 실습 클래스
 ├─ 문자열/숫자 알고리즘 실습 클래스
 ├─ 컬렉션(List/Set/Map/Vector) 실습 클래스
 └─ JVM/시뮬레이션 실습 클래스
pom.xml           # Maven 설정(Java 17, Jackson, JUnit, Logback)
Dockerfile        # PhysicsMenuCalculator 실행 예시용 컨테이너
Readme.md         # 현재 문서
```

---

## 3) 실행 환경

- JDK: **17**
- Build Tool: **Maven**
- 주요 의존성
  - `com.fasterxml.jackson.core:jackson-databind:2.20.0`
  - `org.junit.jupiter:junit-jupiter:5.10.2` (test)
  - `ch.qos.logback:logback-classic:1.5.6`

---

## 4) 실행 방법

### 4-1. Maven으로 컴파일

```bash
mvn clean compile
```

### 4-2. 개별 클래스 실행(기본 java 명령)

```bash
# 예시: PhysicsMenuCalculator 실행
javac -encoding UTF-8 src/main/java/PhysicsMenuCalculator.java
java -cp src/main/java PhysicsMenuCalculator
```

### 4-3. JAR 패키징

```bash
mvn clean package
```

> 현재 `pom.xml`의 `maven-jar-plugin` 메인 클래스는 `ListCrudExample`로 지정되어 있습니다.

---

## 5) 실습 로드맵 (기본 교육 커리큘럼)

아래 순서로 진행하면 입문자가 자연스럽게 난이도를 올릴 수 있습니다.

### STEP 1. 입출력 + 산술 연산

- `SumOfThreeNumbers` : 3개 숫자 합
- `ProductOfThreeNumbers` : 3개 숫자 곱
- `TotalAmountPayable` : 금액 계산
- `SimpleInterestInput` : 단리 계산
- `TipsCalculator` : 팁/총액 계산
- `TotalSalaryCalculator` : 급여 계산

**핵심 포인트**
- `Scanner` 입력 받기
- `double/int` 자료형 선택
- 계산식 분리 및 출력 포맷

### STEP 2. 기초 수학/기하/물리 문제

- `VolumeOfCylinder` : 원기둥 넓이/부피
- `TriangleArea` : 삼각형 넓이
- `RectanglePropertiesCalculator` : 직사각형 속성 계산
- `TwoPointDistance` : 두 점 사이 거리
- `Quadratic` : 2차 방정식 해
- `SimultaneousUsingCramerRule` : 연립방정식(Cramer)
- `RunwayLength` : 활주로 길이
- `WindChillIndex` : 체감온도
- `PhysicsMenuCalculator` : 물리 계산 메뉴형 프로그램

**핵심 포인트**
- `Math.pow`, `Math.sqrt`, `Math.floor` 활용
- 공식 기반 프로그램 구조화
- 입력 검증(유효 범위 체크)

### STEP 3. 조건문/반복문/시간 처리

- `TimeConverter` : 시간 단위 변환
- `TimePlus15Minutes` : 시각 계산
- `RandomMonth` : 난수와 월 매핑
- `Race` : 반복 기반 조건 판정
- `PrimeNumberTo1000` : 1~1000 소수 출력
- `NumberPyramidEnhanced` : 반복문 패턴 출력

**핵심 포인트**
- `if/else`, `switch` 응용
- 반복문(`for`, `while`) 패턴
- 문제 분해 후 단계적 구현

### STEP 4. 숫자/문자열 알고리즘

- `PalindromeNumber` : 회문 숫자 판정
- `ReverseNumber` : 정수 자리수 뒤집기
- `SwapNumbers` : 임시 변수 이용 swap
- `SwapNumbersWithoutThirdVariable` : 임시 변수 없이 swap
- `TakeSkipRope` : 문자열 인덱스/규칙 기반 변환

**핵심 포인트**
- 나머지/나눗셈 기반 자리수 처리
- 문자열 순회 및 인덱스 제어
- 알고리즘 단계 시각화

### STEP 5. 컬렉션 프레임워크

- `ListCrudExample` : List CRUD 기본
- `ListPerformanceTest` : 리스트 성능 비교
- `VectorExample` : Vector 동작
- `HashSetExample` : Set 중복 제거/탐색
- `StudentAcademy` : 학생 데이터 관리(Map/List 조합)
- `HashMapToJsonExample` : Map → JSON 직렬화
- `HashTableExample` : JSON 파일 기반 로그인 검증

**핵심 포인트**
- 컬렉션별 특성(순서, 중복, 검색)
- 데이터 구조 선택 기준
- 외부 데이터(JSON) 읽기/변환

### STEP 6. 시뮬레이션 + JVM 진단

- `LadyBugsLogColor` : 명령형 시뮬레이션 + ANSI 컬러 로그
- `SystemMetricsDemo` : JVM/시스템 지표 확인
- `WorldSwimmingRecordWithDiagnostics` : 문제 풀이 + JVM 메모리/스레드 진단

**핵심 포인트**
- 상태 변화 시뮬레이션
- 로그 가독성 향상
- `ManagementFactory` 기반 런타임 관찰

---

## 6) 수업 운영 예시 (권장)

- **1주차**: STEP 1~2 (입출력 + 공식 계산)
- **2주차**: STEP 3~4 (제어문 + 알고리즘)
- **3주차**: STEP 5 (컬렉션 + JSON)
- **4주차**: STEP 6 (시뮬레이션 + JVM 진단) + 미니 프로젝트

### 과제 운영 팁

- 동일 문제를 `if 중심 버전` / `메서드 분리 버전`으로 각각 구현하게 하여 리팩터링 감각을 학습
- `ListPerformanceTest` 결과를 기반으로 자료구조 선택 이유를 문장으로 설명하도록 유도
- `WorldSwimmingRecordWithDiagnostics` 출력 결과를 통해 Heap/Non-Heap 의미 토론

---

## 7) 주의사항 / 개선 포인트

- `HashTableExample`는 JSON 파일 경로가 하드코딩되어 있으므로, 실습 환경에서는 **상대 경로**로 변경하는 것이 좋습니다.
- `Dockerfile`은 `PhysicsMenuCalculator.java`를 루트에서 복사하도록 되어 있어 현재 소스 구조(`src/main/java`)와 다릅니다. 필요 시 Dockerfile 경로를 맞춰 수정하세요.
- 예제 클래스 대부분이 default package이므로, 팀 과제 확장 시 `package` 구조를 도입하는 것을 권장합니다.

---

## 8) 확장 학습 아이디어

- 각 계산기 클래스를 메서드/유틸 클래스로 분리하여 재사용 가능한 구조로 리팩터링
- JUnit 테스트 케이스 추가(정상/경계/예외 입력)
- `StudentAcademy`를 파일 저장/불러오기 기능과 연결
- 메뉴형 프로그램(`PhysicsMenuCalculator`)을 enum + 전략 패턴으로 개선
- 동일 문제를 Java Stream 버전으로 재구현

---

## 9) 빠른 시작(요약)

```bash
# 1) 컴파일
mvn clean compile

# 2) 예시 클래스 단일 실행
javac -encoding UTF-8 src/main/java/VolumeOfCylinder.java
java -cp src/main/java VolumeOfCylinder
```

실습은 “짧게 실행 → 결과 확인 → 코드 수정 → 재실행” 사이클로 진행하는 것이 가장 효과적입니다.



# Java Education

이 저장소는 **자바 기반의 항만/선박 데이터 시뮬레이션 학습용 프로젝트**입니다.  
파일 기반 ISAM 인덱싱, 선박 이동 시뮬레이션, MongoDB 위치 업데이트, HWP 문서 생성 예제를 하나의 Maven 프로젝트 안에서 실습할 수 있습니다.

## 기술 스택

- **Language**: Java 17
- **Build Tool**: Maven (`pom.xml`)
- **Packaging**: JAR (Maven Shade Plugin 사용)
- **Logging**: Log4j2 (`log4j-api`, `log4j-core`)
- **Database / Driver**: MongoDB + `mongodb-driver-sync`
- **Document Libraries**:
  - Apache PDFBox
  - hwplib (`kr.dogfoot:hwplib`)
- **Data Modeling Artifacts**: Vuerd JSON (`1.vuerd.json`, `DB/test.vuerd.json`)

## 프로젝트 설명

### 1) ISAM 파일 저장/검색 예제
- `ISAMExample`: 항구 ID + 항구명을 고정 길이 레코드로 `isam_data.dat`에 저장하고, `isam_index.dat`로 오프셋 인덱스를 관리합니다.
- `ISAMExample2`: 위 구조를 확장해 위도/경도까지 포함한 레코드를 저장합니다.

### 2) 선박 이동 시뮬레이션
- `ShipSimulationISAM`: 하버사인(Haversine) 거리 계산을 기반으로 선박 위치를 주기적으로 계산/기록합니다.
- `ShipSimulationUnload`: 운항 중 항구 접근 시 하역 로직(비용 비교, 컨테이너 감소)을 포함한 시뮬레이션 예제입니다.
- 결과 데이터는 `ship_data.dat`, `ship_index.dat` 파일에 기록됩니다.

### 3) MongoDB 선박 위치 업데이트 예제
- `UpdateShipLocation`: MongoDB `testdb.ships` 컬렉션에서 특정 선박 좌표를 주기적으로 읽고 업데이트합니다.
- 로컬 MongoDB(예: `mongodb://localhost:27017`)를 전제로 합니다.

### 4) HWP 문서 생성 예제
- `CreateHwpExample`: hwplib를 사용해 간단한 HWP 파일을 생성하는 샘플입니다.

## 디렉터리 개요

- `src/main/java/com/sample`: ISAM/시뮬레이션/HWP 예제
- `src/main/java/com/ship`: MongoDB 기반 선박 위치 업데이트 예제
- `DB/`: ERD/Vuerd 관련 산출물
- `*.dat`: 샘플 실행 시 생성/사용되는 데이터 및 인덱스 파일

## 실행 전 참고

1. Java 17 및 Maven이 필요합니다.
2. MongoDB 예제를 실행하려면 로컬 MongoDB 인스턴스가 필요합니다.
3. `pom.xml`의 Shade Plugin `mainClass`는 현재 `com.sample.PdfBoxExample`으로 지정되어 있으나, 해당 클래스는 저장소에 보이지 않으므로 패키징 시 실행 진입점 설정을 점검해야 합니다.

## 간단 실행 예시

```bash
# 컴파일
mvn compile

# 특정 예제 실행 (클래스 직접 지정)
mvn exec:java -Dexec.mainClass="com.sample.ISAMExample"
```

MongoDB 빠른 실행 예시(프로젝트 내 메모):

```bash
docker run -d --name my-mongo -p 27017:27017 mongo
```


## 학습 난이도/커리큘럼 (재정의)

본 저장소는 다음 순서로 학습하도록 재정의했습니다.

1. 기초 문법/객체지향 실습 (Lv.0~Lv.2): 이 저장소 내부 실습 코드로 진행
2. `com.sample.ISAMExample`, `ISAMExample2` (Lv.3): 파일 인덱싱/레코드 구조
3. `com.sample.ShipSimulationISAM`, `ShipSimulationUnload` (Lv.4): 시뮬레이션/도메인 로직
4. `com.ship.UpdateShipLocation`, `CreateHwpExample` (Lv.5): 외부 시스템 연동

상세 학습 로드맵은 `curriculum.md`를 참고하세요.
