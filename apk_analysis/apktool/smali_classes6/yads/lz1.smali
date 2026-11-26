.class public final Lyads/lz1;
.super Lyads/oh2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/v41;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    return-void
.end method

.method public static final a(Lyads/lz1;Lyads/wz1;Lyads/jz1;Lyads/fs2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    if-nez p2, :cond_0

    const/high16 p2, 0x14000000

    .line 163
    invoke-virtual {p1, p2}, Lyads/ri5;->setDividerColor(I)V

    .line 164
    invoke-virtual {p1, p0}, Lyads/ri5;->setHorizontal(Z)V

    goto :goto_1

    .line 165
    :cond_0
    iget-object p4, p2, Lyads/jz1;->a:Lyads/as2;

    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p1, p4}, Lyads/ri5;->setDividerColor(I)V

    .line 166
    iget-object p2, p2, Lyads/jz1;->b:Lyads/as2;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/iz1;

    .line 167
    sget-object p3, Lyads/iz1;->f:Lyads/iz1;

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lyads/ri5;->setHorizontal(Z)V

    .line 168
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 13

    .line 145
    move-object v0, p1

    check-cast v0, Lyads/wz1;

    move-object/from16 p1, p3

    check-cast p1, Lyads/kz1;

    move-object/from16 v12, p4

    check-cast v12, Lyads/kz1;

    .line 146
    iget-object v2, p1, Lyads/kz1;->b:Lyads/xr0;

    .line 147
    iget-object v3, p1, Lyads/kz1;->d:Ljava/util/List;

    .line 148
    iget-object v4, p1, Lyads/kz1;->x:Ljava/util/List;

    .line 149
    iget-object v5, p1, Lyads/kz1;->o:Ljava/util/List;

    .line 150
    iget-object v6, p1, Lyads/kz1;->u:Ljava/util/List;

    .line 151
    iget-object v7, p1, Lyads/kz1;->t:Ljava/util/List;

    .line 152
    iget-object v8, p1, Lyads/kz1;->B:Ljava/util/List;

    .line 153
    iget-object v9, p1, Lyads/kz1;->A:Ljava/util/List;

    .line 154
    iget-object v10, p1, Lyads/kz1;->c:Lyads/k11;

    .line 155
    iget-object v11, p1, Lyads/kz1;->k:Lyads/as2;

    move-object v1, p2

    .line 156
    invoke-static/range {v0 .. v11}, Lyads/pq;->a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    .line 157
    iget-object p1, p1, Lyads/kz1;->m:Lyads/jz1;

    if-eqz v12, :cond_0

    iget-object v1, v12, Lyads/kz1;->m:Lyads/jz1;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    :goto_0
    iget-object v2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 159
    invoke-virtual {p0, v0, p1, v1, v2}, Lyads/lz1;->a(Lyads/wz1;Lyads/jz1;Lyads/jz1;Lyads/fs2;)V

    .line 160
    sget p0, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_separator_delimiter_height:I

    invoke-virtual {v0, p0}, Lyads/ri5;->setDividerHeightResource(I)V

    const/16 p0, 0x11

    .line 161
    invoke-virtual {v0, p0}, Lyads/ri5;->setDividerGravity(I)V

    return-void
.end method

.method public final a(Lyads/wz1;Lyads/jz1;Lyads/jz1;Lyads/fs2;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lyads/jz1;->a:Lyads/as2;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p3, Lyads/jz1;->a:Lyads/as2;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static {v1, v2}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    iget-object v1, p2, Lyads/jz1;->b:Lyads/as2;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    if-eqz p3, :cond_3

    iget-object p3, p3, Lyads/jz1;->b:Lyads/as2;

    goto :goto_3

    :cond_3
    move-object p3, v0

    :goto_3
    invoke-static {v1, p3}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_8

    :cond_4
    const/4 p3, 0x1

    if-nez p2, :cond_5

    const/high16 v1, 0x14000000

    invoke-virtual {p1, v1}, Lyads/ri5;->setDividerColor(I)V

    invoke-virtual {p1, p3}, Lyads/ri5;->setHorizontal(Z)V

    goto :goto_5

    :cond_5
    iget-object v1, p2, Lyads/jz1;->a:Lyads/as2;

    invoke-virtual {v1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lyads/ri5;->setDividerColor(I)V

    iget-object v1, p2, Lyads/jz1;->b:Lyads/as2;

    invoke-virtual {v1, p4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/iz1;

    sget-object v2, Lyads/iz1;->f:Lyads/iz1;

    if-ne v1, v2, :cond_6

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    :goto_4
    invoke-virtual {p1, p3}, Lyads/ri5;->setHorizontal(Z)V

    :goto_5
    if-eqz p2, :cond_7

    iget-object p3, p2, Lyads/jz1;->a:Lyads/as2;

    goto :goto_6

    :cond_7
    move-object p3, v0

    :goto_6
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_9

    if-eqz p2, :cond_8

    iget-object p3, p2, Lyads/jz1;->b:Lyads/as2;

    goto :goto_7

    :cond_8
    move-object p3, v0

    :goto_7
    invoke-static {p3}, Lyads/ls2;->a(Lyads/as2;)Z

    move-result p3

    if-eqz p3, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance p3, Lq1a;

    invoke-direct {p3, p0, p1, p2, p4}, Lq1a;-><init>(Lyads/lz1;Lyads/wz1;Lyads/jz1;Lyads/fs2;)V

    if-eqz p2, :cond_a

    iget-object p0, p2, Lyads/jz1;->a:Lyads/as2;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_9

    :cond_a
    move-object p0, v0

    :goto_9
    iget-object v1, p1, Lyads/wz1;->g:Lyads/xh1;

    invoke-interface {v1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    if-eqz p2, :cond_b

    iget-object p0, p2, Lyads/jz1;->b:Lyads/as2;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p4, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    :cond_b
    iget-object p0, p1, Lyads/wz1;->g:Lyads/xh1;

    invoke-interface {p0, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method
