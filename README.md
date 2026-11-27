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
| [`styles/document.typ`](styles/document.typ) | Шрифт, поля, заголовки, таблицы и оглавление PDF |
| [`styles/gost-r-7-0-5-2008-numeric-iaa.csl`](styles/gost-r-7-0-5-2008-numeric-iaa.csl) | Нумерация ссылок и оформление библиографии |
| [`document.yaml`](document.yaml) | Порядок глав и параметры Pandoc |
| [`Makefile`](Makefile) | Цели сборки и очистки PDF |

Оформление PDF основано на [шаблоне учебного пособия `kisscm`](https://github.com/true-grue/kisscm/blob/main/template.docx). Стиль библиографии Максима Юркина и Дмитрия Павлова взят из [репозитория `kisscm`](https://github.com/true-grue/kisscm/blob/main/gost-r-7-0-5-2008-numeric-iaa.csl) и распространяется по [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/).

Шрифт [Liberation Serif](https://github.com/liberationfonts/liberation-fonts/releases/tag/2.1.5) поставляется со сборкой под [SIL Open Font License 1.1](styles/fonts/LICENSE). Его метрики совместимы с Times New Roman из шаблона Word.
