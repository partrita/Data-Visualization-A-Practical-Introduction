#' 일반 사회 조사 데이터, 2016
#'
#' 2016년 일반 사회 조사에서 발췌한 데이터 세트입니다.
#' 변수에 대한 전체 문서는 http://gss.norc.org/Get-Documentation을 참조하십시오.
#'
#' \itemize{
#' \item year. 이 응답자의 gss 연도.
#' \item id. 응답자 ID 번호.
#' \item ballot. 인터뷰에 사용된 투표용지.
#' \item age. 응답자의 나이.
#' \item childs. 자녀 수.
#' \item sibs. 형제자매 수.
#' \item degree. 응답자의 최종 학력.
#' \item race. 응답자의 인종.
#' \item sex. 응답자의 성별.
#' \item region. 인터뷰 지역.
#' \item income16. 총 가구 소득.
#' \item relig. 응답자의 종교적 선호도.
#' \item marital. 결혼 상태.
#' \item padeg. 아버지의 최종 학력.
#' \item madeg. 어머니의 최종 학력.
#' \item partyid. 정당 소속.
#' \item polviews. 자신을 진보 또는 보수로 생각하는지 여부.
#' \item happy. 일반적인 행복감.
#' \item partners. 작년에 응답자가 가진 성관계 파트너 수.
#' \item grass. 마리화나를 합법화해야 하는지 여부.
#' \item zodiac. 응답자의 별자리.
#' \item pres12. 응답자가 오바마에게 투표했는지 여부에 대한 원시 변수입니다. 이 데이터 세트에서는 obama로 코딩 변경되었습니다.
#' \item wtssall. 가중치 변수.
#' \item income_rc. 코딩 변경된 소득 변수.
#' \item agegrp. 연령 범주로 코딩 변경된 연령 변수.
#' \item ageq. 사분위수로 코딩 변경된 연령.
#' \item siblings. 상한 처리된 형제자매 변수.
#' \item kids. 상한 처리된 자녀 변수.
#' \item bigregion. 4개의 인구 조사 지역으로 코딩 변경된 지역 변수(인구 조사국).
#' \item religion. 6개 범주로 코딩 변경된 종교 변수.
#' \item partners_rc. 5개 범주로 코딩 변경된 파트너 변수.
#' \item obama. 응답자는 2012년에 오바마에게 투표했다고 말합니다. 1 = 예;
#' 0 = 기타 모든 비지정 옵션(롬니, 다른 후보, 투표하지 않음, 거부 등)
#' }
#'
#' @docType data
#' @keywords datasets
#' @name gss_sm
#' @format 2538개 행과 26개 변수가 있는 데이터 프레임입니다.
#' @source National Opinion Research Center, http://gss.norc.org.
"gss_sm"


#' 일반 사회 조사 데이터, 1972-2016
#'
#' 일반 사회 조사에서 발췌한 데이터 세트입니다.
#' 변수에 대한 전체 문서는 http://gss.norc.org/Get-Documentation을 참조하십시오. 이 데이터에는 `gss_sm`과 동일한
#' 변수가 포함되어 있지만 1972년부터 2016년까지 사용 가능한 모든 연도에 대한 데이터입니다.
#'
#' \itemize{
#' \item year. 이 응답자의 gss 연도.
#' \item id. 응답자 ID 번호.
#' \item ballot. 인터뷰에 사용된 투표용지.
#' \item age. 응답자의 나이.
#' \item degree. 응답자의 최종 학력.
#' \item race. 응답자의 인종.
#' \item sex. 응답자의 성별.
#' \item siblings. 형제자매 수(SIBS에서 코딩 변경됨).
#' \item kids. 자녀 수(CHILDS에서 코딩 변경됨).
#' \item bigregion. 인터뷰 지역(REGION에서 코딩 변경됨).
#' \item income16. 총 가구 소득.
#' \item religion. 응답자의 종교적 선호도(RELIGION에서 코딩 변경됨)
#' \item marital. 결혼 상태.
#' \item padeg. 아버지의 최종 학력.
#' \item madeg. 어머니의 최종 학력.
#' \item partyid. 정당 소속.
#' \item polviews. 자신을 진보 또는 보수로 생각하는지 여부.
#' \item happy. 일반적인 행복감.
#' \item partners_rc. 작년에 응답자가 가진 성관계 파트너 수.
#' (PARTNERS에서 코딩 변경됨)
#' \item grass. 마리화나를 합법화해야 하는지 여부.
#' \item zodiac. 응답자의 별자리.
#' \item pres12. 2012년 대통령 선거에서 응답자의 명시된 투표
#' \item wtssall. 가중치 변수.
#' \item vpsu. 표본 추출 단위
#' \item vstrat. 층화 단위
#' }
#'
#' @docType data
#' @keywords datasets
#' @name gss_lon
#' @format 62,366개 행과 26개 변수가 있는 데이터 프레임입니다.
#' @source National Opinion Research Center, http://gss.norc.org.
"gss_lon"


