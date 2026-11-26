.class public abstract Lyads/y12;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JLyads/g12;Landroid/util/DisplayMetrics;)I
    .locals 4

    .line 226
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

    .line 227
    :cond_3
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return p0

    .line 228
    :cond_4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lyads/pq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    .line 229
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p3}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public static a(Lyads/w12;Landroid/util/DisplayMetrics;Lyads/ef2;Lyads/fs2;)Lyads/dn5;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Lyads/w12;->b:Lyads/as2;

    invoke-virtual {v3, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lyads/w12;->a:Lyads/as2;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    move-object/from16 v7, p2

    goto :goto_1

    :cond_0
    move-object v5, v6

    goto :goto_0

    :goto_1
    invoke-virtual {v7, v5}, Lyads/ef2;->a(Ljava/lang/String;)Lyads/cf2;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lyads/dn5;

    iget-object v8, v0, Lyads/w12;->c:Lyads/as2;

    invoke-virtual {v8, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/g12;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v6

    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v1}, Lyads/uq;->b(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_2
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    iget-object v9, v0, Lyads/w12;->g:Lyads/as2;

    invoke-virtual {v9, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    double-to-float v9, v9

    long-to-float v3, v3

    div-float/2addr v9, v3

    iget-object v3, v0, Lyads/w12;->e:Lyads/as2;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/tf1;

    goto :goto_3

    :cond_4
    move-object v3, v6

    :goto_3
    iget-object v4, v0, Lyads/w12;->f:Lyads/as2;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    const/16 v4, 0x1f

    shr-long v12, v10, v4

    const-wide/16 v14, 0x0

    cmp-long v4, v12, v14

    if-eqz v4, :cond_7

    const-wide/16 v16, -0x1

    cmp-long v4, v12, v16

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    cmp-long v4, v10, v14

    if-lez v4, :cond_6

    const v4, 0x7fffffff

    goto :goto_5

    :cond_6
    const/high16 v4, -0x80000000

    goto :goto_5

    :cond_7
    :goto_4
    long-to-int v4, v10

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_8
    invoke-static {v3, v6, v5}, Lyads/gf2;->a(Lyads/tf1;Ljava/lang/Integer;Lyads/cf2;)Landroid/graphics/Typeface;

    move-result-object v10

    iget-object v3, v0, Lyads/w12;->h:Lyads/nv1;

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    iget-object v3, v3, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v3, :cond_9

    invoke-static {v3, v1, v2}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v3

    int-to-float v3, v3

    move v11, v3

    goto :goto_6

    :cond_9
    move v11, v4

    :goto_6
    iget-object v3, v0, Lyads/w12;->h:Lyads/nv1;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lyads/nv1;->b:Lyads/ac1;

    if-eqz v3, :cond_a

    invoke-static {v3, v1, v2}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v1

    int-to-float v4, v1

    :cond_a
    move v12, v4

    iget-object v0, v0, Lyads/w12;->i:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-direct/range {v7 .. v13}, Lyads/dn5;-><init>(FFLandroid/graphics/Typeface;FFI)V

    return-object v7
.end method
