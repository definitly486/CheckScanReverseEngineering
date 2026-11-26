.class public abstract synthetic Lyads/uq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Integer;Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->deriveDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, p1

    return p0
.end method

.method public static final a(JLyads/g12;Landroid/util/DisplayMetrics;)I
    .locals 4

    .line 99
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_3

    const/16 p2, 0x1f

    shr-long p2, p0, p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x1

    cmp-long p2, p2, v2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, p0, v0

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0

    :cond_2
    :goto_0
    long-to-int p0, p0

    return p0

    .line 100
    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lyads/pq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    .line 102
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I
    .locals 8

    if-eqz p0, :cond_3

    .line 93
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x1f

    shr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, v0, v4

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int p0, v0

    .line 94
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 95
    :goto_2
    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Integer;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I
    .locals 8

    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x1f

    shr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, v0, v4

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int p0, v0

    .line 97
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 98
    :goto_2
    invoke-static {p0, p1, p2}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p0

    return p0
.end method

.method public static final a(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)I
    .locals 6

    iget-object v0, p0, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g12;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const/16 p2, 0x1f

    shr-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0

    :cond_2
    :goto_0
    long-to-int p0, p0

    return p0

    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    :cond_4
    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lyads/pq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final a(Lyads/h12;Landroid/util/DisplayMetrics;Lyads/fs2;)I
    .locals 6

    .line 106
    iget-object v0, p0, Lyads/h12;->a:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/g12;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    .line 107
    iget-object p0, p0, Lyads/h12;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const/16 p2, 0x1f

    shr-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    const/high16 p0, -0x80000000

    return p0

    :cond_2
    :goto_0
    long-to-int p0, p0

    return p0

    .line 108
    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_4
    iget-object p0, p0, Lyads/h12;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lyads/pq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    .line 110
    :cond_5
    iget-object p0, p0, Lyads/h12;->b:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0, p1}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I
    .locals 8

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p0, 0x1f

    shr-long v2, v0, p0

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_2

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p0, v0, v4

    if-lez p0, :cond_1

    const p0, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int p0, v0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0, p1}, Lyads/pq;->b(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    return p0
.end method