#' 일반 사회 조사 데이터, 1972-2016
#'
#' 일반 사회 조사에서 발췌한 데이터 세트입니다.
#' 변수에 대한 전체 문서는 http://gss.norc.org/Get-Documentation을 참조하십시오. 이 데이터에는 `gss_lon`의 7개
#' 변수가 포함되어 있으며 모든 NA 값은 생략되었습니다.
#'
#' \itemize{
#' \item year. 이 응답자의 gss 연도.
#' \item id. 응답자 ID 번호.
#' \item age. 응답자의 나이.
#' \item race. 응답자의 인종.
#' \item sex. 응답자의 성별.
#' \item siblings. 형제자매 수(SIBS에서 코딩 변경됨).
#' \item kids. 자녀 수(CHILDS에서 코딩 변경됨).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name gss_sib
#' @format 60,423개 행과 7개 변수가 있는 데이터 프레임입니다.
#' @source National Opinion Research Center, http://gss.norc.org.
"gss_sib"

#' 2016년 미국 대통령 선거, 주별 결과
#'
#' 2016년 미국 대통령 선거의 주별 투표 총계 및 득표율입니다.
#'  변수는 다음과 같습니다.
#' \itemize{
#' \item state. 주 이름.
#' \item st. 주 약어.
#' \item fips. 주 FIPS 코드
#' \item total_vote. 총 투표 수.
#' \item vote_margin. 승자의 득표 차이
#' \item winner. 당선된 후보.
#' \item party. 당선된 정당.
#' \item pct_margin. 승자의 득표율 차이(총 투표 수 대비)
#' \item r_points. 트럼프 득표율과 클린턴 득표율 간의 백분율 포인트 차이
#' \item d_points. 클린턴 득표율과 트럼프 득표율 간의 백분율 포인트 차이.
#' \item pct_clinton. 클린턴 득표율(%)
#' \item pct_trump. 트럼프 득표율(%)
#' \item pct_johnson. 존슨 득표율(%)
#' \item pct_other. 기타 득표율(%)
#' \item clinton_vote. 클린턴 총 투표 수
#' \item trump_vote. 트럼프 총 투표 수
#' \item johnson_vote. 존슨 총 투표 수
#' \item other_vote. 기타 총 투표 수
#' \item ev_dem. 클린턴의 선거인단 투표 수
#' \item ev_rep. 트럼프의 선거인단 투표 수
#' \item ev_oth. 기타 후보의 선거인단 투표 수
#' \item census. 인구 조사 지역.
#'}
#'
#' @docType data
#' @keywords datasets
#' @name election
#' @format 51개 행과 22개 변수가 있는 (tibble) 데이터 프레임입니다.
#' @source Dave Leip의 투표 데이터, US Election Atlas, http://uselectionatlas.org.
"election"



#' 미국 대통령 선거 득표율
#'
#' 1824년부터 2016년까지의 미국 대통령 선거 데이터 세트로,
#'  승자, 차점자 및 다양한 득표율 측정치에 대한 정보가 포함되어 있습니다.
#'  2016년 데이터는 2016년 12월 초 기준 잠정 데이터입니다.
#'  변수는 다음과 같습니다.
#'
#' \itemize{
#' \item election. 첫 번째 미국 대통령 선거부터 계산한 선거 번호입니다.
#' 1824년은 10번째 선거입니다.
#' \item year. 연도.
#' \item winner. 승자의 전체 이름.
#' \item win_party. 승자의 정당 소속.
#' \item ec_pct. 승자의 선거인단 투표 득표율.
#' (범위는 0에서 1까지입니다.)
#' \item popular_pct. 승자의 대중 투표 득표율. (범위는 0에서 1까지입니다.)
#' \item popular_margin. 승자의 대중 투표 득표 차이(포인트).
#' 양수 또는 음수일 수 있습니다.
#' \item votes. 선거에서 총 투표 수.
#' \item margin. 승자의 대중 투표 득표 차이.
#' \item runner_up. 차점자 후보.
#' \item ru_part. 차점자 후보의 정당 소속.
#' \item turnout_pct. 유권자 투표율(유효 유권자 대비).
#' (비율은 0에서 1까지입니다.)
#' \item winner_lname 승자의 성.
#' \item winner_label 승자의 성과 선거 연도.
#' \item ru_lastname. 차점자의 성.
#' \item ru_label. 차점자의 성과 선거 연도.
#' \item two_term. 이것은 2임기 대통령직입니까? (TRUE/FALSE.)
#' F.D. 루스벨트는 4번 당선되었습니다.
#' \item ec_votes. 승자에게 투표된 선거인단 투표 수.
#' \item ec_denom. 총 선거인단 투표 수.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name elections_historic
#' @format 237개 행과 21개 변수가 있는 (tibble) 데이터 프레임입니다.
#' @source https://en.wikipedia.org/wiki/List_of_United_States_presidential_elections_by_popular_vote_margin.
"elections_historic"

