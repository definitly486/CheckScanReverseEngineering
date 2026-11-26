.class public final Lyads/sc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Z


# instance fields
.field public final a:Lyads/cp2;

.field public final b:Lyads/tq4;


# direct methods
.method public constructor <init>(Lyads/cp2;Lyads/tq4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/sc;->a:Lyads/cp2;

    iput-object p2, p0, Lyads/sc;->b:Lyads/tq4;

    return-void
.end method

.method public static final a()Lj59;
    .locals 1

    const/4 v0, 0x0

    .line 110
    sput-boolean v0, Lyads/sc;->c:Z

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/view/View;Lyads/uc;Lyads/yb;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    instance-of v1, p2, Lyads/pn3;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_1
    :goto_1
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-eqz p2, :cond_3

    iget-boolean v1, p4, Lyads/yb;->f:Z

    if-eqz v1, :cond_3

    new-instance p1, Lyads/pg3;

    invoke-direct {p1, p2, p3, p4}, Lyads/pg3;-><init>(Landroid/view/ViewGroup;Lyads/uc;Lyads/yb;)V

    goto :goto_3

    :cond_3
    new-instance p2, Lyads/co0;

    invoke-direct {p2, p1, p3, p4}, Lyads/co0;-><init>(Landroid/app/Activity;Lyads/uc;Lyads/yb;)V

    move-object p1, p2

    :goto_3
    new-instance p2, Ldl3;

    const/4 v1, 0x5

    invoke-direct {p2, v1}, Ldl3;-><init>(I)V

    invoke-interface {p1, p2}, Lyads/qc;->a(Lll3;)V

    new-instance p2, Lyads/ec;

    iget-object v1, p0, Lyads/sc;->a:Lyads/cp2;

    iget-object p0, p0, Lyads/sc;->b:Lyads/tq4;

    invoke-direct {p2, p1, p3, v1, p0}, Lyads/ec;-><init>(Lyads/qc;Lyads/uc;Lyads/cp2;Lyads/tq4;)V

    iget-object p0, p4, Lyads/yb;->b:Ljava/lang/String;

    new-instance p1, Lyads/cc;

    invoke-direct {p1, p2}, Lyads/cc;-><init>(Lyads/ec;)V

    iget-object p3, p2, Lyads/ec;->b:Lyads/uc;

    invoke-virtual {p3, p1}, Lyads/uc;->setAdtuneWebViewListener(Lyads/ad;)V

    iget-object p1, p2, Lyads/ec;->b:Lyads/uc;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p0, p2, Lyads/ec;->e:Ly22;

    new-instance p1, Lyads/dc;

    invoke-direct {p1, p2, v0}, Lyads/dc;-><init>(Lyads/ec;Le02;)V

    const/4 p3, 0x3

    invoke-static {p0, v0, v0, p1, p3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p0

    iput-object p0, p2, Lyads/ec;->f:Lmb4;

    iget-object p0, p2, Lyads/ec;->a:Lyads/qc;

    invoke-interface {p0}, Lyads/qc;->show()V

    return-void
.end method

.method public final a(Landroid/view/View;Lyads/yb;)V
    .locals 3

    .line 98
    sget-boolean v0, Lyads/sc;->c:Z

    if-eqz v0, :cond_0

    goto :goto_6

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_4

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/content/ContextWrapper;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v2

    :cond_4
    if-nez v1, :cond_6

    .line 101
    sget-object v0, Lyads/s1;->a:Lyads/s1;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lyads/s1;->b:Lyads/t1;

    if-eqz v1, :cond_5

    .line 103
    iget-object v1, v1, Lyads/t1;->a:Lyads/v1;

    invoke-virtual {v1}, Lyads/v1;->b()Landroid/app/Activity;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 104
    :cond_5
    :goto_3
    monitor-exit v0

    move-object v1, v2

    goto :goto_5

    :goto_4
    monitor-exit v0

    throw p0

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    .line 105
    invoke-static {v1}, Lyads/ya;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    :try_start_1
    new-instance v0, Lyads/uc;

    invoke-direct {v0, v1, p2}, Lyads/uc;-><init>(Landroid/app/Activity;Lyads/yb;)V

    const/4 v2, 0x1

    .line 107
    sput-boolean v2, Lyads/sc;->c:Z

    .line 108
    invoke-virtual {p0, v1, p1, v0, p2}, Lyads/sc;->a(Landroid/app/Activity;Landroid/view/View;Lyads/uc;Lyads/yb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    const/4 p0, 0x0

    .line 109
    sput-boolean p0, Lyads/sc;->c:Z

    :cond_7
    :goto_6
    return-void
.end method
