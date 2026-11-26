.class public final Lyads/jf1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bt0;


# direct methods
.method public constructor <init>(Lyads/bt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jf1;->a:Lyads/bt0;

    return-void
.end method

.method public static a(Lyads/tt;Lyads/f51;Landroid/view/View;)V
    .locals 1

    instance-of v0, p2, Lyads/s51;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyads/s51;

    invoke-interface {v0, p0, p1, p2}, Lyads/s51;->setBorder(Lyads/tt;Lyads/f51;Landroid/view/View;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lyads/jf1;->a(Lyads/f51;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lyads/f51;->c:Lyads/as2;

    iget-object p0, p0, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {v0, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p1, Lyads/f51;->d:Lyads/xz1;

    if-eqz p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_div_shadow_elevation:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_1
    invoke-virtual {p2, p0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public static a(Lyads/f51;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 58
    :cond_0
    iget-object v1, p0, Lyads/f51;->a:Lyads/as2;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 59
    :cond_1
    iget-object v1, p0, Lyads/f51;->b:Lyads/p91;

    if-eqz v1, :cond_2

    return v2

    .line 60
    :cond_2
    iget-object v1, p0, Lyads/f51;->c:Lyads/as2;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    new-instance v4, Lyads/xr2;

    invoke-direct {v4, v3}, Lyads/xr2;-><init>(Ljava/lang/Object;)V

    .line 62
    invoke-static {v1, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 63
    :cond_3
    iget-object v1, p0, Lyads/f51;->d:Lyads/xz1;

    if-eqz v1, :cond_4

    return v2

    .line 64
    :cond_4
    iget-object p0, p0, Lyads/f51;->e:Lyads/l42;

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v2
.end method
