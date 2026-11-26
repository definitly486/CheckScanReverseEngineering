.class public final synthetic Lpw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw4;->b:Landroid/content/Context;

    iput-object p2, p0, Lpw4;->c:Ljava/lang/String;

    iput-object p3, p0, Lpw4;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget-object v2, p0, Lpw4;->b:Landroid/content/Context;

    iget-object v3, p0, Lpw4;->c:Ljava/lang/String;

    iget-object v6, p0, Lpw4;->d:Ljava/lang/String;

    sget-object p0, Lah4;->b:Lom5;

    if-nez p0, :cond_3

    const-class v1, Lom5;

    monitor-enter v1

    :try_start_0
    sget-object p0, Lah4;->b:Lom5;

    if-nez p0, :cond_2

    new-instance p0, Lom5;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lah4;->c:Lfm5;

    if-nez v4, :cond_1

    const-class v4, Lfm5;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Lah4;->c:Lfm5;

    if-nez v5, :cond_0

    new-instance v5, Lfm5;

    new-instance v7, Lym2;

    invoke-direct {v7, v0}, Lym2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v7}, Lfm5;-><init>(Lym2;)V

    sput-object v5, Lah4;->c:Lfm5;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v4

    move-object v4, v5

    goto :goto_2

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_2
    new-instance v0, Luh2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v4, v0}, Lom5;-><init>(Lfm5;Luh2;)V

    sput-object p0, Lah4;->b:Lom5;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :goto_3
    monitor-exit v1

    :cond_3
    move-object v1, p0

    goto :goto_5

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_5
    const/4 p0, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v6, :cond_7

    iget-object v0, v1, Lom5;->a:Lfm5;

    :try_start_3
    invoke-virtual {v0, v3}, Lfm5;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    :catch_0
    move-object v0, v5

    goto :goto_7

    :cond_4
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Ll93;->ZIP:Ll93;

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".gz"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Ll93;->GZIP:Ll93;

    goto :goto_6

    :cond_6
    sget-object v8, Ll93;->JSON:Ll93;

    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lgv4;->a()V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_7
    if-nez v0, :cond_8

    :cond_7
    move-object v0, v5

    goto :goto_9

    :cond_8
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ll93;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    sget-object v8, Lom5$a;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v4, :cond_a

    if-eq v7, p0, :cond_9

    invoke-static {v0, v6}, Lww4;->d(Ljava/io/InputStream;Ljava/lang/String;)Lwx4;

    move-result-object v0

    goto :goto_8

    :cond_9
    :try_start_4
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v7, v6}, Lww4;->d(Ljava/io/InputStream;Ljava/lang/String;)Lwx4;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v7, Lwx4;

    invoke-direct {v7, v0}, Lwx4;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_8

    :cond_a
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v7, v6}, Lww4;->g(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lwx4;

    move-result-object v0

    :goto_8
    iget-object v0, v0, Lwx4;->a:Lnw4;

    if-eqz v0, :cond_7

    :goto_9
    if-eqz v0, :cond_b

    new-instance p0, Lwx4;

    invoke-direct {p0, v0}, Lwx4;-><init>(Lnw4;)V

    goto/16 :goto_10

    :cond_b
    invoke-static {}, Lgv4;->a()V

    const-string v7, "LottieFetchResult close failed "

    invoke-static {}, Lgv4;->a()V

    :try_start_5
    iget-object v0, v1, Lom5;->b:Luh2;

    invoke-virtual {v0, v3}, Luh2;->a(Ljava/lang/String;)Lth2;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, v8, Lth2;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne v0, p0, :cond_c

    goto :goto_c

    :goto_a
    move-object v5, v8

    goto/16 :goto_11

    :goto_b
    move-object v5, v8

    goto :goto_e

    :catch_2
    :cond_c
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_d

    :try_start_7
    iget-object p0, v8, Lth2;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object p0, v8, Lth2;->b:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lom5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lwx4;

    move-result-object p0

    iget-object v0, p0, Lwx4;->a:Lnw4;

    invoke-static {}, Lgv4;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_d
    :try_start_8
    invoke-virtual {v8}, Lth2;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_10

    :catch_3
    move-exception v0

    invoke-static {v7, v0}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :cond_d
    :try_start_9
    new-instance p0, Lwx4;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Lth2;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lwx4;-><init>(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_11

    :catch_5
    move-exception v0

    move-object p0, v0

    :goto_e
    :try_start_a
    new-instance v1, Lwx4;

    invoke-direct {v1, p0}, Lwx4;-><init>(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v5, :cond_e

    :try_start_b
    invoke-virtual {v5}, Lth2;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    move-object p0, v0

    invoke-static {v7, p0}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_f
    move-object p0, v1

    :goto_10
    if-eqz v6, :cond_f

    iget-object v0, p0, Lwx4;->a:Lnw4;

    if-eqz v0, :cond_f

    sget-object v1, Low4;->b:Low4;

    iget-object v1, v1, Low4;->a:Landroidx/collection/LruCache;

    invoke-virtual {v1, v6, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object p0

    :goto_11
    if-eqz v5, :cond_10

    :try_start_c
    invoke-virtual {v5}, Lth2;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_12

    :catch_7
    move-exception v0

    invoke-static {v7, v0}, Lgv4;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_12
    throw p0
.end method
