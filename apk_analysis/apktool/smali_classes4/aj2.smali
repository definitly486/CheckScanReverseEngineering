.class public final synthetic Laj2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Laj2;->b:I

    iput-object p1, p0, Laj2;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Laj2;->b:I

    iget-object v0, v0, Laj2;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    check-cast v1, Ltd6;

    iget-object v2, v1, Ltd6;->b:Lta6;

    iget-object v0, v2, Lnb6;->F:Llc6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Llc6;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lnb6;->v:Lic6;

    const-string v1, "Network isn\'t connected."

    invoke-interface {v0, v1}, Lic6;->a(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_0
    const-string v3, "Error deleting file: "

    iget-object v0, v2, Lnb6;->A:Ljava/lang/String;

    if-eqz v0, :cond_b

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lnb6;->t:Ljava/lang/String;

    const-string v7, ".tmp"

    invoke-static {v0, v6, v7}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lhe6;->c(Lnb6;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_11

    :cond_1
    const/16 v4, 0x2e

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Lzv6$a;

    invoke-direct {v0, v5}, Lzv6$a;-><init>(Ljava/io/File;)V

    const/4 v7, 0x1

    iput-boolean v7, v0, Lzv6$a;->b:Z

    invoke-virtual {v0}, Lzv6$a;->a()Lzv6;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :cond_2
    :goto_0
    :try_start_1
    iget v0, v8, Lzv6;->g:I

    if-nez v0, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lzv6$c;

    invoke-direct {v11, v8}, Lzv6$c;-><init>(Lzv6;)V

    const/4 v12, 0x0

    :cond_4
    invoke-virtual {v11}, Lzv6$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v11}, Lzv6$c;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Lnb6;->b()Lwd6;

    move-result-object v0

    sget-object v14, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v14, Ljava/io/BufferedReader;

    const/16 v9, 0x2000

    invoke-direct {v14, v15, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iget-object v0, v0, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v9, Lsd6;

    invoke-direct {v9}, Lsd6;-><init>()V

    iget-object v9, v9, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v14, v9}, Lcom/google/gson/Gson;->e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/posthog/PostHogEvent;

    if-eqz v0, :cond_5

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v11, v6}, Ltd6;->c(Lzv6$c;Ljava/lang/Throwable;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static {v13, v9}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    invoke-virtual {v1, v11, v0}, Ltd6;->c(Lzv6$c;Ljava/lang/Throwable;)V

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v9, v2, Lnb6;->h:I

    if-lt v0, v9, :cond_4

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v8

    goto/16 :goto_10

    :cond_6
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v0, :cond_2

    :try_start_8
    iget-object v0, v1, Ltd6;->c:Ldb6;

    invoke-virtual {v0, v10}, Ldb6;->a(Ljava/util/List;)V
    :try_end_8
    .catch Lcom/posthog/internal/PostHogApiError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-lez v12, :cond_2

    if-gt v7, v12, :cond_2

    move v9, v7

    :goto_7
    :try_start_9
    invoke-virtual {v8}, Lzv6;->m()V
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    :try_start_a
    iget-object v10, v2, Lnb6;->v:Lic6;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Lic6;->a(Ljava/lang/String;)V

    :goto_8
    if-eq v9, v12, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :catch_0
    invoke-static {v2, v5}, Lhe6;->a(Lnb6;Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v1, v0

    move v9, v7

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_b

    :goto_9
    :try_start_b
    invoke-static {v0}, Lhe6;->d(Ljava/io/IOException;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    xor-int/2addr v1, v7

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    move v9, v1

    :goto_a
    move-object v1, v0

    goto :goto_d

    :goto_b
    :try_start_d
    iget v1, v0, Lcom/posthog/internal/PostHogApiError;->b:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/16 v6, 0x190

    if-ge v1, v6, :cond_7

    const/4 v9, 0x0

    goto :goto_c

    :cond_7
    move v9, v7

    :goto_c
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_a

    :goto_d
    if-eqz v9, :cond_8

    if-lez v12, :cond_8

    if-gt v7, v12, :cond_8

    :goto_e
    :try_start_f
    invoke-virtual {v8}, Lzv6;->m()V
    :try_end_f
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_f

    :catchall_8
    move-exception v0

    :try_start_10
    iget-object v6, v2, Lnb6;->v:Lic6;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lic6;->a(Ljava/lang/String;)V

    :goto_f
    if-eq v7, v12, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :catch_3
    invoke-static {v2, v5}, Lhe6;->a(Lnb6;Ljava/io/File;)V

    :cond_8
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_9
    :try_start_11
    invoke-virtual {v8}, Lzv6;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    goto :goto_11

    :catchall_9
    move-exception v0

    :goto_10
    :try_start_12
    iget-object v1, v2, Lnb6;->v:Lic6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flushing legacy events failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lic6;->a(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-eqz v6, :cond_b

    :try_start_13
    invoke-virtual {v6}, Lzv6;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    goto :goto_11

    :catchall_a
    move-exception v0

    if-eqz v6, :cond_a

    :try_start_14
    invoke-virtual {v6}, Lzv6;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :catchall_b
    :cond_a
    throw v0

    :catchall_c
    :cond_b
    :goto_11
    return-void

    :pswitch_0
    check-cast v0, Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
