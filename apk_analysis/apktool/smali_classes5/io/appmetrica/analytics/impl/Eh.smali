.class public abstract Lio/appmetrica/analytics/impl/Eh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final d:Lio/appmetrica/analytics/impl/Dh;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/s0;

.field public final b:Lio/appmetrica/analytics/impl/sl;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Dh;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Dh;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Eh;->d:Lio/appmetrica/analytics/impl/Dh;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Eh;->b:Lio/appmetrica/analytics/impl/sl;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v2, Lio/appmetrica/analytics/impl/s0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/impl/Eh;->a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Eh;->b:Lio/appmetrica/analytics/impl/sl;

    if-eqz v2, :cond_2

    check-cast v2, Lio/appmetrica/analytics/impl/qi;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/qi;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/s0;->d()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Eh;->c()Z

    move-result v2

    add-int/2addr v1, v0

    const/4 v3, 0x3

    if-eqz v2, :cond_4

    sget-object v2, Lio/appmetrica/analytics/impl/d2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    if-lt v1, v3, :cond_1

    :cond_4
    if-lt v1, v3, :cond_5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/s0;->a()V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Eh;->a(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract a(Lio/appmetrica/analytics/internal/IAppMetricaService;)V
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 74
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/s0;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    return-object p0
.end method

.method public c()Z
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/s0;->d:Lio/appmetrica/analytics/internal/IAppMetricaService;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, v0, Lio/appmetrica/analytics/impl/s0;->e:Ljava/util/concurrent/CountDownLatch;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lio/appmetrica/analytics/impl/s0;->h:Lio/appmetrica/analytics/impl/V1;

    iget-object v3, v0, Lio/appmetrica/analytics/impl/s0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/V1;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    :try_start_1
    iget-object v3, v0, Lio/appmetrica/analytics/impl/s0;->g:Lio/appmetrica/analytics/impl/U1;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/s0;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/U1;->b(Landroid/content/Context;)V

    iget-object v3, v0, Lio/appmetrica/analytics/impl/s0;->a:Landroid/content/Context;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/s0;->j:Lio/appmetrica/analytics/impl/r0;

    invoke-virtual {v3, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Eh;->a:Lio/appmetrica/analytics/impl/s0;

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/s0;->a(Ljava/lang/Long;)V

    return v2

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Eh;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/Eh;->c:Z

    return p0
.end method
