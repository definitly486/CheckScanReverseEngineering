.class public final Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor$Companion;


# instance fields
.field private final a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field private final b:Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;

.field private final c:Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;

.field private final d:J

.field private e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->Companion:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor$Companion;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;",
            "Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer<",
            "TT;>;",
            "Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor<",
            "TT;>;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    .line 24
    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;

    .line 25
    iput-object p3, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->c:Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;

    .line 26
    iput-wide p4, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->d:J

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;JLjava/lang/String;ILjh2;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const-wide/16 p4, 0x3e8

    :cond_0
    move-wide v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const-string p6, "[DeferredBatchExecutor]"

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;JLjava/lang/String;)V

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    return-void

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;->getAndClear()Ljava/util/List;

    move-result-object v0

    iput-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    :try_start_0
    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->c:Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;->processBatch(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static final a(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flush()V

    return-void
.end method

.method private final b()V
    .locals 4

    new-instance v0, Lkc2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkc2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-wide v2, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->d:J

    invoke-interface {v1, v0, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static final b(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V
    .locals 1

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    throw v0
.end method

.method public static synthetic c(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V

    return-void
.end method

.method public static synthetic d(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;)V

    return-void
.end method

.method public static synthetic submit$default(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;Ljava/lang/Object;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->submit(Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    invoke-interface {v1, v0}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;

    invoke-interface {v0}, Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final flushAsync()V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v1, Lgp;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lgp;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized submit(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b:Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    invoke-interface {p2, p1}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->remove(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->e:Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->a()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
