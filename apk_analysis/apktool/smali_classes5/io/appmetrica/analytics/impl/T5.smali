.class public final Lio/appmetrica/analytics/impl/T5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final c:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T5;->a:Ljava/util/List;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ak;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T5;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->a()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T5;->c:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/T5;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T5;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T5;->c:Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/T5;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v2, Lfg2;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lfg2;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;->subscribe(JLio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;)V

    return-void
.end method
