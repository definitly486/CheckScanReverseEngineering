.class public abstract Lyads/kw5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/widget/TextView;I)Lj59;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    move-object p4, p5

    move-object p5, p6

    .line 205
    invoke-static/range {p0 .. p5}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V

    .line 206
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lorg/json/JSONObject;)Lj59;
    .locals 8

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/tf1;

    goto :goto_0

    :cond_0
    move-object p1, p5

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p2, 0x1f

    shr-long v2, v0, p2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_3

    const-wide/16 v6, -0x1

    cmp-long p2, v2, v6

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    cmp-long p2, v0, v4

    if-lez p2, :cond_2

    const p2, 0x7fffffff

    goto :goto_2

    :cond_2
    const/high16 p2, -0x80000000

    goto :goto_2

    :cond_3
    :goto_1
    long-to-int p2, v0

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3

    :cond_4
    move-object p2, p5

    :goto_3
    if-eqz p3, :cond_5

    invoke-virtual {p3, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    move-object p3, p5

    :goto_4
    if-nez p1, :cond_7

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    const/4 p4, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 p4, 0x1

    :goto_6
    invoke-static {p1, p2}, Lyads/gf2;->a(Lyads/tf1;Ljava/lang/Integer;)I

    move-result p1

    const-string p2, "wght"

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_9
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object p1

    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    instance-of v0, p5, Ljava/lang/Number;

    if-eqz v0, :cond_a

    check-cast p5, Ljava/lang/Number;

    invoke-static {p4, p5}, Lyads/kw5;->a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-static {p1}, Lu96;->d(Lar4;)Lar4;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p5

    goto :goto_9

    :cond_c
    :goto_8
    if-eqz p4, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lyads/kw5;->a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p5

    :cond_d
    :goto_9
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 1

    .line 182
    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/g12;

    .line 183
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, p4, :cond_1

    if-ne p2, v0, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    move p4, v0

    .line 185
    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    long-to-float p1, p1

    invoke-virtual {p0, p4, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V
    .locals 9

    .line 200
    invoke-static {p1}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v1, Le1a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Le1a;-><init>(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V

    if-eqz v3, :cond_1

    .line 202
    move-object p0, v2

    check-cast p0, Lyads/hs2;

    invoke-virtual {v3, v8, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 203
    move-object p0, v2

    check-cast p0, Lyads/hs2;

    invoke-virtual {v4, v8, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_2
    if-eqz v5, :cond_3

    .line 204
    move-object p0, v2

    check-cast p0, Lyads/hs2;

    invoke-virtual {v5, v8, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V
    .locals 2

    .line 173
    invoke-static {p1, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2, p4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {p2, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/g12;

    .line 175
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    const/4 v0, 0x2

    if-eq p3, p4, :cond_2

    if-ne p3, v0, :cond_1

    const/4 p4, 0x0

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    move p4, v0

    .line 177
    :cond_3
    :goto_0
    invoke-virtual {p1, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-float p3, v0

    invoke-virtual {p0, p4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 178
    instance-of p3, p1, Lyads/xr2;

    if-eqz p3, :cond_4

    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_4

    :goto_1
    return-void

    .line 179
    :cond_4
    new-instance p3, Ld1a;

    invoke-direct {p3, p0, p1, p2, p5}, Ld1a;-><init>(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    .line 180
    invoke-virtual {p1, p5, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {p6, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 181
    invoke-virtual {p2, p5, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {p6, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p4, p1}, Lyads/ef2;->a(Ljava/lang/String;)Lyads/cf2;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {p2, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/tf1;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    if-eqz p3, :cond_5

    .line 196
    invoke-virtual {p3, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    const/16 p5, 0x1f

    shr-long v0, p3, p5

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-eqz p5, :cond_4

    const-wide/16 v4, -0x1

    cmp-long p5, v0, v4

    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    cmp-long p3, p3, v2

    if-lez p3, :cond_3

    const p3, 0x7fffffff

    goto :goto_3

    :cond_3
    const/high16 p3, -0x80000000

    goto :goto_3

    :cond_4
    :goto_2
    long-to-int p3, p3

    .line 197
    :goto_3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 198
    :cond_5
    invoke-static {p2, v0, p1}, Lyads/gf2;->a(Lyads/tf1;Ljava/lang/Integer;Lyads/cf2;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    invoke-static {}, Lyads/kw5;->a()Z

    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;)V
    .locals 8

    .line 207
    invoke-static {}, Lyads/kw5;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    move-object v0, p0

    check-cast v0, Lyads/hs2;

    if-eqz p3, :cond_1

    .line 209
    new-instance v1, Lps9;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lps9;-><init>(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lyads/fs2;I)V

    invoke-virtual {v5, v6, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 210
    :goto_0
    invoke-interface {v0, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;)V
    .locals 2

    .line 187
    invoke-static {p1, p2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    instance-of p2, p1, Lyads/xr2;

    if-eqz p2, :cond_1

    :goto_0
    return-void

    .line 190
    :cond_1
    move-object p2, p0

    check-cast p2, Lyads/hs2;

    .line 191
    new-instance v0, Lmr2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lmr2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 192
    invoke-interface {p2, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public static final b(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 2

    .line 72
    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 73
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V
    .locals 6

    invoke-static {p1, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2, p4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p3

    double-to-float p3, p3

    invoke-virtual {p2, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    div-float/2addr p3, p4

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setLetterSpacing(F)V

    instance-of p3, p1, Lyads/xr2;

    if-eqz p3, :cond_1

    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lc1a;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lc1a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lyads/fs2;I)V

    invoke-virtual {v3, v4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {p6, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    invoke-virtual {v2, v4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {p6, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static final c(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 2

    .line 91
    move-object p4, p0

    check-cast p4, Lyads/ox2;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/g12;

    .line 93
    invoke-static {p1, p0, p2}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 94
    :goto_0
    invoke-interface {p4, p0}, Lyads/ox2;->setFixedLineHeight(I)V

    .line 95
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final c(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V
    .locals 6

    invoke-static {p1, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p2, p4}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, p0

    check-cast p3, Lyads/ox2;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/g12;

    invoke-static {p4, v0, v1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lyads/g12;)I

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, -0x1

    :goto_0
    invoke-interface {p3, p4}, Lyads/ox2;->setFixedLineHeight(I)V

    if-eqz p1, :cond_3

    instance-of p3, p1, Lyads/xr2;

    if-eqz p3, :cond_2

    instance-of p3, p2, Lyads/xr2;

    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance v0, Lkp9;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lkp9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {p6, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    invoke-virtual {v3, v4, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {p6, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_3
    :goto_1
    return-void
.end method
