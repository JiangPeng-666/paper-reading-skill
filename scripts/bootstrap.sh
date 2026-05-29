#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VENV_DIR="${ROOT_DIR}/.venv-paper-reading"

python3 -m venv "${VENV_DIR}" || true
source "${VENV_DIR}/bin/activate"

python -m pip install --upgrade pip
python -m pip install -r "${ROOT_DIR}/requirements.txt" -i https://pypi.tuna.tsinghua.edu.cn/simple

echo "Bootstrap complete."
echo "Activate with: source ${VENV_DIR}/bin/activate"
