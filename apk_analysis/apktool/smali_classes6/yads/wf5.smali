.class public final Lyads/wf5;
.super Lyads/z14;
.source "SourceFile"


# instance fields
.field public final d:Lyads/sf6;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/be3;Lyads/j24;)V
    .locals 1

    new-instance v0, Lyads/sf6;

    invoke-direct {v0, p2}, Lyads/sf6;-><init>(Lyads/rf6;)V

    invoke-direct {p0, p1, p3}, Lyads/z14;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/j24;)V

    iput-object v0, p0, Lyads/wf5;->d:Lyads/sf6;

    return-void
.end method

.method public static a(Ljava/util/List;)Lyads/rd3;
    .locals 1

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 41
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/rd3;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    iget-object p0, p0, Lyads/wf5;->d:Lyads/sf6;

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

    .line 39
    iget-object p0, p0, Lyads/wf5;->d:Lyads/sf6;

    invoke-virtual {p0}, Lyads/sf6;->a()V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2}, Lyads/z14;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/v14;)V

    .line 36
    iget-object p1, p2, Lyads/v14;->c:Ljava/util/List;

    .line 37
    invoke-static {p1}, Lyads/wf5;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object p0, p0, Lyads/wf5;->d:Lyads/sf6;

    invoke-virtual {p0, p1}, Lyads/sf6;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p3, Lyads/v14;

    if-eqz p3, :cond_0

    .line 28
    iget-object p3, p3, Lyads/v14;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 29
    :goto_0
    invoke-static {p3}, Lyads/wf5;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object p3

    .line 30
    iget-object p0, p0, Lyads/wf5;->d:Lyads/sf6;

    invoke-virtual {p0, p1, p2, p3}, Lyads/sf6;->a(Lyads/ak;Lyads/vf6;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lyads/v14;)V
    .locals 0

    .line 24
    iget-object p1, p1, Lyads/v14;->c:Ljava/util/List;

    .line 25
    invoke-static {p1}, Lyads/wf5;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lyads/wf5;->d:Lyads/sf6;

    invoke-virtual {p0, p1}, Lyads/sf6;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 31
    check-cast p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;

    check-cast p2, Lyads/v14;

    .line 32
    iget-object p1, p2, Lyads/v14;->c:Ljava/util/List;

    .line 33
    invoke-static {p1}, Lyads/wf5;->a(Ljava/util/List;)Lyads/rd3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p0, p0, Lyads/wf5;->d:Lyads/sf6;

    invoke-virtual {p0, p1}, Lyads/sf6;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Lyads/y14;
    .locals 0

    sget-object p0, Lyads/y14;->f:Lyads/y14;

    return-object p0
.end method
