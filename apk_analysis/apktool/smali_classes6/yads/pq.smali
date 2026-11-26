.class public abstract Lyads/pq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F
    .locals 1

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Integer;Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 82
    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I
    .locals 0

    .line 83
    invoke-static {p0, p1, p2}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public static final a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I
    .locals 2

    iget-object v0, p0, Lyads/ac1;->a:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g12;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lyads/ac1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    double-to-int p0, p0

    return p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lyads/ac1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lyads/ac1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method

.method public static final a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I
    .locals 0

    .line 73
    invoke-static {p0, p1, p2}, Lyads/uq;->a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/view/View;)Lyads/tt;
    .locals 2

    .line 96
    instance-of v0, p0, Lyads/wh1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lyads/wh1;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lyads/wh1;->c()Lyads/tt;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final a(Landroid/view/View;Lyads/f11;Lyads/h11;)V
    .locals 1

    .line 85
    invoke-static {p1, p2}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result p1

    invoke-static {p0, p1}, Lyads/tq;->a(Landroid/view/View;I)V

    .line 86
    sget-object p1, Lyads/h11;->h:Lyads/h11;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Lyads/ro1;

    if-eqz v0, :cond_1

    check-cast p2, Lyads/ro1;

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 88
    :cond_2
    iget-boolean v0, p2, Lyads/ro1;->b:Z

    if-eq v0, p1, :cond_3

    .line 89
    iput-boolean p1, p2, Lyads/ro1;->b:Z

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final a(Landroid/view/View;Lyads/sg3;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    sget-object p0, Lyads/sg3;->d:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 95
    invoke-static {p0}, Lyads/o01;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V
    .locals 2

    .line 74
    iget-object v0, p1, Lyads/tt;->a:Lyads/vq0;

    .line 75
    iget-object v0, v0, Lyads/vq0;->n:Lyads/nq0;

    .line 76
    iget-object v0, v0, Lyads/nq0;->G:Lcl4;

    .line 77
    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/bt0;

    if-eqz p3, :cond_1

    .line 78
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object p2, p0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p2, :cond_2

    .line 79
    invoke-static {p2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    goto :goto_0

    .line 80
    :goto_2
    invoke-virtual/range {p0 .. p11}, Lyads/bt0;->a(Lyads/tt;Landroid/view/View;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    return-void
.end method

.method public static final a(Lyads/j71;Lyads/fs2;Lnl3;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lyads/j71;->a:Lyads/as2;

    invoke-virtual {v0, p1, p2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    .line 98
    iget-object v0, p0, Lyads/j71;->a:Lyads/as2;

    invoke-virtual {v0, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 99
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 100
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 101
    invoke-static {p0, v3, v2, p1}, Lyads/f71;->a(Lyads/j71;Ljava/lang/Object;ILyads/fs2;)Lyads/fs2;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_1
    :goto_1
    iget-object p0, p0, Lyads/j71;->c:Ljava/util/List;

    .line 103
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/i71;

    .line 104
    iget-object v0, v0, Lyads/i71;->c:Lyads/as2;

    invoke-virtual {v0, p1, p2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static final b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F
    .locals 1

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)F
    .locals 3

    .line 59
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lme0;->e()V

    return v0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 61
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :cond_3
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F
    .locals 2

    iget-object v0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/g12;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    long-to-float p0, v0

    return p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p1}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lyads/uq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method
