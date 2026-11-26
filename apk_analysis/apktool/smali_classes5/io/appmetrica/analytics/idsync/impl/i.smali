.class public final Lio/appmetrica/analytics/idsync/impl/i;
.super Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/idsync/impl/k;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/k;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/i;->a:Lio/appmetrica/analytics/idsync/impl/k;

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/executors/SafeRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final runSafety()V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/i;->a:Lio/appmetrica/analytics/idsync/impl/k;

    iget-boolean v0, v0, Lio/appmetrica/analytics/idsync/impl/k;->f:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/i;->a:Lio/appmetrica/analytics/idsync/impl/k;

    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/k;->e:Lio/appmetrica/analytics/idsync/impl/c;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/i;->a:Lio/appmetrica/analytics/idsync/impl/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lio/appmetrica/analytics/idsync/impl/k;->a(Lio/appmetrica/analytics/idsync/impl/c;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/c;->c:Ljava/util/List;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/i;->a:Lio/appmetrica/analytics/idsync/impl/k;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/idsync/impl/G;

    iget-object v3, v1, Lio/appmetrica/analytics/idsync/impl/k;->d:Lio/appmetrica/analytics/idsync/impl/q;

    invoke-virtual {v3, v2}, Lio/appmetrica/analytics/idsync/impl/q;->a(Lio/appmetrica/analytics/idsync/impl/G;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/i;->a:Lio/appmetrica/analytics/idsync/impl/k;

    iget-object v0, p0, Lio/appmetrica/analytics/idsync/impl/k;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/k;->g:Lio/appmetrica/analytics/idsync/impl/i;

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lio/appmetrica/analytics/idsync/impl/k;->b:J

    invoke-interface {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_3
    const-string p0, "syncRunnable"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method
