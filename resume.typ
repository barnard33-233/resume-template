#import "template.typ": *

#set page(paper: "a4")
#set par(justify: true)
#set text(font: (font.serif, font.cjk))
#show heading: set text(theme-color, 1.1em)
#show heading.where(level: 2): it => stack(
    v(0.3em),
    it,
    v(0.6em),
    line(length: 100%, stroke: 0.1em + theme-color),
    v(0.1em),
)
#show link: set text(fill: theme-color)

= name

== introduction
#set par(leading: 2em)


#grid(
    columns: (1fr, 1fr, 2cm, 1cm), // TODO: 
    align(left)[
        - 姓名: 张三
        - 生日: 2002年3月2日
        - 学校: 珞珈山职业技术学校
        - 专业: 狐狸的产后护理
    ],
    align(left)[
        - 住址: your address
        - 邮箱: #link("example@whu.edu.cn")
        - 电话: your number
        - Github: #link("https://github.com/barnard33-233", "barnard33-233")
    ],
    image("./assets/your-photo.png", width: 2.5cm),
)

== 学习情况

#set par(leading: 0.65em)

=== 技能

#sidebar(withLine: false, sideWidth: 10%)[
    *1*

    *2*
][
    1 content

    2 content
]

=== 项目

#item(
    link("https://github.com/barnard33-233/Orange-S", [Orange-S]),
    [*课程项目*],
)

desc
- desc1
- desc2

=== 其他

#sidebar(withLine: false, sideWidth: 10%)[
    *1*

    *2*
][
    1 content

    2 content
]

== score

== introduction
#set par(leading: 0.65em)

content

== future plan
#set par(leading: 0.65em)

content