#' OECD의 장기 기증
#'
#' 1991년부터 2002년까지 17개 OECD 국가의 장기 기증률에 대한 데이터 세트입니다.
#'  변수는 다음과 같습니다.
#'
#' \itemize{
#' \item country. 국가 이름.
#' \item year. 연도.
#' \item donors. 인구 백만 명당 장기 기증률.
#' \item pop. 인구(천 명).
#' \item pop_dens. 평방 마일당 인구 밀도.
#' \item gdp. PPP 달러 기준 국내 총생산(천 달러).
#' \item gdp_lag. PPP 달러 기준 지연된 국내 총생산(천 달러).
#' \item health. 1인당 의료비(PPP 달러 기준 천 달러).
#' \item health_lag 지연된 1인당 의료비(PPP 달러 기준 천 달러).
#' \item pubhealth. 총 지출 대비 공공 의료비 비율.
#' \item roads. 인구 10만 명당 도로 교통사고 사망자 수.
#' \item cerebvas. 인구 10만 명당 뇌혈관 질환 사망자 수(반올림).
#' \item assault. 인구 10만 명당 폭행 사망자 수(반올림).
#' \item external. 인구 10만 명당 외인사 사망자 수.
#' \item txp_pop. 인구 백만 명당 이식 프로그램 수.
#' \item world. 복지 국가 세계(Esping Andersen).
#' \item opt. 옵트인 정책 또는 옵트아웃 정책.
#' \item consent_law. 동의법, 정보 제공 또는 추정.
#' \item consent_practice. 동의 관행, 정보 제공 또는 추정.
#' \item consistent. 법과 관행의 일치 여부, 예 또는 아니오.
#' \item ccode. 약칭 국가 코드.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name organdata
#' @format 237개 행과 21개 변수가 있는 (tibble) 데이터 프레임입니다.
#' @source 거시 경제 및 지출 데이터: OECD. 기타 데이터: Kieran Healy.
"organdata"


#' 문자 형태의 날짜
#'
#' 날짜 열이 문자열로 저장된 날짜 및 관찰값 표입니다.
#'
#' @docType data
#' @keywords datasets
#' @name bad_date
#' @format 10개 행과 2개 열이 있는 tibble입니다.
#' @source Chris Delcher.
"bad_date"


#' 정리되지 않은 데이터 표
#'
#' Wickham(2014)의 데이터 표입니다.
#'
#' @docType data
#' @keywords datasets
#' @name preg
#' @format 3개 행과 3개 열이 있는 tbl_df입니다.
#' @source Hadley Wickham (2014).
"preg"


#' 더 넓은 정리되지 않은 데이터 표
#'
#' Wickham(2014)의 두 번째 데이터 표입니다.
#'
#' @docType data
#' @keywords datasets
#' @name preg2
#' @format 2개 행과 4개 열이 있는 \\code{tbl_df} 클래스( \\code{tbl}, \\code{data.frame}에서 상속)의 객체입니다.
#' @source Hadley Wickham (2014).
"preg2"

##' 타이타닉호의 생존율 표
##'
##' 타이타닉호의 성별 생존율을 나타내는 작은 표입니다.
##'
##' @docType data
##' @keywords datasets
##' @name titanic
##' @format 4개 행과 4개 열이 있는 데이터 프레임입니다.
##' @source 타이타닉 데이터
"titanic"


