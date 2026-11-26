.class public final Lio/appmetrica/analytics/impl/We;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ic;
.implements Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/D9;

.field public final b:Lio/appmetrica/analytics/impl/Hc;

.field public final c:Lio/appmetrica/analytics/impl/Hc;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/D9;Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/jf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/We;->a:Lio/appmetrica/analytics/impl/D9;

    new-instance p1, Lio/appmetrica/analytics/impl/Hc;

    invoke-direct {p1, p2, p3, p4}, Lio/appmetrica/analytics/impl/Hc;-><init>(Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/jf;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/We;->b:Lio/appmetrica/analytics/impl/Hc;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/We;->c:Lio/appmetrica/analytics/impl/Hc;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hc;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Fa;->a()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p1

    sget-object p2, Lio/appmetrica/analytics/impl/U7;->a:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object p4

    invoke-virtual {p4}, Lio/appmetrica/analytics/impl/Ak;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4, p0}, Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;->subscribe(JLio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/coreapi/internal/servicecomponents/ActivationBarrierCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/R8;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/We;->c:Lio/appmetrica/analytics/impl/Hc;

    return-object p0
.end method

.method public final onWaitFinished()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/We;->b:Lio/appmetrica/analytics/impl/Hc;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Hc;->a()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/We;->a:Lio/appmetrica/analytics/impl/D9;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/D9;->a()Lio/appmetrica/analytics/impl/C9;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/v5;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/v5;->e()V

    return-void
.end method
