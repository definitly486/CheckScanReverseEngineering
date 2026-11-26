.class public final Lio/appmetrica/analytics/impl/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/B0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/B0;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/A0;->a:Lio/appmetrica/analytics/impl/B0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/A0;->a:Lio/appmetrica/analytics/impl/B0;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/B0;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/impl/z1;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/z1;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
