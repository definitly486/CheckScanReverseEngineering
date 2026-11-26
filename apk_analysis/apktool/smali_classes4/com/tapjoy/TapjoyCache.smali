.class public final Lcom/tapjoy/TapjoyCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/io/File;

.field public final c:Ljava/util/Vector;

.field public final d:Ljava/util/concurrent/ExecutorService;

.field public final e:Lcl4;

.field public final f:Lcom/tapjoy/internal/r2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->a:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "Tapjoy/Cache/"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyCache;->b:Ljava/io/File;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lal5;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lal5;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lfh8;

    invoke-direct {v1, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    new-instance p1, Lcom/tapjoy/internal/r2;

    invoke-direct {p1}, Lcom/tapjoy/internal/r2;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/TapjoyCache;->f:Lcom/tapjoy/internal/r2;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCache;->a()V

    return-void
.end method

.method public static final a(Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TJKeyValueStorage;
    .locals 2

    .line 327
    new-instance v0, Lcom/tapjoy/TJKeyValueStorage;

    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->a:Landroid/content/Context;

    const-string v1, "tapjoyCacheData"

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/TJKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;Lnl3;JLjava/lang/String;)V
    .locals 11

    const-string v8, "Failed to cache URL: "

    const-string v9, "Successfully cached URL: "

    const-string v2, "Downloading URL to cache: "

    new-instance v10, Ljava/io/File;

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->b:Ljava/io/File;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".txt"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to create new cache file: "

    invoke-static {v4, v0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->f:Lcom/tapjoy/internal/r2;

    sget-object v2, Lmx2;->b:Lmx2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v2}, Lcom/tapjoy/internal/r2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object v0

    iget v2, v0, Lcom/tapjoy/internal/s2;->a:I

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :try_start_2
    iget-object v0, v0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v2}, Lex0;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v2, v5}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-static {v4, v2}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-nez v0, :cond_5

    const-wide/32 v4, 0x15180

    goto :goto_4

    :cond_5
    move-wide v4, p3

    :goto_4
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v5, v4, v6

    new-instance v2, Lcom/tapjoy/TapjoyCacheData;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, p1

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/tapjoy/TapjoyCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCacheData;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/tapjoy/TJKeyValueStorage;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with offerId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    if-eqz p2, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_7
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    throw v0
.end method

.method public static a(Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 346
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    .line 347
    :cond_1
    new-instance v1, Ljr;

    invoke-direct {v1, v0}, Ljr;-><init>([Ljava/lang/Object;)V

    .line 348
    :goto_0
    invoke-virtual {v1}, Ljr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljr;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 349
    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Ljava/io/File;)V

    goto :goto_0

    .line 350
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteFileOrDirectory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static final a(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCache;Lcom/tapjoy/TJTaskHandler;)V
    .locals 12

    const-string v0, "Starting to cache asset group size of "

    .line 328
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 330
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 331
    const-string v3, "url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 332
    const-string v3, "offerId"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    const-string v3, "ttl"

    const-wide/32 v7, 0x15180

    invoke-virtual {v0, v3, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 334
    :try_start_2
    invoke-static/range {v4 .. v11}, Lcom/tapjoy/TapjoyCache;->cacheUrl$default(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;Ljava/lang/String;JLnl3;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, p1

    goto :goto_1

    .line 335
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse asset at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in group - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 336
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 337
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid JSON array string for group caching. - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;)V

    .line 338
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public static synthetic cacheUrl$default(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;Ljava/lang/String;JLnl3;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    const-wide/32 p3, 0x15180

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    move-object p5, v0

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/tapjoy/TapjoyCache;->cacheUrl(Ljava/lang/String;Ljava/lang/String;JLnl3;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJKeyValueStorage;

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 341
    :cond_0
    sget-object v2, Lcom/tapjoy/TapjoyCacheData;->Companion:Lcom/tapjoy/TapjoyCacheData$Companion;

    invoke-virtual {v2, v0}, Lcom/tapjoy/TapjoyCacheData$Companion;->fromJson(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCacheData;->isExpired()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyCacheData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 343
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCache;->removeUrlCache(Ljava/lang/String;)Z

    return-object v1
.end method

.method public final a()V
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJKeyValueStorage;

    .line 317
    invoke-virtual {v0}, Lcom/tapjoy/TJKeyValueStorage;->getAll()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 318
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 319
    sget-object v3, Lcom/tapjoy/TapjoyCacheData;->Companion:Lcom/tapjoy/TapjoyCacheData$Companion;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tapjoy/TapjoyCacheData$Companion;->fromJson(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCacheData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 321
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyCacheData;->isExpired()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "http"

    const/4 v3, 0x0

    .line 322
    invoke-static {v2, v1, v3}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    if-eqz v4, :cond_3

    .line 323
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJKeyValueStorage;

    .line 325
    invoke-virtual {v1, v2}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Removed invalid or expired cache entry for key: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final cacheUrl(Ljava/lang/String;Ljava/lang/String;JLnl3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lnl3<",
            "-",
            "Ljava/lang/Boolean;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "URL is already being downloaded: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p5, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string p0, "URL is already cached and valid: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p5, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lkk8;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    move-wide v5, p3

    move-object v4, p5

    invoke-direct/range {v1 .. v7}, Lkk8;-><init>(Lcom/tapjoy/TapjoyCache;Ljava/lang/String;Lnl3;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :goto_0
    if-eqz v4, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final cacheUrlGroup(Lorg/json/JSONArray;Lcom/tapjoy/TJTaskHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/tapjoy/TJTaskHandler<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljk8;

    invoke-direct {v1, p1, p0, p2}, Ljk8;-><init>(Lorg/json/JSONArray;Lcom/tapjoy/TapjoyCache;Lcom/tapjoy/TJTaskHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lcom/tapjoy/TJTaskHandler;->onComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public final cachedAssetsToJSON()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-virtual {p0}, Lcom/tapjoy/TJKeyValueStorage;->getAll()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/tapjoy/TapjoyCacheData;->Companion:Lcom/tapjoy/TapjoyCacheData$Companion;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tapjoy/TapjoyCacheData$Companion;->fromJson(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCacheData;->isExpired()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/tapjoy/TapjoyCacheData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final clearUrlCache()V
    .locals 2

    const-string v0, "Cleaning Tapjoy cache!"

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/tapjoy/TapjoyCache;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Created new cache directory at: "

    invoke-static {v1, v0}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-virtual {p0}, Lcom/tapjoy/TJKeyValueStorage;->reset()V

    return-void
.end method

.method public final getCachedDataForURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object p0

    return-object p0
.end method

.method public final getPathOfCachedURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "getPathOfCachedURL -- key: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/lang/String;)Lcom/tapjoy/TapjoyCacheData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCacheData;->getLocalFilePath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "file://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeUrlCache(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJKeyValueStorage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJKeyValueStorage;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/TJKeyValueStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyCache;->a(Ljava/io/File;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/tapjoy/TapjoyCache;->e:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/TJKeyValueStorage;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJKeyValueStorage;->remove(Ljava/lang/String;)V

    const-string p0, "removeUrlCache -- key: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
