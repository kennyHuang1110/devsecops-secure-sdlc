# Secure SDLC DevSecOps Pipeline

本專案建立一套 Secure SDLC 與 DevSecOps Pipeline 範例，整合 SAST、DAST、Container Security 與 Security Gate，模擬企業在 CI/CD 流程中導入安全檢測的方式。

---

## Project Goal

本專案目標：

- 建立 Secure SDLC Pipeline
- 整合 Fortify SAST
- 整合 Acunetix DAST
- 整合 Trivy Container Scan
- 使用 GitHub Actions 自動化安全檢測
- 建立 Security Gate
- 產出安全掃描報告

---

## Security Workflow

```text
Developer Commit
        ↓
GitHub Actions
        ↓
Fortify SAST Scan
        ↓
Trivy Container Scan
        ↓
Build Docker Image
        ↓
Deploy Test Target
        ↓
Acunetix DAST Scan
        ↓
Generate Reports
        ↓
Security Gate
