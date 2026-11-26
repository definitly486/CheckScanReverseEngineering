.class public final Ln86;
.super Lrq;
.source "SourceFile"


# virtual methods
.method public final c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 7

    invoke-super {p0, p1, p2}, Lrq;->c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lka1;->i:Landroid/graphics/RectF;

    iget v3, p0, Lrq;->p:F

    iget v4, p0, Lrq;->q:F

    const/4 v5, 0x1

    iget-object v6, p0, Lka1;->l:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return v0
.end method
