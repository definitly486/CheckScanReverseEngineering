.class public final Lio/appmetrica/analytics/impl/L9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/ug;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ug;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ug;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L9;->a:Lio/appmetrica/analytics/impl/ug;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/L9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/L9;Lio/appmetrica/analytics/impl/qg;)V
    .locals 3

    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/impl/L9;->a:Lio/appmetrica/analytics/impl/ug;

    new-instance v2, Lxg4;

    invoke-direct {v2, v0, p1, p0}, Lxg4;-><init>(Ljava/lang/Thread;Lio/appmetrica/analytics/impl/qg;Lio/appmetrica/analytics/impl/L9;)V

    invoke-interface {v1, v2}, Lio/appmetrica/analytics/impl/ug;->a(Lio/appmetrica/analytics/impl/qg;)V

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/qg;Lio/appmetrica/analytics/impl/yg;)V
    .locals 0

    .line 30
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method

.method public static final a(Ljava/lang/Thread;Lio/appmetrica/analytics/impl/qg;Lio/appmetrica/analytics/impl/L9;Lio/appmetrica/analytics/impl/yg;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p3}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void

    :cond_0
    iget-object p0, p2, Lio/appmetrica/analytics/impl/L9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance p2, Lzg4;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1, p3}, Lzg4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/appmetrica/analytics/impl/L9;->a:Lio/appmetrica/analytics/impl/ug;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/ug;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/qg;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lio/appmetrica/analytics/impl/L9;->b:Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;

    new-instance v1, Lyg4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lyg4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
