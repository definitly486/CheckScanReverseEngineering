.class public final synthetic Lzg4;
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

    iput p1, p0, Lzg4;->b:I

    iput-object p2, p0, Lzg4;->c:Ljava/lang/Object;

    iput-object p3, p0, Lzg4;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lzg4;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lzg4;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;

    iget-object p0, p0, Lzg4;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/imagecapture/RequestWithCallback;

    invoke-static {v0, p0}, Landroidx/camera/core/imagecapture/TakePictureManagerImpl;->a(Landroidx/camera/core/imagecapture/TakePictureManagerImpl;Landroidx/camera/core/imagecapture/RequestWithCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lzg4;->c:Ljava/lang/Object;

    check-cast v0, Lqd6;

    iget-object p0, p0, Lzg4;->d:Ljava/lang/Object;

    check-cast p0, Lcom/posthog/PostHogEvent;

    iget-object v1, v0, Lqd6;->e:Lod6$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lod6$a;->a()Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lqd6;->d:Led6;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgu8;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Led6;->b:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v1, Led6;->a:Lnb6;

    invoke-virtual {v3}, Lnb6;->b()Lwd6;

    move-result-object v3

    sget-object v5, Lha1;->b:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v5, Ljava/io/BufferedWriter;

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v3, v3, Lwd6;->a:Lcom/google/gson/Gson;

    new-instance v6, Ldd6;

    invoke-direct {v6}, Ldd6;-><init>()V

    iget-object v6, v6, Lx39;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v3, p0, v6, v5}, Lcom/google/gson/Gson;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v3, v1, Led6;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, v1, Led6;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_6
    invoke-static {v4, v2}, Lm96;->c(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    iget-object v1, v1, Led6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->v:Lic6;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not write replay buffer file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lic6;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v1, v0, Lqd6;->a:Lnb6;

    iget-object v1, v1, Lnb6;->v:Lic6;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Buffered replay event \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/posthog/PostHogEvent;->getEvent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. Buffer depth: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lqd6;->d:Led6;

    invoke-virtual {p0}, Led6;->a()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lic6;->a(Ljava/lang/String;)V

    iget-object p0, v0, Lqd6;->e:Lod6$a;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lod6$a;->a:Lod6;

    iget-object v1, p0, Lod6;->r:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-boolean v2, p0, Lod6;->u:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit v1

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v1, p0, Lod6;->l:Z

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v0}, Lod6;->l(Lqd6;)V

    goto :goto_3

    :catchall_4
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2
    iget-object v1, v0, Lqd6;->e:Lod6$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lod6$a;->a:Lod6;

    iget-boolean v1, v1, Lod6;->l:Z

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    iget-object v0, v0, Lqd6;->b:Lwc6;

    invoke-virtual {v0, p0}, Lwc6;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lzg4;->c:Ljava/lang/Object;

    check-cast v0, Lio/appmetrica/analytics/impl/qg;

    iget-object p0, p0, Lzg4;->d:Ljava/lang/Object;

    check-cast p0, Lio/appmetrica/analytics/impl/yg;

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/L9;->a(Lio/appmetrica/analytics/impl/qg;Lio/appmetrica/analytics/impl/yg;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
