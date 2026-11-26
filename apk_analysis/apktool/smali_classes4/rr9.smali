.class public final synthetic Lrr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lsr9;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lmt9$a;


# direct methods
.method public synthetic constructor <init>(Lsr9;Ljava/lang/String;Lmt9$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrr9;->b:Lsr9;

    iput-object p2, p0, Lrr9;->c:Ljava/lang/String;

    iput-object p3, p0, Lrr9;->d:Lmt9$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lrr9;->b:Lsr9;

    iget-object v1, p0, Lrr9;->c:Ljava/lang/String;

    iget-object p0, p0, Lrr9;->d:Lmt9$a;

    invoke-virtual {v0, v1, p0}, Llma;->b(Ljava/lang/String;Llma$a;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string p0, "VideoLoader: can\'t load. Video already loading"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "HttpVideoRequest: "

    const-string v3, "Video request error - response code "

    const-string v4, "HttpVideoRequest: "

    const-string v5, "HttpVideoRequest: Send video request - "

    new-instance v6, Lvda;

    invoke-direct {v6}, Lvda;-><init>()V

    invoke-static {}, Lkt9;->b()Luy9;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    const-string v9, ".mp4"

    const-string v10, "DiskCache: exception - "

    const-string v11, "DiskCache: Get path - "

    monitor-enter v7

    :try_start_0
    invoke-virtual {v7}, Luy9;->k()V

    invoke-virtual {v7, v1, v9}, Luy9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v12, :cond_1

    monitor-exit v7

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ly14;->t(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v7

    goto :goto_0

    :goto_1
    iput-object v9, v6, Lvda;->c:Ljava/lang/Object;

    if-eqz v9, :cond_2

    goto/16 :goto_4

    :cond_2
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const v5, 0x5dfa5fa

    invoke-static {v5}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URLConnection;

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v9, 0x2710

    :try_start_5
    invoke-virtual {v5, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v5, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v9, "connection"

    const-string v10, "close"

    invoke-virtual {v5, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ly14;->m(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    iput v9, v6, Lvda;->b:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_4

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v7, p0, v1}, Luy9;->e(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lvda;->c:Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    iput-boolean v8, v6, Lvda;->a:Z

    const-string p0, "Video request error - can\'t save video to disk cache"

    iput-object p0, v6, Lvda;->d:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lvda;->d:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iput-boolean v8, v6, Lvda;->a:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lvda;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, v6, Lvda;->d:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v5, v2

    :goto_2
    iput-boolean v8, v6, Lvda;->a:Z

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lvda;->d:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "HttpVideoRequest: Video request error - "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lvda;->d:Ljava/lang/String;

    invoke-static {p0, v3, v2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "HttpVideoRequest: Unable to open disk cache and load/save video "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, v6, Lvda;->a:Z

    :cond_6
    :goto_4
    iget-object p0, v6, Lvda;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Llma;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
