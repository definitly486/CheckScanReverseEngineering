.class public final Lio/appmetrica/analytics/impl/z6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/oa;

.field public final b:Lio/appmetrica/analytics/impl/q6;

.field public final c:Landroid/content/Context;

.field public final d:Lio/appmetrica/analytics/impl/na;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lio/appmetrica/analytics/impl/oa;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/oa;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/q6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/q6;-><init>()V

    invoke-static {p1}, Lio/appmetrica/analytics/impl/na;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/na;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lio/appmetrica/analytics/impl/z6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/oa;Lio/appmetrica/analytics/impl/q6;Lio/appmetrica/analytics/impl/na;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/oa;Lio/appmetrica/analytics/impl/q6;Lio/appmetrica/analytics/impl/na;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lio/appmetrica/analytics/impl/z6;->c:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lio/appmetrica/analytics/impl/z6;->a:Lio/appmetrica/analytics/impl/oa;

    .line 21
    iput-object p3, p0, Lio/appmetrica/analytics/impl/z6;->b:Lio/appmetrica/analytics/impl/q6;

    .line 22
    iput-object p4, p0, Lio/appmetrica/analytics/impl/z6;->d:Lio/appmetrica/analytics/impl/na;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ch;)V
    .locals 6

    iget-object v0, p0, Lio/appmetrica/analytics/impl/z6;->c:Landroid/content/Context;

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getCrashesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/z6;->b:Lio/appmetrica/analytics/impl/q6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_3

    :goto_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Ch;->e:Lio/appmetrica/analytics/impl/Mh;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V3;->a:Lio/appmetrica/analytics/impl/Pf;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v3, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v3, "PROCESS_CFG_PROCESS_SESSION_ID"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/z6;->d:Lio/appmetrica/analytics/impl/na;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/na;->b(Ljava/lang/String;)Lio/appmetrica/analytics/impl/J9;

    move-result-object v2

    :try_start_0
    iget-object v3, v2, Lio/appmetrica/analytics/impl/J9;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, v2, Lio/appmetrica/analytics/impl/J9;->b:Lio/appmetrica/analytics/impl/ma;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/ma;->a()V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/z6;->a:Lio/appmetrica/analytics/impl/oa;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Lio/appmetrica/analytics/impl/xb;

    iget-object v4, p1, Lio/appmetrica/analytics/impl/Ch;->a:Lio/appmetrica/analytics/impl/a6;

    iget-object v5, p1, Lio/appmetrica/analytics/impl/Ch;->e:Lio/appmetrica/analytics/impl/Mh;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Ch;->d:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, p1}, Lio/appmetrica/analytics/impl/xb;-><init>(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/V3;Ljava/util/HashMap;)V

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/xb;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/J9;->c()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/z6;->d:Lio/appmetrica/analytics/impl/na;

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Lio/appmetrica/analytics/impl/na;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    :catchall_1
    const/4 v0, 0x0

    :catch_1
    :catchall_2
    invoke-static {v0}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/J9;->c()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/z6;->d:Lio/appmetrica/analytics/impl/na;

    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/na;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
