# 🥔 gamja-retro

하루를 마무리하며 오늘 한 일을 돌아보고 싶을 때 사용하세요.  
작업 내역을 공유하고 **감자**와 대화를 나누면 나만의 KPT 회고록이 완성됩니다.

> A daily retrospective skill powered by KPT framework. Share your tasks and chat with **Gamja** to create your own retrospective log.

---

## 어떻게 동작해?

감자는 4개의 모드로 순서대로 흘러가.

```
설정 모드 (Settings)
  └─ 처음 실행 시 이름, 언어, 수집 방식, 저장 위치를 설정해
  
수집 모드 (Fetch)
  └─ git log를 자동으로 긁어오거나, 직접 오늘 한 일을 붙여넣어
  
대화 모드 (Reflect)
  └─ 감자가 KPT 흐름으로 질문하면서 회고 재료를 같이 캐내
  
작성 모드 (Log)
  └─ 대화 내용을 바탕으로 회고록을 작성하고 Notion / 파일 / 대화창에 저장해
```

회고록은 이렇게 생겼어:

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

Claude에서 아무렇게나 불러:

```
/gamja
오늘 회고하자
오늘 회고록 써줘
```

처음 실행하면 설정 모드가 시작돼. 한 번만 설정하면 그 다음부터는 바로 수집 모드로 진입해.

---

## 설치 (Installation)

### 방법 1 — curl 원라이너 (권장)

```bash
curl -fsSL https://raw.githubusercontent.com/Batting-Eye/gamja-retro/main/install.sh | bash
```

### 방법 2 — git clone

```bash
git clone https://github.com/Batting-Eye/gamja-retro
cd gamja-retro && bash install.sh
```

설치 후 preferences.md를 열어 설정을 채워줘:

```bash
open ~/.claude/skills/gamja-retro/references/preferences.md
```

---

## 설정 (preferences.md)

```yaml
user:
  username: # 이름
  language: ko # ko / en

fetch:
  source: git    # git / manual
  range: today   # today / yesterday / custom

output:
  destination: chat  # notion / file / chat
  destination_url:   # notion일 때 페이지 URL

etc: |
  # 추가 요구사항 (말투, 섹션 구성 등)
```

---

## 호환 플랫폼

| 플랫폼 | 지원 |
|---|---|
| Claude.ai | ✅ |
| Claude Code | ✅ |
| Cursor | ✅ |

---

## 라이선스

MIT © Batting-Eye
