data(mtcars)
data(iris)

one_sample = t.test(mtcars$mpg, mu=20)
print(one_sample)

two_sample = t.test(mpg~cyl, data = mtcars, subset = cyl %in% c(4,6))
print(two_sample)

paired = t.test(mtcars$mpg, mtcars$wt,data = mtcars, paired = TRUE)
print(paired)

anova = aov(mpg~hp,data=mtcars)
print(anova)

norm = shapiro.test(mtcars$wt)
print(norm)

arb_dist = ks.test(mtcars$disp,mtcars$gear)
print(arb_dist)

wilcx = wilcox.test(iris$Petal.Width, mu = 4)
print(wilcx)

krusk = kruskal.test(Petal.Length~Species, data=iris)
print(krusk)

flig_kill = fligner.test(Sepal.Width~Species, data=iris)
print(flig_kill)

ans_brad = ansari.test(iris$Petal.Length,iris$Petal.Width)
print(ans_brad)

x = 64
n = 100
p = 0.60

binom = binom.test(x,n,p=0.5)
print(binom)

one_prop = prop.test(x,n,p)
print(one_prop)