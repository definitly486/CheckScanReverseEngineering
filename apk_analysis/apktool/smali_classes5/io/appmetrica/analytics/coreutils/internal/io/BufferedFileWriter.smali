.class public final Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private final d:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JLjava/io/File;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->a:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[BufferedFileWriter-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x5d

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->b:Ljava/lang/Object;

    new-instance v1, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    new-instance v3, Lio/appmetrica/analytics/coreutils/internal/buffering/LastValueTaskBuffer;

    invoke-direct {v3}, Lio/appmetrica/analytics/coreutils/internal/buffering/LastValueTaskBuffer;-><init>()V

    new-instance v4, Ltu0;

    invoke-direct {v4, p0}, Ltu0;-><init>(Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;)V

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/coreutils/internal/buffering/TaskBuffer;Lio/appmetrica/analytics/coreutils/internal/buffering/BatchProcessor;JLjava/lang/String;)V

    iput-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->d:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    return-void
.end method

.method private static final a(Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;Ljava/util/List;)V
    .locals 3

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->a:Ljava/io/File;

    invoke-static {v0, p1}, Lda3;->f(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->c:Ljava/lang/String;

    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic b(Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->a(Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->d:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flush()V

    return-void
.end method

.method public final flushAsync()V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->d:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->flushAsync()V

    return-void
.end method

.method public final readString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->a:Ljava/io/File;

    invoke-static {v1}, Lda3;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_2
    iput-object v1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->c:Ljava/lang/String;

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->d:Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;->submit$default(Lio/appmetrica/analytics/coreutils/internal/buffering/DeferredBatchExecutor;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
