.class public final Ltn1;
.super Lwf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwf4<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Lvf4;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltn1;->m(Lvf4;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lvf4;F)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf4<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    iget-object v0, p1, Lvf4;->b:Ljava/lang/Object;

    iget-object v1, p1, Lvf4;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lvf4;->c:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lld0;->e:Lby4;

    if-eqz v2, :cond_0

    iget-object v0, p1, Lvf4;->h:Ljava/lang/Float;

    if-eqz v0, :cond_0

    iget v3, p1, Lvf4;->g:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Integer;

    iget-object v0, p1, Lvf4;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0}, Lld0;->e()F

    move-result v8

    iget v9, p0, Lld0;->d:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lby4;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    move v7, p2

    :cond_1
    const/4 p0, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {v7, p0, p2}, Lhb5;->b(FFF)F

    move-result p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Lvf4;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p2, p1}, Ldh5;->c(FII)I

    move-result p0

    return p0

    :cond_2
    const-string p0, "Missing values for keyframe."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
