.class public final Lio/appmetrica/analytics/impl/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/modulesapi/internal/client/ModuleClientExecutorProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultExecutor()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;
    .locals 0

    invoke-static {}, Lio/appmetrica/analytics/impl/p4;->l()Lio/appmetrica/analytics/impl/p4;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/p4;->c:Lio/appmetrica/analytics/impl/f4;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/f4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p0

    return-object p0
.end method