##' 색맹 유형과 관련된 16진수 색상 값 표
##'
##' 5가지 기본 ggplot 색상의 16진수 값과 세 가지 종류의 색맹에 대한
##' 해당 근사값입니다. `dichromat` 패키지로 생성되었습니다.
##'
##' @docType data
##' @keywords datasets
##' @name color_table
##' @format 5개 행과 4개 열이 있는 tibble입니다.
##' @source Kieran Healy
"color_table"

##' 미국 25세 이상 인구의 학교 교육 이수 연수.
##'
##' 1940년부터 2016년까지의 교육 수준별 인구 수(천 명)
##'
##' 변수는 다음과 같습니다.
##' \itemize{
##' \item age 문자. 25-34세, 35-54세, 55세 이상으로 구분.
##' \item sex 문자. 남성, 여성.
##' \item year 정수.
##' \item total 정수. 총계(천 명).
##' \item elem4 실수. 초등학교 0~4년 이수.
##' \item elem8 실수. 초등학교 5~8년 이수.
##' \item hs3 실수. 고등학교 1~3년 이수.
##' \item hs4 실수. 고등학교 4년 이수.
##' \item coll3 실수. 대학교 1~3년 이수.
##' \item coll4 실수. 대학교 4년 이상 이수.
##' \item median 실수. 교육 연수 중앙값.
##'}
##'
##' @docType data
##' @keywords datasets
##' @name edu
##' @format 366개 행과 11개 열이 있는 tibble입니다.
##' @source 미국 인구 조사국
"edu"



##' 마우나로아 대기 CO2 농도
##'
##' 기본 R의 [datasets] 패키지에 있는 co2 데이터의 하위 집합으로,
##' ggplot2 친화적인 형식입니다.
##'
##' @docType data
##' @keywords datasets
##' @name maunaloa
##' @format 4개 열과 271개 행이 있는 데이터 프레임입니다.
##' @source R 기본 데이터 세트; Cleveland (1993).
"maunaloa"


##' 통화량 및 S&P 500 시리즈
##'
##' FRED의 두 가지 금융 데이터 시계열로, _i는 기본 관찰에서 100으로
##' 인덱싱되었음을 의미합니다.
##'
##' @docType data
##' @keywords datasets
##' @name fredts
##' @format 5개 열과 357개 행이 있는 데이터 프레임입니다.
##' @source FRED 데이터.
"fredts"



##' 야후 수익 및 직원 수
##'
##' 마리사 메이어가 CEO로 재직하기 전과 재직 중 야후의 수익 및 직원 수 데이터입니다.
##'
##' @docType data
##' @keywords datasets
##' @name yahoo
##' @format 4개 열과 12개 행이 있는 tibble입니다.
##' @source QZ.com
"yahoo"


##' 학자금 대출 데이터
##'
##' 2016년 8개 소득 범주에 걸친 미상환 학자금 대출액(모든 대출자의 비율 및
##' 모든 잔액의 비율 기준).
##'
##' @docType data
##' @keywords datasets
##' @name studebt
##' @format 16개 행과 4개 열이 있는 tibble입니다.
##' @source 뉴욕 연방 준비 은행
"studebt"


##' 미국 사회학회 분과 회원 현황
##'
##' 미국 사회학회 분과의 회원 현황(2005-2015) 및 일부 재정 정보입니다.
##'
##'
##' @docType data
##' @keywords datasets
##' @name asasec
##' @format 572개 행과 9개 열이 있는 데이터 프레임입니다.
##' @source ASA 연례 보고서 2016
"asasec"


