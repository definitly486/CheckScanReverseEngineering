.class public Lcom/tapjoy/TJCorePlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:Landroid/content/Context;

.field public c:Lcom/tapjoy/TJPlacementData;

.field public final d:Lcom/tapjoy/TJCurrencyParameters;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Lcom/tapjoy/TJAdUnit;

.field public volatile k:Z

.field public volatile l:Z

.field public volatile m:Z

.field public volatile n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/util/HashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->i:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->n:Z

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement;->g:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    sget-object p1, Lcom/tapjoy/internal/i;->a:Landroid/content/Context;

    if-nez p1, :cond_1

    sget-object p1, Lcom/tapjoy/internal/i;->c:Lcom/tapjoy/internal/v2;

    iget-object p1, p1, Lcom/tapjoy/internal/v2;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/content/Context;

    :cond_1
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string p1, "context is NULL."

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lcom/tapjoy/TJCurrencyParameters;

    invoke-direct {p1}, Lcom/tapjoy/TJCurrencyParameters;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    iget-object p2, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/tapjoy/TJCurrencyParameters;->fetchCurrencyParams(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->e:Ljava/lang/String;

    new-instance p1, Lcom/tapjoy/TJAdUnit;

    invoke-direct {p1}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->j:Lcom/tapjoy/TJAdUnit;

    new-instance p2, Lcom/tapjoy/z;

    invoke-direct {p2, p0}, Lcom/tapjoy/z;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    invoke-virtual {p1, p2}, Lcom/tapjoy/TJAdUnit;->setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .locals 3

    .line 55
    const-string v0, "Returning "

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJPlacement;

    if-eqz p0, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " placement: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    .line 59
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->n:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content is ready for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    const-string v1, "REQUEST"

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    :cond_0
    return-void
.end method

.method public final synthetic a(Landroid/content/Intent;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a(Lcom/tapjoy/TJPlacement;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content request delivered successfully for placement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/tapjoy/TJPlacementListener;->onRequestSuccess(Lcom/tapjoy/TJPlacement;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content request failed for placement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; Reason= "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 2

    .line 50
    const-string v0, "Setting "

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " placement: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    .line 53
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Placement "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already requesting content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->resetContentLoadState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    const-string v1, "REQUEST"

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lh11;

    invoke-direct {v3, v0, p0, v1}, Lh11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final synthetic b(Lcom/tapjoy/TJPlacement;)V
    .locals 7

    .line 70
    new-instance v0, Lcom/tapjoy/internal/p1;

    invoke-direct {v0}, Lcom/tapjoy/internal/p1;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tapjoy/TJCorePlacement;->h:Z

    .line 71
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getEntryPoint()Lcom/tapjoy/TJEntryPoint;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getEntryPoint()Lcom/tapjoy/TJEntryPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/TJEntryPoint;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/tapjoy/TJCorePlacement;->d:Lcom/tapjoy/TJCurrencyParameters;

    .line 72
    invoke-virtual {v5}, Lcom/tapjoy/TJCurrencyParameters;->getCurrencyMap()Ljava/util/HashMap;

    move-result-object v5

    new-instance v6, Lcom/tapjoy/a0;

    invoke-direct {v6, p0, p1}, Lcom/tapjoy/a0;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V

    .line 73
    invoke-virtual/range {v0 .. v6}, Lcom/tapjoy/internal/p1;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/HashMap;Lcom/tapjoy/a0;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    return-void
.end method

.method public final c(Lcom/tapjoy/TJPlacement;)V
    .locals 3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Only one view can be presented at a time."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SHOW"

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object p1

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p1, v1, v2}, Lcom/tapjoy/TJMemoryDataStorage;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    const-string v2, "placement_name"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content shown for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/l0;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->getSdkBeacon()Lcom/tapjoy/internal/l0;

    move-result-object v0

    iget-object v1, v0, Lcom/tapjoy/internal/l0;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/tapjoy/internal/l0;->f:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/l0;->f:Z

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lcom/tapjoy/internal/l0;->b:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Lcom/tapjoy/internal/j0;

    invoke-direct {v2, v0, v1}, Lcom/tapjoy/internal/j0;-><init>(Lcom/tapjoy/internal/l0;Ljava/util/HashMap;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_2
    new-instance v0, Leu3;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Leu3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tapjoy/TJPlacementData;->setRequestExpiration(Ljava/lang/Long;)V

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->n:Z

    return-void
.end method

.method public getAdUnit()Lcom/tapjoy/TJAdUnit;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->j:Lcom/tapjoy/TJAdUnit;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object p0
.end method

.method public isContentAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJCorePlacement;->m:Z

    return p0
.end method

.method public isContentReady()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tapjoy/TJCorePlacement;->n:Z

    return p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-void
.end method
