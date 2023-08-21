@echo off
setlocal enabledelayedexpansion
cd charts/%1
helm dependency update .
cd ..\..
helm package charts/%1 -d docs/
helm repo index .\docs\ --url https://nickmman.github.io/opensearch-helm-charts
