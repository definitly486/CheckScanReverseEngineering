.class public final Lio/appmetrica/analytics/impl/m3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/P8;

.field public final b:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/P8;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/m3;->a:Lio/appmetrica/analytics/impl/P8;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/buffering/AccumulatingTaskBuffer;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/buffering/AccumulatingTaskBuffer;-><init>()V

    new-instance v3, Ld2a;

    invoke-direct {v3, p0}, Ld2a;-><init>(Lio/appmetrica/analytics/impl/m3;)V

    const-wide/16 v4, 0x3e8

    const-string v6, "[BufferedEventsWriter]"

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;JLjava/lang/String;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/m3;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/m3;Ljava/util/List;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/m3;->a:Lio/appmetrica/analytics/impl/P8;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/P8;->b(Ljava/util/List;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/m3;->a:Lio/appmetrica/analytics/impl/P8;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/P8;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