##' 미국 카운티 인구 조사 데이터
##'
##' 선택된 카운티 데이터(일부 변수에 대한 주 수준 관찰값 포함)
##'
##' 변수는 다음과 같습니다.
##' \itemize{
##' \item id. FIPS 주 및 카운티 코드(문자)
##' \item name. 주 또는 카운티 이름
##' \item state. 주 약어
##' \item census_region. 인구 조사 지역
##' \item pop_dens. 평방 마일당 인구 밀도, 2014년 추정치
##' (7개 범주).
##' \item pop_dens4. 평방 마일당 인구 밀도, 2014년 추정치 (사분위수)
##' \item pop_dens6. 평방 마일당 인구 밀도, 2014년
##' 추정치 (6개 범주)
##' \item pct_black. 흑인 인구 비율, 2014년 추정치 (7개
##' 범주 요인)
##' \item pop. 인구, 2014년 추정치
##' \item female. 여성 인구 비율, 2013년
##' \item white. 백인 단독, 비율, 2013년
##' \item black. 흑인 단독, 비율, 2013년
##' \item travel_time. 직장까지 평균 통근 시간(분), 16세 이상 근로자, 2009-2013년
##' \item land_area. 평방 마일 단위 육지 면적, 2010년
##' \item hh_income. 가구 소득 중앙값, 2009-2013년
##' \item su_gun4. 인구 10만 명당 총기 관련 자살 건수,
##' 1999-2015년. 사분위수로 구분된 요인 변수입니다. 이 변수의 값에는
##' 구성상 부정확한 하위 사분위수 코딩이 포함되어 있습니다. 이 변수를
##' 총기 관련 자살률의 정확한 측정치로 제시하지 마십시오.
##' \item su_gun6. 인구 10만 명당 총기 관련 자살 건수,
##' 1999-2015년. 6개 범주로 구분된 요인 변수입니다. 이 변수의 값에는
##' 구성상 부정확한 하위 사분위수 코딩이 포함되어 있습니다. 이 변수를
##' 총기 관련 자살률의 정확한 측정치로 제시하지 마십시오.
##' \item fips. FIPS 코드(정수).
##' \item votes_dem_2016. 2016년 대통령 선거 민주당 잠정 득표 수.
##' \item votes_gop_2016. 2016년 대통령 선거 공화당 잠정 득표 수.
##' \item total_votes_2016. 2016년 대통령 선거 잠정 총 투표 수.
##' \item per_dem_2016. 민주당 대통령 득표율.
##' \item per_gop_2016. 공화당 대통령 득표율.
##' \item diff_2016. 민주당과 공화당 대통령 득표 차이.
##' \item votes_dem_2012. 2012년 대통령 선거 민주당 잠정 득표 수.
##' \item votes_gop_2012. 2012년 대통령 선거 공화당 잠정 득표 수.
##' \item total_votes_2012. 2012년 대통령 선거 잠정 총 투표 수.
##' \item per_dem_2012. 민주당 대통령 득표율.
##' \item per_gop_2012. 공화당 대통령 득표율.
##' \item diff_2012. 민주당과 공화당 대통령 득표 차이.
##' \item winner. 2016년 대통령 선거 당선자.
##' \item partywinner16. 2016년 대통령 선거 당선 정당.
##' \item winner12. 2012년 대통령 선거 당선자.
##' \item partywinner12. 2012년 대통령 선거 당선 정당.
##' \item fipped. 2012년에서 2016년 사이에 해당 지역의 정당이 바뀌었습니까?
##' }
##'
##' @docType data
##' @keywords datasets
##' @name county_data
##' @format 3195개 행과 13개 열이 있는 데이터 프레임입니다.
##' @source 미국 인구 조사국, 질병 통제 예방 센터
"county_data"


##' 미국 카운티 지도 파일
##'
##' 미국 카운티 지도 데이터
##'
##' \itemize{
##' \item long. 경도
##' \item lat. 위도
##' \item order. 순서
##' \item hole. 구멍 (참/거짓)
##' \item piece. 조각
##' \item group. 그룹
##' \item id. FIPS 코드
##' }
##'
##' @docType data
##' @keywords datasets
##' @name county_map
##' @format 191,372개 행과 7개 열이 있는 데이터 프레임입니다.
##' @source Eric Celeste
"county_map"



##' 미국 내 아편 관련 사망자 수, 1999-2014년
##'
##' CDC Wonder 데이터베이스의 미국 내 아편 관련 사망자 수에 대한 주별 데이터입니다.
##' 쿼리 세부 정보: 데이터 세트는 1999-2014년 복수 원인 사망입니다. 2006년 도시화;
##' 부검, 성별, 사망 장소, 주, 10세 연령 그룹 및 히스패닉계, 요일,
##' 연도/월은 모두 ALL로 설정됩니다. 표준 인구 2000년 미국 표준 인구.
##' 유아 연령 그룹을 제외한 2001-2009년의 기본 연간 인구.
##' 인구 10만 명당 비율.
##' MCD ICD-10 코드 선택: T40.0(아편), T40.1(헤로인), T40.2
##' (기타 아편유사제), T40.3(메타돈), T40.4(기타 합성 마약),
##' T40.6(기타 및 미지정 마약). UCD - ICD-10 코드 선택: X40-X44, X60-X64, X85, Y10-Y14.
##'
##' 변수는 다음과 같습니다.
##'
##' \itemize{
##' \item year. 연도
##' \item state. 주 이름.
##' \item fips. 주 FIPS 코드.
##' \item deaths. 아편 관련 사망자 수.
##' \item population. 인구.
##' \item crude. 조악 사망률.
##' \item adjusted. 조정 사망률.
##' \item adjusted.se. 조정 사망률의 표준 오차.
##' \item region. 인구 조사 지역. (순서형 요인으로 저장됨)
##' \item abbr. 약칭 주 이름.
##' \item division_name. 인구 조사국. (문자)
##' }
##'
##' @docType data
##' @keywords datasets
##' @name opiates
##' @format 800개 행과 10개 열이 있는 tibble입니다.
##' @source 질병 통제 예방 센터 CDC WONDER 데이터
"opiates"


