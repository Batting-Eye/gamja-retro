# 🥔 gamja-retro

하루를 마무리하며 오늘 한 일을 돌아보고 싶을 때 사용하세요.  
작업 내역을 공유하고 **감자**와 대화를 나누면 나만의 KPT 회고록이 완성됩니다.

> A daily retrospective skill powered by KPT framework. Share your tasks and chat with **Gamja** to create your own retrospective log.

---

## 설치 (Installation)

### 방법 1 — curl 원라이너 (권장)

```bash
curl -fsSL https://raw.githubusercontent.com/eyegnittab/gamja-retro/main/install.sh | bash
```

### 방법 2 — GitHub CLI

```bash
gh repo clone eyegnittab/gamja-retro
cd gamja-retro && bash install.sh
```

### 방법 3 — git clone

```bash
git clone https://github.com/eyegnittab/gamja-retro
cd gamja-retro && bash install.sh
```

설치 후 preferences.md를 열어 설정을 채워주세요:

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

## 사용법 (Usage)

Claude Code 또는 Codex에서:

```
/gamja
```

또는:

```
오늘 회고하자
```

---

## 모드 구성

```
설정 모드  →  수집 모드  →  대화 모드  →  작성 모드
(Settings)    (Fetch)       (Reflect)      (Log)
```

- **설정 모드**: 최초 실행 시 preferences 설정
- **수집 모드**: git log 자동 수집 또는 수동 입력
- **대화 모드**: KPT 기반 대화로 회고 재료 수집
- **작성 모드**: 회고록 작성 및 저장 (`/log` 또는 "정리해줘")

---

## 호환 플랫폼 (Compatibility)

| 플랫폼 | 지원 |
|---|---|
| Claude Code | ✅ |
| Codex CLI | ✅ |
| Cursor | ✅ |
| Claude.ai | ✅ (수동 수집) |
| ChatGPT | ✅ (수동 수집) |

---

## 라이선스 (License)

MIT © eyegnittab
