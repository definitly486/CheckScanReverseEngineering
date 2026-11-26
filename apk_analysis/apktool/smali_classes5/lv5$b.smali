.class public final Llv5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llv5;->d(Lnz4$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Ljava/util/concurrent/CyclicBarrier;

.field public final synthetic d:Lzs;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f:Llv5;


# direct methods
.method public constructor <init>(Llv5;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CyclicBarrier;Lzs;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llv5$b;->f:Llv5;

    iput-object p2, p0, Llv5$b;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Llv5$b;->c:Ljava/util/concurrent/CyclicBarrier;

    iput-object p4, p0, Llv5$b;->d:Lzs;

    iput-object p5, p0, Llv5$b;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    new-instance v0, Llv5$b$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Liy6;

    invoke-direct {v1, v0}, Liy6;-><init>(Lv48;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Llv5$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Llv5$b;->c:Ljava/util/concurrent/CyclicBarrier;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :catch_2
    :try_start_1
    iget-object v0, p0, Llv5$b;->f:Llv5;

    sget-object v3, Lq03;->INTERNAL_ERROR:Lq03;

    sget-object v4, Lh88;->m:Lh88;

    const-string v5, "Timed out waiting for second handshake thread. The transport executor pool may have run out of threads"

    invoke-virtual {v4, v5}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Llv5;->q(ILq03;Lh88;)V
    :try_end_1
    .catch Lio/grpc/StatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Llv5$b;->f:Llv5;

    new-instance v2, Llv5$e;

    iget-object v3, v0, Llv5;->i:Ley3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ley3$c;

    invoke-direct {v3, v1}, Ley3$c;-><init>(Liy6;)V

    invoke-direct {v2, v0, v3}, Llv5$e;-><init>(Llv5;Ltk3;)V

    :goto_0
    iput-object v2, v0, Llv5;->v:Llv5$e;

    iget-object p0, p0, Llv5$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catch_3
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v3, v0, Llv5;->T:Lxy3;

    if-nez v3, :cond_0

    iget-object v3, v0, Llv5;->C:Ljavax/net/SocketFactory;

    iget-object v4, v0, Llv5;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Llv5$b;->f:Llv5;

    iget-object v5, v5, Llv5;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, v0, Llv5;->a:Ljava/net/Socket;

    goto :goto_2

    :cond_0
    iget-object v4, v3, Lxy3;->b:Ljava/net/InetSocketAddress;

    iget-object v5, v3, Lxy3;->c:Ljava/net/InetSocketAddress;

    iget-object v6, v3, Lxy3;->e:Ljava/lang/String;

    iget-object v3, v3, Lxy3;->f:Ljava/lang/String;

    invoke-virtual {v0, v5, v4, v6, v3}, Llv5;->f(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, v0, Llv5;->a:Ljava/net/Socket;

    :goto_2
    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v3, v0, Llv5;->D:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_2

    iget-object v4, v0, Llv5;->E:Ljavax/net/ssl/HostnameVerifier;

    iget-object v5, v0, Llv5;->a:Ljava/net/Socket;

    iget-object v0, v0, Llv5;->d:Ljava/lang/String;

    invoke-static {v0}, Lvs3;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v6, v0

    iget-object v0, p0, Llv5$b;->f:Llv5;

    invoke-virtual {v0}, Llv5;->i()I

    move-result v7

    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v8, v0, Llv5;->I:Lsw1;

    invoke-static/range {v3 .. v8}, Lrv5;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILsw1;)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    iget-object v3, p0, Llv5$b;->f:Llv5;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    iput-object v4, v3, Llv5;->b:Ljavax/net/ssl/SSLSession;

    iget-object v3, p0, Llv5$b;->f:Llv5;

    iput-object v0, v3, Llv5;->a:Ljava/net/Socket;

    move-object v0, v3

    :cond_2
    iget-object v0, v0, Llv5;->a:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v0, v0, Llv5;->a:Ljava/net/Socket;

    invoke-static {v0}, Lvp3;->f(Ljava/net/Socket;)Lct;

    move-result-object v0

    new-instance v3, Liy6;

    invoke-direct {v3, v0}, Liy6;-><init>(Lv48;)V
    :try_end_2
    .catch Lio/grpc/StatusException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Llv5$b;->d:Lzs;

    iget-object v1, p0, Llv5$b;->f:Llv5;

    iget-object v1, v1, Llv5;->a:Ljava/net/Socket;

    invoke-static {v1}, Lvp3;->e(Ljava/net/Socket;)Lbt;

    move-result-object v1

    iget-object v4, p0, Llv5$b;->f:Llv5;

    iget-object v4, v4, Llv5;->a:Ljava/net/Socket;

    invoke-virtual {v0, v1, v4}, Lzs;->a(Lbt;Ljava/net/Socket;)V

    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v1, v0, Llv5;->w:Lio/grpc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lio/grpc/a$a;

    invoke-direct {v4, v1}, Lio/grpc/a$a;-><init>(Lio/grpc/a;)V

    sget-object v1, Lio/grpc/f;->a:Lio/grpc/a$b;

    iget-object v5, p0, Llv5$b;->f:Llv5;

    iget-object v5, v5, Llv5;->a:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lio/grpc/a$a;->c(Lio/grpc/a$b;Ljava/lang/Object;)V

    sget-object v1, Lio/grpc/f;->b:Lio/grpc/a$b;

    iget-object v5, p0, Llv5$b;->f:Llv5;

    iget-object v5, v5, Llv5;->a:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lio/grpc/a$a;->c(Lio/grpc/a$b;Ljava/lang/Object;)V

    sget-object v1, Lio/grpc/f;->c:Lio/grpc/a$b;

    iget-object v5, p0, Llv5$b;->f:Llv5;

    iget-object v5, v5, Llv5;->b:Ljavax/net/ssl/SSLSession;

    invoke-virtual {v4, v1, v5}, Lio/grpc/a$a;->c(Lio/grpc/a$b;Ljava/lang/Object;)V

    sget-object v1, Lus3;->a:Lio/grpc/a$b;

    iget-object v5, p0, Llv5$b;->f:Llv5;

    iget-object v5, v5, Llv5;->b:Ljavax/net/ssl/SSLSession;

    if-nez v5, :cond_3

    sget-object v5, Lfl7;->NONE:Lfl7;

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :cond_3
    sget-object v5, Lfl7;->PRIVACY_AND_INTEGRITY:Lfl7;

    :goto_3
    invoke-virtual {v4, v1, v5}, Lio/grpc/a$a;->c(Lio/grpc/a$b;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/grpc/a$a;->a()Lio/grpc/a;

    move-result-object v1

    iput-object v1, v0, Llv5;->w:Lio/grpc/a;
    :try_end_3
    .catch Lio/grpc/StatusException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Llv5$b;->f:Llv5;

    new-instance v1, Llv5$e;

    iget-object v2, v0, Llv5;->i:Ley3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ley3$c;

    invoke-direct {v2, v3}, Ley3$c;-><init>(Liy6;)V

    invoke-direct {v1, v0, v2}, Llv5$e;-><init>(Llv5;Ltk3;)V

    iput-object v1, v0, Llv5;->v:Llv5$e;

    iget-object v0, p0, Llv5$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v1, v0, Llv5;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Llv5$b;->f:Llv5;

    iget-object v2, v0, Llv5;->a:Ljava/net/Socket;

    const-string v3, "socket"

    invoke-static {v2, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Llv5;->F:Ljava/net/Socket;

    iget-object p0, p0, Llv5$b;->f:Llv5;

    iget-object p0, p0, Llv5;->b:Ljavax/net/ssl/SSLSession;

    if-eqz p0, :cond_4

    new-instance v0, Li94$a;

    invoke-direct {v0, p0}, Li94$a;-><init>(Ljavax/net/ssl/SSLSession;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_4
    :goto_4
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_6
    :try_start_5
    iget-object v2, p0, Llv5$b;->f:Llv5;

    invoke-virtual {v2, v0}, Llv5;->m(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Llv5$b;->f:Llv5;

    new-instance v2, Llv5$e;

    iget-object v3, v0, Llv5;->i:Ley3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ley3$c;

    invoke-direct {v3, v1}, Ley3$c;-><init>(Liy6;)V

    invoke-direct {v2, v0, v3}, Llv5$e;-><init>(Llv5;Ltk3;)V

    goto/16 :goto_0

    :goto_7
    :try_start_6
    iget-object v3, p0, Llv5$b;->f:Llv5;

    sget-object v4, Lq03;->INTERNAL_ERROR:Lq03;

    iget-object v0, v0, Lio/grpc/StatusException;->b:Lh88;

    invoke-virtual {v3, v2, v4, v0}, Llv5;->q(ILq03;Lh88;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Llv5$b;->f:Llv5;

    new-instance v2, Llv5$e;

    iget-object v3, v0, Llv5;->i:Ley3;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ley3$c;

    invoke-direct {v3, v1}, Ley3$c;-><init>(Liy6;)V

    invoke-direct {v2, v0, v3}, Llv5$e;-><init>(Llv5;Ltk3;)V

    goto/16 :goto_0

    :goto_8
    iget-object v2, p0, Llv5$b;->f:Llv5;

    new-instance v3, Llv5$e;

    iget-object v4, v2, Llv5;->i:Ley3;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ley3$c;

    invoke-direct {v4, v1}, Ley3$c;-><init>(Liy6;)V

    invoke-direct {v3, v2, v4}, Llv5$e;-><init>(Llv5;Ltk3;)V

    iput-object v3, v2, Llv5;->v:Llv5$e;

    iget-object p0, p0, Llv5$b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