##' 미국 로스쿨 등록 현황 1963-2015년
##'
##' 미국 로스쿨 연간 등록 현황.
##'
##' 변수는 다음과 같습니다.
##' \itemize{
##' \item  ay. 학년도. 문자.
##' \item  year. 연도. 정수.
##' \item  n_schools. 로스쿨 수. 정수.
##' \item  fy_enrollment. 1학년 등록자 수. 정수.
##' \item  fy_male. 1학년 남성 등록자 수. 정수.
##' \item  fy_female. 1학년 여성 등록자 수. 정수.
##' \item  jd_total. 총 JD 등록자 수. 정수.
##' \item  jd_male. 총 JD 남성 등록자 수. 정수.
##' \item  jd_female. 총 JD 여성 등록자 수. 정수.
##' \item  tot_enrolled. 총 등록자 수. 정수.
##' \item  jd_llb_awarded. JD/LLB 학위 수여 건수. 정수.
##' }
##'
##' @docType data
##' @keywords datasets
##' @name lawschools
##' @format 53개 행과 11개 열이 있는 tibble입니다.
##' @source 미국 변호사 협회
"lawschools"

##' OECD 기대 수명, 1960-2015년.
##'
##' 개별 국가의 기대 수명 데이터.
##'
##' 변수는 다음과 같습니다.
##' \itemize{
##' \item  country. 국가. (문자)
##' \item  year. 연도. (정수)
##' \item  lifeexp. 출생 시 기대 수명(연 단위).
##' \item  is_usa. 미국 또는 기타 국가 표시기.
##' }
##'
##' @docType data
##' @keywords datasets
##' @name oecd_le
##' @format 1,746개 행과 4개 열이 있는 tibble입니다.
##' @source OECD
"oecd_le"


##' OECD 기대 수명, 1960-2015년
##'
##' 기대 수명 데이터 요약표.
##'
##' 변수는 다음과 같습니다.
##' \itemize{
##' \item  year. 연도. (정수)
##' \item  other. 미국을 제외한 OECD 국가의 출생 시 기대 수명.
##' 연 단위로 측정됩니다.
##' \item usa. 미국의 출생 시 기대 수명. 연 단위로 측정됩니다.
##' \item  diff. 미국과 기타 국가 간의 차이.
##' \item hi_lo. 미국이 OECD 평균보다 높습니까, 낮습니까?
##' }
##'
##' @docType data
##' @keywords datasets
##' @name oecd_sum
##' @format 57개 행과 5개 열이 있는 tibble입니다.
##' @source OECD
"oecd_sum"


##' 미국 및 잉글랜드 & 웨일스의 월별 출생아 수
##'
##' 월별 출생아 수, 1933-2015년(미국) 및 1938-1991년(잉글랜드
##' & 웨일스)
##'
##' 변수는 다음과 같습니다.
##'
##' \itemize{
##' \item  date. 연도 및 월. (모든 관찰값에 대해 날짜는 임의로 01로 설정되며,
##' 데이터는 월별입니다.)
##' \item  month. 해당 연도의 월(1-12).
##' \item n_days. 특정 월/연도 날짜의 일 수.
##' \item births. 해당 월의 총 출생아 수.
##' \item  total_pop. 해당 월의 국가 인구 추정치.
##' \item country. 미국 또는 잉글랜드 & 웨일스.
##' }
##'
##' @docType data
##' @keywords datasets
##' @name boomer
##' @format 1,644개 행과 6개 열이 있는 tibble입니다.
##' @source 영국 통계청; 미국 인구 조사국.
"boomer"
