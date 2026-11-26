.class public abstract Lyads/ct0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/List;Lyads/fs2;)Ljava/util/List;
    .locals 3

    if-eqz p0, :cond_2

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyads/xr0;

    .line 58
    iget-object v2, v2, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v2, p1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 60
    :cond_2
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public static final a(Landroid/view/View;Ljava/util/List;Lyads/fs2;Lnl3;)V
    .locals 2

    .line 50
    instance-of v0, p0, Lyads/hs2;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/xr0;

    .line 52
    move-object v1, p0

    check-cast v1, Lyads/hs2;

    iget-object v0, v0, Lyads/xr0;->b:Lyads/as2;

    invoke-virtual {v0, p2, p3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Landroid/view/View;Lyads/as2;Lyads/sg3;Lyads/fs2;)V
    .locals 0

    .line 53
    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    invoke-static {p0, p2}, Lyads/pq;->a(Landroid/view/View;Lyads/sg3;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public static final a(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    sget v2, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_penetrating_longtap_tag:I

    invoke-virtual {p0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Ljava/lang/Boolean;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-nez v1, :cond_5

    invoke-static {p0}, Lyads/ct0;->a(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
