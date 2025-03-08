#import "../lib.typ": *
#set heading(numbering: "1.1")

#outline()

= Heading 1

#suboutline()

== Heading 1.1

#suboutline()

#lorem(20)

=== Heading 1.1.1

#lorem(30)

== Heading 1.2

#lorem(10)

= Heading 2

#suboutline(target: figure.where(kind: image))

#figure(
  circle(radius: 1cm),
  caption: lorem(5),
)
