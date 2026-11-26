.class public final Lyads/yn;
.super Lyads/z93;
.source "SourceFile"

# interfaces
.implements Lyads/gh6;


# instance fields
.field public final A:Ly22;

.field public final B:Lyads/db;

.field public C:Z

.field public D:Lmb4;

.field public final E:Lcom/yandex/mobile/ads/banner/BannerAdView;

.field public final F:Lyads/wn;

.field public final G:Lyads/gd6;

.field public final H:Lyads/ao;

.field public final I:Lyads/zn;

.field public final J:Lyads/ah4;

.field public final K:Lyads/qo1;

.field public final L:Lyads/wf6;

.field public M:Lyads/go;

.field public N:Lyads/go;

.field public final z:Lcom/yandex/mobile/ads/banner/BannerAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lcom/yandex/mobile/ads/banner/BannerAdView;Lyads/wn;Lyads/t5;)V
    .locals 9

    new-instance v0, Lyads/gd6;

    invoke-direct {v0}, Lyads/gd6;-><init>()V

    new-instance v1, Lyads/ao;

    invoke-direct {v1}, Lyads/ao;-><init>()V

    new-instance v2, Lyads/zn;

    invoke-virtual {p3}, Lyads/pn3;->getSdkEnvironmentModule$mobileads_externalRelease()Lyads/bf5;

    move-result-object v3

    invoke-direct {v2, v3}, Lyads/zn;-><init>(Lyads/bf5;)V

    new-instance v3, Lyads/ah4;

    invoke-direct {v3, p2}, Lyads/ah4;-><init>(Lyads/e4;)V

    new-instance p2, Lyads/qo1;

    invoke-direct {p2}, Lyads/qo1;-><init>()V

    new-instance v4, Lyads/wf6;

    invoke-direct {v4}, Lyads/wf6;-><init>()V

    new-instance v5, Lyads/i90;

    invoke-direct {v5}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v6

    invoke-static {v6, v5}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v5

    new-instance v6, Lyads/db;

    invoke-direct {v6, p3}, Lyads/db;-><init>(Lcom/yandex/mobile/ads/banner/BannerAdView;)V

    invoke-virtual {p3}, Lyads/pn3;->getAdConfiguration$mobileads_externalRelease()Lyads/e4;

    move-result-object v7

    invoke-virtual {p3}, Lyads/pn3;->getSdkEnvironmentModule$mobileads_externalRelease()Lyads/bf5;

    move-result-object v8

    invoke-direct {p0, p1, v7, p5, v8}, Lyads/z93;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    iput-object p3, p0, Lyads/yn;->z:Lcom/yandex/mobile/ads/banner/BannerAdView;

    iput-object v5, p0, Lyads/yn;->A:Ly22;

    iput-object v6, p0, Lyads/yn;->B:Lyads/db;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/yn;->C:Z

    invoke-virtual {p3, p0}, Lyads/pn3;->addVisibilityChangeListener(Lyads/gh6;)V

    iput-object p3, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    iput-object p4, p0, Lyads/yn;->F:Lyads/wn;

    iput-object v0, p0, Lyads/yn;->G:Lyads/gd6;

    iput-object v1, p0, Lyads/yn;->H:Lyads/ao;

    iput-object v2, p0, Lyads/yn;->I:Lyads/zn;

    iput-object v3, p0, Lyads/yn;->J:Lyads/ah4;

    iput-object p2, p0, Lyads/yn;->K:Lyads/qo1;

    iput-object v4, p0, Lyads/yn;->L:Lyads/wf6;

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/16 p1, 0x8

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p0, p4, Lyads/wn;->b:Lyads/v5;

    iput-object v3, p0, Lyads/v5;->f:Lyads/ah4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d9;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/pp;->b:Lyads/t5;

    sget-object v1, Lyads/s5;->u:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iput-object p1, p0, Lyads/pp;->w:Lyads/d9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lyads/yn;->J:Lyads/ah4;

    iput-object p1, v0, Lyads/ah4;->d:Lyads/d9;

    iget-object v0, p0, Lyads/yn;->I:Lyads/zn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lyads/d9;->q:Lyads/o54;

    if-eqz v1, :cond_0

    new-instance v0, Lyads/o34;

    invoke-direct {v0, p1, v1}, Lyads/o34;-><init>(Lyads/d9;Lyads/o54;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/mg5;

    iget-object v0, v0, Lyads/zn;->a:Lyads/bf5;

    invoke-direct {v1, v0}, Lyads/mg5;-><init>(Lyads/bf5;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lyads/pp;->a:Landroid/content/Context;

    iget-object v2, p0, Lyads/pp;->x:Lyads/dp;

    invoke-interface {v0, v1, p0, v2}, Lyads/ho;->a(Landroid/content/Context;Lyads/yn;Lyads/dp;)Lyads/go;

    move-result-object v0

    iput-object v0, p0, Lyads/yn;->N:Lyads/go;

    iget-object p0, p0, Lyads/pp;->a:Landroid/content/Context;

    invoke-interface {v0, p0, p1}, Lyads/go;->a(Landroid/content/Context;Lyads/d9;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lyads/ou4;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lyads/pp;->a(Lyads/ou4;)V

    .line 58
    invoke-virtual {p0}, Lyads/yn;->n()V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-super {p0}, Lyads/pp;->b()V

    iget-object v0, p0, Lyads/yn;->z:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v0, p0}, Lyads/pn3;->removeVisibilityChangeListener(Lyads/gh6;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/yn;->C:Z

    iget-object v0, p0, Lyads/yn;->D:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lyads/yn;->D:Lmb4;

    iget-object v0, p0, Lyads/yn;->F:Lyads/wn;

    iput-object v1, v0, Lyads/wn;->c:Lyads/pm6;

    iget-object v0, v0, Lyads/wn;->b:Lyads/v5;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/v5;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/yn;->L:Lyads/wf6;

    iget-object v1, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lyads/wf6;->a(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-static {p0}, Lyads/eh6;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final b(Lyads/m4;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lyads/pp;->b(Lyads/m4;)V

    .line 56
    iget p1, p1, Lyads/m4;->a:I

    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lyads/yn;->n()V

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lyads/yn;->M:Lyads/go;

    iget-object v1, p0, Lyads/yn;->N:Lyads/go;

    const/4 v2, 0x2

    new-array v3, v2, [Lyads/go;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v0, v3, v4

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/pp;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lyads/go;->a(Landroid/content/Context;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lyads/pp;->c()V

    return-void
.end method

.method public final f()V
    .locals 0

    invoke-super {p0}, Lyads/pp;->f()V

    invoke-virtual {p0}, Lyads/yn;->n()V

    return-void
.end method

.method public final h()V
    .locals 3

    invoke-super {p0}, Lyads/pp;->h()V

    iget-object v0, p0, Lyads/yn;->M:Lyads/go;

    iget-object v1, p0, Lyads/yn;->N:Lyads/go;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/go;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/pp;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lyads/go;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lyads/yn;->N:Lyads/go;

    iput-object v0, p0, Lyads/yn;->M:Lyads/go;

    :cond_1
    iget-object v0, p0, Lyads/pp;->c:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->d:Lyads/tl5;

    iget-object v0, v0, Lyads/tl5;->a:Lyads/sl5;

    sget-object v1, Lyads/rl5;->d:Lyads/rl5;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lyads/sl5;->b()Lyads/rl5;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lyads/yn;->E:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Lyads/yn;->n()V

    return-void
.end method

.method public final n()V
    .locals 5

    iget-object v0, p0, Lyads/yn;->D:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lyads/yn;->D:Lmb4;

    iget-object v0, p0, Lyads/pp;->w:Lyads/d9;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lyads/d9;->K:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lyads/yn;->C:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lyads/pp;->o:Lyads/uu4;

    invoke-virtual {v2}, Lyads/uu4;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lyads/yn;->B:Lyads/db;

    iget-object v2, v2, Lyads/db;->a:Lyads/e55;

    sget-object v3, Lyads/db;->b:[Lze4;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v2, v2, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/pn3;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lyads/eh6;->b(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lyads/yn;->A:Ly22;

    new-instance v3, Lyads/h55;

    invoke-direct {v3, v0, p0, v1}, Lyads/h55;-><init>(Lyads/d9;Lyads/yn;Le02;)V

    const/4 v0, 0x3

    invoke-static {v2, v1, v1, v3, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Lyads/yn;->D:Lmb4;

    :cond_1
    return-void
.end method
