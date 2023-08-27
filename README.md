## SRV-028
- 원격터미널 접속 타임아웃 설정 여부 점검

## 보안 위협
- 접속 타임아웃 값이 설정되지 않은 경우 유휴 시간 내 비인가자의 시스템 접근으로 인해 불필요한 내부 정보의 노출 위험이 존재함

## 판단 기준
- 세션 타임아웃 값이 900초 이하(15분)로 설정 되어 있을 경우 


## batch 파일 실행하여 진단 결과 확인
> ![0](https://github.com/hanmin0512/batch_SRV-028/assets/37041208/15876262-93d3-4712-a5ba-ce0062bf8289)
- 검사결과 세션 타임아웃 미설정 으로 취약점 발견.

## 대처 방안
- 시작> 실행> GPEDIT.MSC> Computer Configuration> administrative Templates> Windows Components> Remote Desktop Services> Remote Desktop Session Host> Session Time Limits 에서
-  Set time limit for disconnected sessions 더블클릭하여 enable체크, 15분 설정
> 
