#!/bin/bash

IMAGE_NAME=${1:-"bkimminich/juice-shop"}

mkdir -p reports/trivy

echo "[*] Running Trivy scan on $IMAGE_NAME"

trivy image \
  --severity HIGH,CRITICAL \
  --format table \
  "$IMAGE_NAME" | tee reports/trivy/trivy-report.txt
