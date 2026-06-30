```bash
cd $PROJECT_DIR
uv python install 3.13 && uv python pin 3.13
uv init
```

jupyterインストール

```bash
uv add --dev jupyterlab ipykernel
```