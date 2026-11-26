.class public abstract Lyads/s55;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Lyads/hs2;
    .locals 4

    instance-of v0, p0, Lyads/hs2;

    if-eqz v0, :cond_0

    check-cast p0, Lyads/hs2;

    return-object p0

    :cond_0
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_releasable_list:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroidx/collection/SparseArrayCompat;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sget v1, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_releasable_list:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lyads/hs2;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Lyads/hs2;

    :cond_3
    if-nez v2, :cond_4

    new-instance v1, Lyads/is2;

    invoke-direct {v1}, Lyads/is2;-><init>()V

    invoke-virtual {v0, p0, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object v1

    :cond_4
    return-object v2
.end method

.method public static final b(Landroid/view/View;)Lyads/xo5;
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_releasable_list:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/collection/SparseArrayCompat;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    new-instance v0, Lyads/xo5;

    invoke-direct {v0, p0}, Lyads/xo5;-><init>(Landroidx/collection/SparseArrayCompat;)V

    return-object v0

    :cond_1
    return-object v1
.end method
