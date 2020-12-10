h1 = { first: "Joe",
       last: "Leo",
       suffix: "III" }
h2 = { suffix: "Jr." }
h1.update(h2)
p h1

g1 = { first: "Joe",
        last: "Leo",
        suffix: "III" }
g2 = { suffix: "Jr." }
g3 = g1.merge(g2)
p g3
