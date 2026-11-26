.class public final Lcom/tapjoy/internal/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/tapjoy/TJPlacementListener;


# instance fields
.field public final a:Lcom/tapjoy/internal/t2;

.field public volatile b:Z

.field public c:Lcom/tapjoy/TJPlacement;

.field public final synthetic d:Lcom/tapjoy/internal/v0;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v0;)V
    .locals 3

    new-instance v0, Lcom/tapjoy/internal/t2;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/t2;-><init>(J)V

    iput-object p1, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/u0;->a:Lcom/tapjoy/internal/t2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/u0;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/u0;->a:Lcom/tapjoy/internal/t2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tapjoy/internal/t2;->b:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lcom/tapjoy/internal/t2;->a:J
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/tapjoy/internal/s;->a:Lcom/tapjoy/internal/r;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/u0;->c:Lcom/tapjoy/TJPlacement;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/v0;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v0;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Cannot request"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/u0;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/v0;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/internal/v0;->a(Landroid/content/Context;Lcom/tapjoy/internal/u0;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/u0;->c:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    monitor-exit p0

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit p0

    return-void

    :cond_6
    iget-object v0, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/v0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/tapjoy/internal/s;->d:Lcom/tapjoy/internal/r;

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    :cond_8
    iget-object v0, p0, Lcom/tapjoy/internal/u0;->c:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/u0;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catch_0
    :goto_0
    const-string v0, "Timed out"

    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/u0;->a(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 163
    const-string v0, "Cannot show placement "

    const-string v1, "Placement "

    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/v0;

    invoke-virtual {v2}, Lcom/tapjoy/internal/v0;->b()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is presented now"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " now ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/tapjoy/internal/u0;->b:Z

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/tapjoy/internal/u0;->c:Lcom/tapjoy/TJPlacement;

    .line 169
    sget-object p1, Lcom/tapjoy/internal/s;->a:Lcom/tapjoy/internal/r;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 170
    sget-object p1, Lcom/tapjoy/internal/s;->d:Lcom/tapjoy/internal/r;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object p1, p0, Lcom/tapjoy/internal/u0;->d:Lcom/tapjoy/internal/v0;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/v0;->a(Lcom/tapjoy/internal/u0;)V

    return-void

    .line 173
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/u0;->a()V

    return-void
.end method

.method public final onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 0

    iget-object p1, p2, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/u0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    return-void
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/internal/u0;->a()V

    return-void
.end method
