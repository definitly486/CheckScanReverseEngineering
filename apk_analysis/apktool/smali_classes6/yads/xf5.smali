.class public final Lyads/xf5;
.super Lyads/z14;
.source "SourceFile"


# instance fields
.field public final d:Lyads/sf6;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/xb4;Lyads/j24;)V
    .locals 1

    new-instance v0, Lyads/sf6;

    invoke-direct {v0, p2}, Lyads/sf6;-><init>(Lyads/rf6;)V

    invoke-direct {p0, p1, p3}, Lyads/z14;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/j24;)V

    iput-object v0, p0, Lyads/xf5;->d:Lyads/sf6;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iget-object p0, p0, Lyads/xf5;->d:Lyads/sf6;

    invoke-virtual {p0}, Lyads/sf6;->a()V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lyads/xf5;->d:Lyads/sf6;

    invoke-virtual {p0}, Lyads/sf6;->a()V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    .line 33
    iget-object p1, p2, Lyads/v14;->a:Lyads/by3;

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object p0, p0, Lyads/xf5;->d:Lyads/sf6;

    invoke-virtual {p0, p1}, Lyads/sf6;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p3, Lyads/v14;

    .line 26
    iget-object p0, p0, Lyads/xf5;->d:Lyads/sf6;

    if-eqz p3, :cond_0

    .line 27
    iget-object p3, p3, Lyads/v14;->a:Lyads/by3;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lyads/sf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/v14;)V
    .locals 0

    .line 24
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lyads/v14;

    .line 30
    iget-object p1, p2, Lyads/v14;->a:Lyads/by3;

    if-eqz p1, :cond_0

    .line 31
    iget-object p0, p0, Lyads/xf5;->d:Lyads/sf6;

    invoke-virtual {p0, p1}, Lyads/sf6;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Lyads/y14;
    .locals 0

    sget-object p0, Lyads/y14;->c:Lyads/y14;

    return-object p0
.end method
