.class public final Lyads/ks3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/on0;


# instance fields
.field public final a:Lyads/pg4;

.field public final b:Lyads/h80;

.field public final c:Lyads/pz;

.field public final d:Lyads/cs3;

.field public final e:Lyads/vs3;

.field public final f:Ljava/lang/String;

.field public final g:Lyads/q84;

.field public final h:Lyads/m2;

.field public final i:Lyads/b4;

.field public j:Lyads/vb4;

.field public k:Lyads/jb4;


# direct methods
.method public constructor <init>(Lyads/pg4;Lyads/h80;Lyads/pz;Lyads/cs3;Lyads/vs3;Ljava/lang/String;Lyads/q84;Lyads/m2;Lyads/b4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ks3;->a:Lyads/pg4;

    iput-object p2, p0, Lyads/ks3;->b:Lyads/h80;

    iput-object p3, p0, Lyads/ks3;->c:Lyads/pz;

    iput-object p4, p0, Lyads/ks3;->d:Lyads/cs3;

    iput-object p5, p0, Lyads/ks3;->e:Lyads/vs3;

    iput-object p6, p0, Lyads/ks3;->f:Ljava/lang/String;

    iput-object p7, p0, Lyads/ks3;->g:Lyads/q84;

    iput-object p8, p0, Lyads/ks3;->h:Lyads/m2;

    iput-object p9, p0, Lyads/ks3;->i:Lyads/b4;

    return-void
.end method

.method public static final synthetic a(Lyads/ks3;)Lyads/pz;
    .locals 0

    .line 78
    iget-object p0, p0, Lyads/ks3;->c:Lyads/pz;

    return-object p0
.end method

.method public static final a(Lyads/vb4;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lyads/vb4;->a()V

    return-void
.end method

.method public static final b(Lyads/ks3;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lyads/es3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyads/es3;-><init>(Lyads/ks3;Le02;)V

    sget-object p0, Lgx2;->b:Lgx2;

    invoke-static {p0, v0}, Lbv0;->a(Lo22;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3

    .line 71
    check-cast p1, Lcom/monetization/ads/nativeads/ExtendedNativeAdView;

    .line 72
    new-instance v0, Lyads/xk;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lyads/xk;-><init>(Ljava/util/Set;I)V

    .line 73
    new-instance v1, Lyads/xd4;

    invoke-direct {v1}, Lyads/xd4;-><init>()V

    invoke-virtual {v0, p1, v1}, Lyads/xk;->a(Landroid/view/View;Lyads/vd4;)Lyads/ih4;

    move-result-object v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lyads/ks3;->a:Lyads/pg4;

    iget-object v2, p0, Lyads/ks3;->c:Lyads/pz;

    invoke-interface {v1, v0, v2}, Lyads/pg4;->a(Lyads/ih4;Lyads/pz;)V

    .line 75
    iget-object v0, p0, Lyads/ks3;->a:Lyads/pg4;

    iget-object v1, p0, Lyads/ks3;->b:Lyads/h80;

    invoke-interface {v0, v1}, Lyads/pg4;->a(Lyads/h80;)V
    :try_end_0
    .catch Lyads/yf4; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lyads/ks3;->g:Lyads/q84;

    const-string v2, "Failed to bind LightBundle Native Ad"

    invoke-virtual {v1, v2, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    invoke-virtual {p0, p1}, Lyads/ks3;->a(Lcom/monetization/ads/nativeads/ExtendedNativeAdView;)V

    return-void
.end method

.method public final a(Lcom/monetization/ads/nativeads/ExtendedNativeAdView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lyads/vb4;->o:I

    new-instance v1, Lyads/xj6;

    invoke-direct {v1}, Lyads/xj6;-><init>()V

    new-instance v2, Lyads/vb4;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lyads/vb4;-><init>(Landroid/content/Context;Lyads/xj6;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lyads/ks3;->j:Lyads/vb4;

    new-instance v0, Lyads/fd5;

    new-instance v1, Lvd0;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Lvd0;-><init>(Ljava/lang/Object;I)V

    const-string v3, "lightBundle.js"

    invoke-direct {v0, v3, v1}, Lyads/fd5;-><init>(Ljava/lang/String;Lyads/gd5;)V

    new-instance v1, Lyads/jb4;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/16 v3, 0x7e

    invoke-direct {v1, v2, v0, v3}, Lyads/jb4;-><init>(Lyads/ls4;Ljava/util/List;I)V

    iput-object v1, p0, Lyads/ks3;->k:Lyads/jb4;

    invoke-virtual {p0, v1, v2}, Lyads/ks3;->a(Lyads/jb4;Lyads/vb4;)V

    new-instance v0, Lyads/ds3;

    invoke-direct {v0, v1, p0, v2}, Lyads/ds3;-><init>(Lyads/jb4;Lyads/ks3;Lyads/vb4;)V

    invoke-virtual {v2, v0}, Lyads/ls4;->setHtmlWebViewListener(Lyads/ha3;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lyads/ks3;->f:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lyads/jb4;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/jb4;Lyads/vb4;)V
    .locals 2

    .line 79
    new-instance v0, Lyads/fs3;

    invoke-direct {v0, p0}, Lyads/fs3;-><init>(Lyads/ks3;)V

    .line 80
    iput-object v0, p1, Lyads/jb4;->o:Lyads/mq4;

    .line 81
    new-instance v0, Lyads/gs3;

    invoke-direct {v0, p0, p2}, Lyads/gs3;-><init>(Lyads/ks3;Lyads/vb4;)V

    .line 82
    iput-object v0, p1, Lyads/jb4;->l:Lyads/rb4;

    .line 83
    new-instance v0, Ls5;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Ls5;-><init>(Ljava/lang/Object;I)V

    .line 84
    iput-object v0, p1, Lyads/jb4;->q:Lyads/hb4;

    .line 85
    new-instance p2, Lyads/hs3;

    invoke-direct {p2, p0}, Lyads/hs3;-><init>(Lyads/ks3;)V

    .line 86
    iput-object p2, p1, Lyads/jb4;->m:Lyads/ja4;

    .line 87
    new-instance p0, Lyads/is3;

    invoke-direct {p0}, Lyads/is3;-><init>()V

    .line 88
    iput-object p0, p1, Lyads/jb4;->n:Lyads/ia4;

    .line 89
    new-instance p0, Lyads/js3;

    invoke-direct {p0}, Lyads/js3;-><init>()V

    .line 90
    iput-object p0, p1, Lyads/jb4;->p:Lyads/rd6;

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lyads/ks3;->a:Lyads/pg4;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lyads/pg4;->a(Lyads/h80;)V

    iget-object v0, p0, Lyads/ks3;->k:Lyads/jb4;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lyads/jb4;->j:Lyads/ur2;

    iget-object v3, v2, Lyads/ur2;->e:Lmb4;

    if-eqz v3, :cond_0

    invoke-interface {v3, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, v2, Lyads/ur2;->e:Lmb4;

    iget-object v2, v0, Lyads/jb4;->c:Lyads/qb4;

    iget-object v3, v0, Lyads/jb4;->a:Lyads/ls4;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    iget-object v3, v0, Lyads/jb4;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyads/z75;->b:Lyads/z75;

    if-nez v2, :cond_2

    sget-object v2, Lyads/z75;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v4, Lyads/z75;->b:Lyads/z75;

    if-nez v4, :cond_1

    new-instance v4, Lyads/z75;

    invoke-direct {v4}, Lyads/z75;-><init>()V

    sput-object v4, Lyads/z75;->b:Lyads/z75;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2

    throw p0

    :cond_2
    :goto_2
    invoke-static {v3}, Lyads/z75;->a(Ljava/lang/Object;)V

    iput-object v1, v0, Lyads/jb4;->l:Lyads/rb4;

    iput-object v1, v0, Lyads/jb4;->m:Lyads/ja4;

    iput-object v1, v0, Lyads/jb4;->n:Lyads/ia4;

    iput-object v1, v0, Lyads/jb4;->o:Lyads/mq4;

    iput-object v1, v0, Lyads/jb4;->p:Lyads/rd6;

    iput-object v1, v0, Lyads/jb4;->q:Lyads/hb4;

    :cond_3
    iput-object v1, p0, Lyads/ks3;->k:Lyads/jb4;

    iget-object v0, p0, Lyads/ks3;->j:Lyads/vb4;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v0}, Lyads/ls4;->c()V

    :cond_6
    iput-object v1, p0, Lyads/ks3;->j:Lyads/vb4;

    return-void
.end method
