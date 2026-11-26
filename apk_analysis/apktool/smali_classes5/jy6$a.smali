.class public final Ljy6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lty0;

.field public volatile c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljy6;


# direct methods
.method public constructor <init>(Ljy6;Lty0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lty0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy6$a;->d:Ljy6;

    iput-object p2, p0, Ljy6$a;->b:Lty0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ljy6$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const-string v0, "Callback failure for "

    const-string v1, "canceled due to "

    iget-object v2, p0, Ljy6$a;->d:Ljy6;

    iget-object v2, v2, Ljy6;->c:Lb37;

    iget-object v2, v2, Lb37;->a:Lfz3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "/..."

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lfz3$a;

    invoke-direct {v5}, Lfz3$a;-><init>()V

    invoke-virtual {v5, v2, v3}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ""

    const/4 v6, 0x0

    const/16 v7, 0xfb

    const-string v8, " \"\':;<=>@[]^`{}|/\\?#"

    invoke-static {v2, v6, v6, v7, v8}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lfz3$a;->b:Ljava/lang/String;

    invoke-static {v2, v6, v6, v7, v8}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lfz3$a;->c:Ljava/lang/String;

    invoke-virtual {v5}, Lfz3$a;->a()Lfz3;

    move-result-object v5

    iget-object v5, v5, Lfz3;->i:Ljava/lang/String;

    const-string v9, "OkHttp "

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Ljy6$a;->d:Ljy6;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_1
    iget-object v5, v9, Ljy6;->f:Lky6;

    invoke-virtual {v5}, Lat;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljy6;->e()Lz47;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v12, 0x1

    :try_start_3
    iget-object v13, p0, Ljy6$a;->b:Lty0;

    invoke-interface {v13, v9, v5}, Lty0;->onResponse(Lokhttp3/a;Lz47;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, v9, Ljy6;->b:Lokhttp3/OkHttpClient;

    :goto_1
    iget-object v0, v0, Lokhttp3/OkHttpClient;->b:Lko2;

    invoke-virtual {v0, p0}, Lko2;->c(Ljy6$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move v6, v12

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljy6;->cancel()V

    if-nez v6, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v1, p0, Ljy6$a;->b:Lty0;

    invoke-interface {v1, v9, v2}, Lty0;->onFailure(Lokhttp3/a;Ljava/io/IOException;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_0
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    move v12, v6

    :goto_4
    if-eqz v12, :cond_2

    sget-object v5, Lz86;->a:Lz86;

    sget-object v5, Lz86;->a:Lz86;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-boolean v13, v9, Ljy6;->p:Z

    if-eqz v13, :cond_1

    const-string v13, "canceled "

    goto :goto_5

    :cond_1
    move-object v13, v2

    :goto_5
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "call"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Ljy6;->c:Lb37;

    iget-object v13, v13, Lb37;->a:Lfz3;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v14, Lfz3$a;

    invoke-direct {v14}, Lfz3$a;-><init>()V

    invoke-virtual {v14, v13, v3}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v4, v14

    :catch_3
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v6, v6, v7, v8}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lfz3$a;->b:Ljava/lang/String;

    invoke-static {v2, v6, v6, v7, v8}, Lfz3$b;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lfz3$a;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lfz3$a;->a()Lfz3;

    move-result-object v2

    iget-object v2, v2, Lfz3;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lz86;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_6

    :cond_2
    iget-object v0, p0, Ljy6$a;->b:Lty0;

    invoke-interface {v0, v9, v1}, Lty0;->onFailure(Lokhttp3/a;Ljava/io/IOException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_6
    :try_start_8
    iget-object v0, v9, Ljy6;->b:Lokhttp3/OkHttpClient;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    :goto_7
    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_8
    :try_start_9
    iget-object v1, v9, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->b:Lko2;

    invoke-virtual {v1, p0}, Lko2;->c(Ljy6$a;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_9
    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw p0
.end method
