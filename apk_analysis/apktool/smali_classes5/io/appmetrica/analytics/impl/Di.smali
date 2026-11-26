.class public final Lio/appmetrica/analytics/impl/Di;
.super Lio/appmetrica/analytics/impl/xn;
.source "SourceFile"


# instance fields
.field public final d:Lio/appmetrica/analytics/impl/Ci;

.field public final e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/am;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/i5;",
            "Lio/appmetrica/analytics/impl/am;",
            "Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/xn;-><init>(Lio/appmetrica/analytics/impl/Sa;Lio/appmetrica/analytics/impl/am;)V

    new-instance p1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/impl/Ci;-><init>(Lio/appmetrica/analytics/impl/Di;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Di;->d:Lio/appmetrica/analytics/impl/Ci;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Di;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Di;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Di;->d:Lio/appmetrica/analytics/impl/Ci;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xn;->b:Lio/appmetrica/analytics/impl/am;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/am;->a()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xn;->a:Lio/appmetrica/analytics/impl/Sa;

    check-cast v0, Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/rh;->k:Lio/appmetrica/analytics/impl/oh;

    iget-object v2, v0, Lio/appmetrica/analytics/impl/rh;->j:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/oh;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/rh;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/xn;->a:Lio/appmetrica/analytics/impl/Sa;

    check-cast v0, Lio/appmetrica/analytics/impl/i5;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/ie;->a(Lio/appmetrica/analytics/impl/i5;)Lio/appmetrica/analytics/networktasks/internal/NetworkTask;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/xn;->a(Lio/appmetrica/analytics/networktasks/internal/NetworkTask;)V

    :catchall_0
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Di;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Di;->d:Lio/appmetrica/analytics/impl/Ci;

    const-wide/16 v1, 0x3e8

    invoke-interface {v0, p0, v1, v2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Di;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Di;->d:Lio/appmetrica/analytics/impl/Ci;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xn;->a:Lio/appmetrica/analytics/impl/Sa;

    check-cast v0, Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget v0, v0, Lio/appmetrica/analytics/impl/rh;->g:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/xn;->a:Lio/appmetrica/analytics/impl/Sa;

    check-cast v0, Lio/appmetrica/analytics/impl/i5;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/i5;->k:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget v0, v0, Lio/appmetrica/analytics/impl/rh;->g:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Di;->e:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Di;->d:Lio/appmetrica/analytics/impl/Ci;

    invoke-interface {v2, p0, v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
