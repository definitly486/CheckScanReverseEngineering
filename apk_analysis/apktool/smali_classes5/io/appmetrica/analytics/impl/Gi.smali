.class public final Lio/appmetrica/analytics/impl/Gi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/tk;


# static fields
.field public static final e:Lio/appmetrica/analytics/impl/Fi;

.field public static final f:J

.field public static final g:J


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/s0;

.field public final b:Lio/appmetrica/analytics/impl/ok;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/Fi;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Fi;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Gi;->e:Lio/appmetrica/analytics/impl/Fi;

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lio/appmetrica/analytics/impl/Gi;->f:J

    const-wide/16 v0, 0xfa0

    sput-wide v0, Lio/appmetrica/analytics/impl/Gi;->g:J

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/ok;)V
    .locals 1

    .line 24
    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;-><init>()V

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/Gi;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/ok;Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/ok;Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gi;->a:Lio/appmetrica/analytics/impl/s0;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Gi;->b:Lio/appmetrica/analytics/impl/ok;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Gi;->c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/p4;->g()Lio/appmetrica/analytics/impl/f4;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/f4;->c()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Gi;->d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ch;)V
    .locals 8

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gi;->d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ch;->b:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gi;->b:Lio/appmetrica/analytics/impl/ok;

    if-eqz v1, :cond_0

    new-instance v2, Lio/appmetrica/analytics/impl/n6;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/ok;->a:Landroid/content/Context;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/ok;->b:Lio/appmetrica/analytics/impl/s0;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    const/4 v7, 0x1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/impl/n6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;Z)V

    goto :goto_0

    :cond_0
    move-object v6, p1

    new-instance v2, Lio/appmetrica/analytics/impl/Sg;

    iget-object p1, p0, Lio/appmetrica/analytics/impl/ok;->b:Lio/appmetrica/analytics/impl/s0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    invoke-direct {v2, p1, p0, v6}, Lio/appmetrica/analytics/impl/Sg;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;)V

    :goto_0
    invoke-interface {v0, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Pf;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gi;->d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gi;->b:Lio/appmetrica/analytics/impl/ok;

    .line 37
    new-instance v1, Lio/appmetrica/analytics/impl/Be;

    .line 38
    iget-object v2, p0, Lio/appmetrica/analytics/impl/ok;->b:Lio/appmetrica/analytics/impl/s0;

    .line 39
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    invoke-direct {v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/Be;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Pf;)V

    .line 40
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b(Lio/appmetrica/analytics/impl/Ch;)V
    .locals 9

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gi;->c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Gi;->b:Lio/appmetrica/analytics/impl/ok;

    new-instance v3, Lio/appmetrica/analytics/impl/n6;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/ok;->a:Landroid/content/Context;

    iget-object v5, v2, Lio/appmetrica/analytics/impl/ok;->b:Lio/appmetrica/analytics/impl/s0;

    iget-object v6, v2, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    const/4 v8, 0x0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lio/appmetrica/analytics/impl/n6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Ch;Z)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {p1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-wide v4, Lio/appmetrica/analytics/impl/Gi;->f:J

    goto :goto_0

    :cond_0
    sget-wide v4, Lio/appmetrica/analytics/impl/Gi;->g:J

    :goto_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Gi;->a:Lio/appmetrica/analytics/impl/s0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/s0;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Gi;->d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    invoke-interface {p1, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v4, v5, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    iget-boolean p1, v3, Lio/appmetrica/analytics/impl/Eh;->c:Z

    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/n6;->a()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gi;->c:Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreutils/internal/time/TimeProvider;->uptimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    sub-long/2addr v4, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    return-void
.end method

.method public final b(Lio/appmetrica/analytics/impl/Pf;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gi;->d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gi;->b:Lio/appmetrica/analytics/impl/ok;

    .line 85
    new-instance v1, Lio/appmetrica/analytics/impl/Mi;

    .line 86
    iget-object v2, p0, Lio/appmetrica/analytics/impl/ok;->b:Lio/appmetrica/analytics/impl/s0;

    .line 87
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    invoke-direct {v1, v2, p0, p1}, Lio/appmetrica/analytics/impl/Mi;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;Lio/appmetrica/analytics/impl/Pf;)V

    .line 88
    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final reportData(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gi;->d:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Gi;->b:Lio/appmetrica/analytics/impl/ok;

    new-instance v1, Lio/appmetrica/analytics/impl/Zn;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/ok;->b:Lio/appmetrica/analytics/impl/s0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ok;->c:Lio/appmetrica/analytics/impl/sl;

    invoke-direct {v1, v2, p0, p1, p2}, Lio/appmetrica/analytics/impl/Zn;-><init>(Lio/appmetrica/analytics/impl/s0;Lio/appmetrica/analytics/impl/sl;ILandroid/os/Bundle;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
