.class public final Lyads/rr3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Lyads/qr3;

.field public final d:Lyads/or3;

.field public final e:Lyads/nr3;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 2

    new-instance v0, Lyads/qr3;

    invoke-direct {v0, p3}, Lyads/qr3;-><init>(Ljava/util/List;)V

    new-instance p3, Lyads/or3;

    invoke-direct {p3}, Lyads/or3;-><init>()V

    new-instance v1, Lyads/nr3;

    invoke-direct {v1}, Lyads/nr3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rr3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lyads/rr3;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lyads/rr3;->c:Lyads/qr3;

    iput-object p3, p0, Lyads/rr3;->d:Lyads/or3;

    iput-object v1, p0, Lyads/rr3;->e:Lyads/nr3;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lyads/rr3;->c:Lyads/qr3;

    iget-object v1, p0, Lyads/rr3;->a:Landroid/app/Activity;

    iget-object v0, v0, Lyads/qr3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lyads/mr3;

    iget-object v3, v3, Lyads/mr3;->c:Lyads/pn0;

    invoke-interface {v3, v1}, Lyads/pn0;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lyads/mr3;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lyads/rr3;->d:Lyads/or3;

    iget-object v1, p0, Lyads/rr3;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, v2, Lyads/mr3;->a:I

    const-class v4, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    invoke-static {v0, v4, v3, v1}, Lyads/dc5;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lyads/rr3;->e:Lyads/nr3;

    iget-object p0, p0, Lyads/rr3;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p0, v2, Lyads/mr3;->b:Lyads/on0;

    iput-object p0, v1, Lyads/nr3;->a:Lyads/on0;

    invoke-interface {p0, v0}, Lyads/on0;->a(Landroid/view/ViewGroup;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lyads/rr3;->e:Lyads/nr3;

    iget-object p0, p0, Lyads/rr3;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, v0, Lyads/nr3;->a:Lyads/on0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/on0;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
