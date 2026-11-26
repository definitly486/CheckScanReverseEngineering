.class public final Lio/appmetrica/analytics/impl/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ko;


# static fields
.field public static final h:Lio/appmetrica/analytics/impl/pa;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final d:J

.field public final e:Ljava/lang/Object;

.field public volatile f:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

.field public volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/pa;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/pa;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/qa;->h:Lio/appmetrica/analytics/impl/pa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qa;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/qa;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/qa;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iput-wide p4, p0, Lio/appmetrica/analytics/impl/qa;->d:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/qa;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JILjh2;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x3e8

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 19
    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/qa;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;J)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qa;->c()Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qa;->c()Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qa;->c()Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qa;->d()V

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/qa;->f:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qa;->f:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qa;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/qa;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_2
    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/qa;->c:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-wide v4, p0, Lio/appmetrica/analytics/impl/qa;->d:J

    invoke-direct {v2, v3, v4, v5, v1}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;JLjava/io/File;)V

    iput-object v2, p0, Lio/appmetrica/analytics/impl/qa;->f:Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final d()V
    .locals 4

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/qa;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/qa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/appmetrica/analytics/impl/qa;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/appmetrica/analytics/impl/qa;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/qa;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromSdkStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/appmetrica/analytics/impl/qa;->a:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/qa;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getFileFromAppStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, v1}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->copyToNullable(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lio/appmetrica/analytics/impl/qa;->g:Z

    sget-object p0, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final flushAsync()V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/qa;->c()Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/io/BufferedFileWriter;->flushAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
