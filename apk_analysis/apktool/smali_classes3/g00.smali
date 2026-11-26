.class public final synthetic Lg00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg00;->b:I

    iput-object p2, p0, Lg00;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg00;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget v0, p0, Lg00;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg00;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lzu9;

    iget-object p0, p0, Lg00;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v4, "test-keys"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    const-string v4, "/system/app/Superuser.apk"

    const-string v5, "/sbin/su"

    const-string v6, "/system/bin/su"

    const-string v7, "/system/xbin/su"

    const-string v8, "/data/local/xbin/su"

    const-string v9, "/data/local/bin/su"

    const-string v10, "/system/sd/xbin/su"

    const-string v11, "/system/bin/failsafe/su"

    const-string v12, "/data/local/su"

    const-string v13, "/su/bin/su"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_1
    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "/system/xbin/which su"

    const-string v6, "/system/bin/which su"

    const-string v7, "which su"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    move v6, v0

    move v7, v3

    :goto_3
    const/4 v0, 0x3

    if-ge v7, v0, :cond_7

    aget-object v0, v5, v7

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v0

    goto :goto_5

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_4

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move v6, v1

    goto :goto_8

    :catchall_2
    move v6, v1

    goto :goto_7

    :cond_4
    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_7

    :goto_5
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    :goto_7
    if-eqz v8, :cond_5

    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move v6, v0

    :cond_7
    :goto_8
    if-nez v6, :cond_b

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v4, "/proc/"

    const-string v5, "/mounts"

    invoke-static {v0, v4, v5}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    const-string v0, "/sbin/.magisk/"

    const-string v5, "/sbin/.core/mirror"

    const-string v7, "/sbin/.core/img"

    const-string v8, "/sbin/.core/db-0/magisk.db"

    filled-new-array {v0, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v5, :cond_9

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_c

    :cond_9
    move v7, v3

    :goto_a
    const/4 v8, 0x4

    if-ge v7, v8, :cond_8

    :try_start_c
    aget-object v8, v0, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v8, :cond_a

    move v6, v1

    goto :goto_9

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    :cond_b
    :goto_c
    monitor-enter v2

    :try_start_f
    const-string v0, "rooted"

    if-eqz v6, :cond_c

    const-string v1, "1"

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_e

    :cond_c
    const-string v1, "0"

    :goto_d
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :goto_e
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    throw p0

    :pswitch_0
    iget-object v0, p0, Lg00;->c:Ljava/lang/Object;

    check-cast v0, Lwp2$b;

    iget-object p0, p0, Lg00;->d:Ljava/lang/Object;

    check-cast p0, Ljava/io/IOException;

    iget-object v2, v0, Lwp2$b;->b:Lio/grpc/l$d;

    invoke-static {}, Lio/grpc/l$e;->a()Lio/grpc/l$e$a;

    move-result-object v3

    sget-object v4, Lh88;->m:Lh88;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to resolve host "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lwp2$b;->c:Lwp2;

    iget-object v0, v0, Lwp2;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-virtual {v0, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    new-instance v0, Ln88;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Ln88;-><init>(Lh88;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh88;->f()Z

    move-result v4

    xor-int/2addr v1, v4

    const-string v4, "cannot use OK status: %s"

    invoke-static {v1, v4, p0}, Lo8;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object v0, v3, Lio/grpc/l$e$a;->a:Ln88;

    new-instance p0, Lio/grpc/l$e;

    iget-object v1, v3, Lio/grpc/l$e$a;->b:Lio/grpc/a;

    iget-object v3, v3, Lio/grpc/l$e$a;->c:Lio/grpc/l$b;

    invoke-direct {p0, v0, v1, v3}, Lio/grpc/l$e;-><init>(Ln88;Lio/grpc/a;Lio/grpc/l$b;)V

    invoke-virtual {v2, p0}, Lio/grpc/l$d;->a(Lio/grpc/l$e;)Lh88;

    return-void

    :pswitch_1
    iget-object v0, p0, Lg00;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/core/util/Consumer;

    iget-object p0, p0, Lg00;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/CameraState;

    invoke-static {v0, p0}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->a(Landroidx/core/util/Consumer;Landroidx/camera/core/CameraState;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg00;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/BackgroundThreadStateHandler;

    iget-object p0, p0, Lg00;->d:Ljava/lang/Object;

    check-cast p0, Llm3;

    invoke-static {v0, p0}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->a(Landroidx/media3/common/util/BackgroundThreadStateHandler;Llm3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
