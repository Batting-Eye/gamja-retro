# 🥔 gamja-retro

하루를 마무리하며 오늘 한 일을 돌아보고 싶을 때 사용하세요.  
작업 내역을 공유하고 **감자**와 대화를 나누면 나만의 KPT 회고록이 완성됩니다.

> A daily retrospective skill powered by KPT framework. Share your tasks and chat with **Gamja** to create your own retrospective log.

---

## 동작 방식

감자는 4개의 모드로 순서대로 흘러갑니다.

```
설정 모드 (Settings)
  └─ 처음 실행 시 이름, 수집 방식, 저장 위치를 설정합니다.

수집 모드 (Fetch)
  └─ git log를 자동으로 가져오거나, 직접 오늘 한 일을 붙여넣습니다.

대화 모드 (Reflect)
  └─ 감자가 KPT 흐름으로 질문하면서 회고 재료를 함께 정리합니다.

작성 모드 (Log)
  └─ 대화 내용을 바탕으로 회고록을 작성하고 Notion / 파일 / 대화창에 저장합니다.
```

회고록 형식:

```
### 요약
오늘 하루를 한 줄로.

### [① 오늘 회고록]
01-01. 에피소드 소제목
본문...

### [② 오늘 한 업무]
- 작업 1
- 작업 2

### [③ 오늘 배운 점]
03-01. 인사이트 소제목
본문...
```

---

## 시작하기

감자를 호출하세요.

```
/gamja
오늘 회고하자
오늘 회고록 써줘
```

처음 실행하면 설정 모드가 시작됩니다. 설정이 완료되면 업데이트된 SKILL.md 파일을 다운받아 덮어쓰세요. 그 다음부터는 바로 수집 모드로 진입합니다.

---

## 설치

### 방법 1 — curl 원라이너 (권장)

```bash
curl -fsSL https://raw.githubusercontent.com/Batting-Eye/gamja-retro/main/install.sh | bash
```

### 방법 2 — git clone

```bash
git clone https://github.com/Batting-Eye/gamja-retro
cd gamja-retro && bash install.sh
```

설치 후 `/gamja`를 입력해 설정 모드를 시작하세요.  
설정이 완료되면 감자가 업데이트된 `SKILL.md`를 다운로드로 제공합니다.  
해당 파일을 `~/.claude/skills/gamja-retro/SKILL.md`에 덮어쓰면 설정이 영구 저장됩니다.

---

## 라이선스

MIT © Batting-Eye
