.class public abstract Lcom/tapjoy/internal/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:Lcom/tapjoy/internal/u0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/tapjoy/internal/u0;)Lcom/tapjoy/TJPlacement;
.end method

.method public final a(Lcom/tapjoy/internal/u0;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/v0;->a:Lcom/tapjoy/internal/u0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/v0;->a:Lcom/tapjoy/internal/u0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 0

    .line 15
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/tapjoy/internal/v0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/v0;->a:Lcom/tapjoy/internal/u0;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tapjoy/internal/u0;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/u0;-><init>(Lcom/tapjoy/internal/v0;)V

    iput-object v0, p0, Lcom/tapjoy/internal/v0;->a:Lcom/tapjoy/internal/u0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tapjoy/internal/u0;->a()V

    :cond_2
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
