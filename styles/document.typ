#set document(title: [$title$], author: ($for(author)$"$author$",$endfor$))
#set page(paper: "$papersize$", margin: 20mm, numbering: "1", number-align: center)
#set text(font: "Liberation Serif", size: 14pt, lang: "ru", region: "RU")
#set par(justify: true, first-line-indent: 10mm, leading: 0.55em, spacing: 0.55em)

#set heading(numbering: "1.1.")
#show heading: set align(center)
#show heading: set text(weight: "bold")
#show heading: set block(above: 1.1em, below: 0.75em)
#show heading.where(level: 1): set text(size: 15pt)
#show heading.where(level: 2): set text(size: 14pt)
#set math.equation(numbering: "(1)", number-align: right)

#set table(inset: (x: 6pt, y: 5pt), stroke: (bottom: 0.4pt + luma(190)))
#show table.cell: set text(size: 11pt)
#show table.cell: set par(justify: false, first-line-indent: 0pt, leading: 0.4em)
#show figure.caption: set text(size: 13pt)
#show figure.caption: set par(justify: false, first-line-indent: 0pt)
#show figure.where(kind: image): set figure(supplement: [Рисунок])
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: table): it => {
  show figure.caption: set align(right)
  it
}

#let horizontalrule = line(length: 50%, stroke: 0.5pt)
$if(highlighting-definitions)$
$highlighting-definitions$
$endif$

#align(center)[
  #set par(justify: false, first-line-indent: 0pt)
  #block(width: 92%, above: 14pt, below: 10pt)[
    #text(size: 20pt, weight: "bold")[$title$]
  ]
  $for(author)$
  $author$$sep$ #linebreak()
  $endfor$
]

$if(toc)$
#v(12pt)
#outline(title: [Оглавление], depth: $toc-depth$)
$endif$

$body$
