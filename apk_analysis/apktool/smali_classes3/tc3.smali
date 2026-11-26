.class public final Ltc3;
.super Lwf4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwf4<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public final g(Lvf4;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ltc3;->n(Lvf4;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final m()F
    .locals 2

    invoke-virtual {p0}, Lld0;->b()Lvf4;

    move-result-object v0

    invoke-virtual {p0}, Lld0;->d()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltc3;->n(Lvf4;F)F

    move-result p0

    return p0
.end method

.method public final n(Lvf4;F)F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf4<",
            "Ljava/lang/Float;",
            ">;F)F"
        }
    .end annotation

    iget-object v0, p1, Lvf4;->b:Ljava/lang/Object;

    iget-object v1, p1, Lvf4;->b:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lvf4;->c:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lld0;->e:Lby4;

    if-eqz v2, :cond_0

    iget v3, p1, Lvf4;->g:F

    iget-object v0, p1, Lvf4;->h:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Float;

    iget-object v0, p1, Lvf4;->c:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {p0}, Lld0;->e()F

    move-result v8

    iget v9, p0, Lld0;->d:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lby4;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    move v7, p2

    :cond_1
    iget p0, p1, Lvf4;->i:F

    const p2, -0x358c9d09

    cmpl-float v0, p0, p2

    if-nez v0, :cond_2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, p1, Lvf4;->i:F

    :cond_2
    iget v0, p1, Lvf4;->j:F

    cmpl-float p2, v0, p2

    if-nez p2, :cond_3

    iget-object p2, p1, Lvf4;->c:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lvf4;->j:F

    :cond_3
    invoke-static {p0, v0, v7}, Lhb5;->f(FFF)F

    move-result p0

    return p0

    :cond_4
    const-string p0, "Missing values for keyframe."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
