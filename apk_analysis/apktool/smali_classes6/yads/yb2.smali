.class public abstract Lyads/yb2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;Landroid/view/View;Lyads/qb2;Lyads/fs2;)Landroid/graphics/Point;
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p2, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/pb2;

    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object v6

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    neg-int v5, v5

    :goto_0
    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    invoke-static {}, Lme0;->e()V

    return-object v6

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    div-int/lit8 p0, v1, 0x2

    :goto_1
    add-int/2addr v4, p0

    iput v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, v2, Landroid/graphics/Point;->x:I

    iget-object v0, p2, Lyads/qb2;->i:Lyads/nv1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/nv1;->a:Lyads/ac1;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p3}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v0

    goto :goto_2

    :cond_0
    move v0, v3

    :goto_2
    add-int/2addr p1, v0

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v2, Landroid/graphics/Point;->y:I

    iget-object p2, p2, Lyads/qb2;->i:Lyads/nv1;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lyads/nv1;->b:Lyads/ac1;

    if-eqz p2, :cond_1

    invoke-static {p2, p0, p3}, Lyads/pq;->a(Lyads/ac1;Landroid/util/DisplayMetrics;Lyads/fs2;)I

    move-result v3

    :cond_1
    add-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static final a(Landroid/view/View;Ljava/lang/String;)Lb36;
    .locals 4

    .line 146
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tooltips_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/qb2;

    .line 148
    iget-object v3, v1, Lyads/qb2;->g:Ljava/lang/String;

    invoke-static {v3, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    new-instance p1, Lb36;

    invoke-direct {p1, v1, p0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 150
    :cond_2
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 151
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p0

    .line 152
    invoke-interface {p0}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 153
    invoke-static {v0, p1}, Lyads/yb2;->a(Landroid/view/View;Ljava/lang/String;)Lb36;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_4
    return-object v2
.end method

.method public static final synthetic a(Ljava/lang/String;Lyads/vq0;)Lb36;
    .locals 0

    .line 154
    invoke-static {p1, p0}, Lyads/yb2;->a(Landroid/view/View;Ljava/lang/String;)Lb36;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/view/View;Lyads/s0;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/s0;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 156
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 157
    invoke-static {}, Lwha;->a()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/16 p1, 0x20

    .line 158
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 159
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
