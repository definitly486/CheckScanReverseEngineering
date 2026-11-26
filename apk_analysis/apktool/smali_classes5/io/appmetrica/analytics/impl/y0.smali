.class public final Lio/appmetrica/analytics/impl/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pa;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final c:Lio/appmetrica/analytics/impl/s4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/p4;->g()Lio/appmetrica/analytics/impl/f4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/y0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/y0;->a:Landroid/os/Handler;

    new-instance v0, Lio/appmetrica/analytics/impl/s4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/s4;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/y0;->c:Lio/appmetrica/analytics/impl/s4;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/s4;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/y0;->c:Lio/appmetrica/analytics/impl/s4;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/db;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/y0;->a:Landroid/os/Handler;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/h2;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/h2;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/h2;-><init>()V

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/yb;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/impl/yb;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/yb;-><init>()V

    return-object p0
.end method

.method public final getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/y0;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    return-object p0
.end method
