.class public final Lio/appmetrica/analytics/impl/W3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientActivator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final activate(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/p4;->b()Lio/appmetrica/analytics/impl/e0;

    move-result-object p0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/e0;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/d0;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/d0;-><init>(Lio/appmetrica/analytics/impl/e0;Landroid/content/Context;)V

    iget-wide p0, p0, Lio/appmetrica/analytics/impl/e0;->d:J

    invoke-interface {v0, v1, p0, p1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
