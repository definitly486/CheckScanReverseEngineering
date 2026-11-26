.class public final Lwp2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwp2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lio/grpc/l$d;

.field public final synthetic c:Lwp2;


# direct methods
.method public constructor <init>(Lwp2;Lio/grpc/l$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwp2$b;->c:Lwp2;

    const-string p1, "savedListener"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lwp2$b;->b:Lio/grpc/l$d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lwp2$b;->c:Lwp2;

    iget-object v1, v0, Lwp2;->g:Ljava/lang/String;

    iget-object v2, v0, Lwp2;->k:Lch8;

    const-string v3, "Using proxy address "

    sget-object v4, Lwp2;->s:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Attempting DNS resolution of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    iget v9, v0, Lwp2;->h:I

    invoke-static {v1, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    iget-object v9, v0, Lwp2;->b:Lzs6;

    invoke-interface {v9, v1}, Lzs6;->a(Ljava/net/InetSocketAddress;)Lys6;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v9, Lio/grpc/d;

    invoke-direct {v9, v1}, Lio/grpc/d;-><init>(Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_1
    move-object v9, v8

    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {}, Lio/grpc/l$e;->a()Lio/grpc/l$e$a;

    move-result-object v0

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v3, Ln88;

    invoke-direct {v3, v8, v1}, Ln88;-><init>(Lh88;Ljava/lang/Object;)V

    iput-object v3, v0, Lio/grpc/l$e$a;->a:Ln88;

    new-instance v1, Lio/grpc/l$e;

    iget-object v4, v0, Lio/grpc/l$e$a;->b:Lio/grpc/a;

    iget-object v0, v0, Lio/grpc/l$e$a;->c:Lio/grpc/l$b;

    invoke-direct {v1, v3, v4, v0}, Lio/grpc/l$e;-><init>(Ln88;Lio/grpc/a;Lio/grpc/l$b;)V

    move-object v8, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lwp2;->e()Lio/grpc/l$e;

    move-result-object v0

    move-object v8, v0

    :goto_2
    new-instance v0, Lau;

    invoke-direct {v0, v7, p0, v8}, Lau;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lch8;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v8, Lio/grpc/l$e;->a:Ln88;

    invoke-virtual {v0}, Ln88;->a()Z

    move-result v0

    new-instance v1, Lwp2$b$a;

    invoke-direct {v1, p0, v0}, Lwp2$b$a;-><init>(Lwp2$b;Z)V

    invoke-virtual {v2, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_3
    :try_start_1
    new-instance v1, Lg00;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p0, v0}, Lg00;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lch8;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_4

    iget-object v0, v8, Lio/grpc/l$e;->a:Ln88;

    invoke-virtual {v0}, Ln88;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v7

    :cond_4
    new-instance v0, Lwp2$b$a;

    invoke-direct {v0, p0, v6}, Lwp2$b$a;-><init>(Lwp2$b;Z)V

    invoke-virtual {v2, v0}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    if-eqz v8, :cond_5

    iget-object v1, v8, Lio/grpc/l$e;->a:Ln88;

    invoke-virtual {v1}, Ln88;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    move v6, v7

    :cond_5
    new-instance v1, Lwp2$b$a;

    invoke-direct {v1, p0, v6}, Lwp2$b$a;-><init>(Lwp2$b;Z)V

    invoke-virtual {v2, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method
