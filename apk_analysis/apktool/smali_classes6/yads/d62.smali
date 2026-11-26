.class public abstract Lyads/d62;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lyads/xu5;Lyads/tf1;)Lj59;
    .locals 1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 179
    sget-object p1, Lyads/hf2;->d:Lyads/hf2;

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_1
    sget-object p1, Lyads/hf2;->b:Lyads/hf2;

    goto :goto_0

    .line 181
    :cond_2
    sget-object p1, Lyads/hf2;->c:Lyads/hf2;

    goto :goto_0

    .line 182
    :cond_3
    sget-object p1, Lyads/hf2;->e:Lyads/hf2;

    .line 183
    :goto_0
    invoke-virtual {p0, p1}, Lyads/xu5;->setInactiveTypefaceType(Lyads/hf2;)V

    .line 184
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/yc1;Lyads/xu5;Lyads/fs2;Landroid/util/DisplayMetrics;Ljava/lang/Object;)Lj59;
    .locals 3

    .line 158
    iget-object p4, p0, Lyads/yc1;->e:Lyads/as2;

    if-nez p4, :cond_1

    iget-object v0, p0, Lyads/yc1;->b:Lyads/as2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object p4, p0, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {p4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    .line 160
    invoke-static {p4, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p4

    .line 161
    iget-object v0, p0, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 162
    invoke-static {v0, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 163
    iget-object v1, p0, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 164
    invoke-static {v1, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v1

    .line 165
    iget-object p0, p0, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 166
    invoke-static {p0, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    .line 167
    invoke-virtual {p1, p4, v0, v1, p0}, Lyads/xu5;->setTabPadding(IIII)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 168
    invoke-virtual {p4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    goto :goto_1

    :cond_2
    move-object p4, v0

    .line 169
    :goto_1
    invoke-static {p4, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p4

    .line 170
    iget-object v1, p0, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {v1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 171
    invoke-static {v1, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v1

    .line 172
    iget-object v2, p0, Lyads/yc1;->b:Lyads/as2;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 173
    :cond_3
    invoke-static {v0, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v0

    .line 174
    iget-object p0, p0, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p0, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 175
    invoke-static {p0, p3}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    .line 176
    invoke-virtual {p1, p4, v1, v0, p0}, Lyads/xu5;->setTabPadding(IIII)V

    .line 177
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/xu5;Lyads/x52;Lyads/fs2;Lyads/hs2;)V
    .locals 12

    iget-object v1, p1, Lyads/x52;->j:Lyads/as2;

    iget-object v2, p1, Lyads/x52;->k:Lyads/as2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    move-object v10, v5

    move-object v11, v6

    move-object v5, v0

    iget-object v6, p1, Lyads/x52;->r:Lyads/as2;

    iget-object v7, p1, Lyads/x52;->j:Lyads/as2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lyads/kw5;->b(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    iget-object v6, p1, Lyads/x52;->s:Lyads/as2;

    iget-object v7, p1, Lyads/x52;->k:Lyads/as2;

    invoke-static/range {v5 .. v11}, Lyads/kw5;->c(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    iget-object p0, p1, Lyads/x52;->t:Lyads/yc1;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    new-instance p3, Lbt9;

    invoke-direct {p3, p0, v5, v10, p2}, Lbt9;-><init>(Lyads/yc1;Lyads/xu5;Lyads/fs2;Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lyads/yc1;->f:Lyads/as2;

    invoke-virtual {p2, v10, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    invoke-interface {v11, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p2, p0, Lyads/yc1;->a:Lyads/as2;

    invoke-virtual {p2, v10, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    invoke-interface {v11, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p2, p0, Lyads/yc1;->e:Lyads/as2;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lyads/yc1;->b:Lyads/as2;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lyads/yc1;->c:Lyads/as2;

    invoke-virtual {p2, v10, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    invoke-interface {v11, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, p0, Lyads/yc1;->d:Lyads/as2;

    invoke-virtual {p0, v10, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {v11, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2, v10, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    invoke-interface {v11, p2}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, p0, Lyads/yc1;->b:Lyads/as2;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v10, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v0

    :goto_2
    invoke-interface {v11, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_3
    invoke-virtual {p3, v0}, Lbt9;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lyads/x52;->o:Lyads/as2;

    if-nez p0, :cond_4

    iget-object p0, p1, Lyads/x52;->l:Lyads/as2;

    :cond_4
    new-instance p2, Lct9;

    invoke-direct {p2, v5}, Lct9;-><init>(Lyads/xu5;)V

    invoke-virtual {p0, v10, p2}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {v11, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p0, p1, Lyads/x52;->c:Lyads/as2;

    if-nez p0, :cond_5

    iget-object p0, p1, Lyads/x52;->l:Lyads/as2;

    :cond_5
    new-instance p1, Lw0;

    const/4 p2, 0x3

    invoke-direct {p1, v5, p2}, Lw0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v10, p1}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    invoke-interface {v11, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static final b(Lyads/xu5;Lyads/tf1;)Lj59;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object p1, Lyads/hf2;->d:Lyads/hf2;

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p1, Lyads/hf2;->b:Lyads/hf2;

    goto :goto_0

    :cond_2
    sget-object p1, Lyads/hf2;->c:Lyads/hf2;

    goto :goto_0

    :cond_3
    sget-object p1, Lyads/hf2;->e:Lyads/hf2;

    :goto_0
    invoke-virtual {p0, p1}, Lyads/xu5;->setActiveTypefaceType(Lyads/hf2;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
