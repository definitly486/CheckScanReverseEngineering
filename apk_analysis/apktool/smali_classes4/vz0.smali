.class public final synthetic Lvz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lvz0;->b:I

    iput-object p1, p0, Lvz0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lvz0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lvz0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lvz0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lvz0;->c:Ljava/lang/Object;

    check-cast v0, Lmz9;

    iget-object v1, p0, Lvz0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lvz0;->e:Ljava/lang/Object;

    check-cast p0, Ls0a$a;

    invoke-virtual {v0, v1, p0}, Llma;->b(Ljava/lang/String;Llma$a;)Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string p0, "ImageLoader: can\'t load. Image already loading"

    invoke-static {v2, p0}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_0
    new-instance p0, Lo7a;

    invoke-direct {p0}, Lo7a;-><init>()V

    invoke-static {}, Lkt9;->b()Luy9;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lo7a;->o:Lvda;

    const-string v5, "DiskCache: OutOfMemoryError, called twice - "

    const-string v6, "DiskCache: exception - "

    const-string v7, "DiskCache: File disappeared before reading: "

    const-string v8, "DiskCache: Get image - "

    monitor-enter v3

    :try_start_0
    invoke-virtual {v3}, Luy9;->k()V

    const-string v9, ".img"

    invoke-virtual {v3, v1, v9}, Luy9;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v10, :cond_1

    monitor-exit v3

    :goto_0
    move-object v5, v2

    goto/16 :goto_4

    :cond_1
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v5

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_2
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    goto :goto_4

    :goto_1
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ly14;->t(Ljava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_2
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v7, "DiskCache: OutOfMemoryError, trying once again"

    invoke-static {v7}, Ly14;->t(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x2

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v3

    goto :goto_4

    :catch_1
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ly14;->t(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    monitor-exit v3

    goto :goto_0

    :goto_4
    iput-object v5, v4, Lvda;->c:Ljava/lang/Object;

    iget-object v4, p0, Lo7a;->o:Lvda;

    iget-object v5, v4, Lvda;->c:Ljava/lang/Object;

    if-eqz v5, :cond_4

    goto/16 :goto_8

    :goto_5
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HttpImageRequest: Unable to open disk cache and get image - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lo7a;->o:Lvda;

    const-string v5, "HttpImageRequest: "

    const-string v6, "Image request error - response code "

    const-string v7, "HttpImageRequest: Send image request - "

    const/4 v8, 0x0

    :try_start_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const v7, 0x5dfa5fa

    invoke-static {v7}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-static {v7}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URLConnection;

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v9, 0x2710

    :try_start_9
    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v7, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v9, "connection"

    const-string v10, "close"

    invoke-virtual {v7, v9, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ly14;->m(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    iput v9, v4, Lvda;->b:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_6

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3, v5, v1}, Lo7a;->U(Luy9;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_7

    :catchall_2
    move-exception v3

    goto :goto_6

    :cond_5
    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v4, Lvda;->c:Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v3

    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HttpImageRequest: Load in memory error - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    iput-boolean v8, v4, Lvda;->a:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lvda;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lvda;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :catchall_4
    move-exception v3

    move-object v7, v2

    :goto_6
    iput-boolean v8, v4, Lvda;->a:Z

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lvda;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "HttpImageRequest: Image request error - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lvda;->d:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Li01;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    iget-object v4, p0, Lo7a;->o:Lvda;

    :goto_8
    iget-object p0, v4, Lvda;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, p0}, Llma;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    return-void

    :pswitch_0
    iget-object v0, p0, Lvz0;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/impl/CameraCaptureCallback;

    iget-object v1, p0, Lvz0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/impl/CameraCallbackMap;

    iget-object p0, p0, Lvz0;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/RequestMetadata;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/impl/CameraCallbackMap;->p(Landroidx/camera/core/impl/CameraCaptureCallback;Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
