# Мониторинг информационных баз 1С с VictoriaMetrics и Grafana

**Автор статьи** — Юрий Квашнин ([`igniy`](https://github.com/igniy)).

Техническая документация по системе мониторинга информационных баз 1С. Описывает сбор и хранение метрик, панели Grafana, правила оповещений и диагностику устаревших данных.

**[Скачать статью в PDF](https://github.com/igniy/onec-monitoring-docs/releases/latest/download/onec-monitoring.pdf)**

## Сборка

Установите GNU Make, [Pandoc 3.8.3](https://github.com/jgm/pandoc/releases/tag/3.8.3) и [Typst 0.14.2](https://github.com/typst/typst/releases/tag/v0.14.2). Все три команды должны быть доступны через `PATH`. Выполните команду в корне репозитория.

```sh
make pdf
```

Если в Windows GNU Make установлен как `mingw32-make`, выполните `mingw32-make pdf`.

Результат появится в `onec-monitoring.pdf`. Сборка документа работает отдельно от системы мониторинга. Workflow GitHub Actions выполняет ту же команду и прикладывает PDF к результату запуска.

## Исходники

| Путь | Содержимое |
| --- | --- |
| [`chapters/`](chapters/) | Главы статьи в Markdown |
| [`figures/`](figures/) | Схемы архитектуры и состояний оповещения |
| [`references.bib`](references.bib) | Библиография |
| [`document.yaml`](document.yaml) | Порядок глав и параметры Pandoc |
| [`Makefile`](Makefile) | Цели сборки и очистки PDF |
