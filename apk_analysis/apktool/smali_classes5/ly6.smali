.class public final Lly6;
.super Lhy3$b;
.source "SourceFile"

# interfaces
.implements Llw1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lly6$a;
    }
.end annotation


# instance fields
.field public final b:Li87;

.field public c:Ljava/net/Socket;

.field public d:Ljava/net/Socket;

.field public e:Llu3;

.field public f:Lts6;

.field public g:Lhy3;

.field public h:Liy6;

.field public i:Lhy6;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:J


# direct methods
.method public constructor <init>(Lpy6;Li87;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lhy3$b;-><init>()V

    iput-object p2, p0, Lly6;->b:Li87;

    const/4 p1, 0x1

    iput p1, p0, Lly6;->o:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lly6;->p:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lly6;->q:J

    return-void
.end method

.method public static e(Lokhttp3/OkHttpClient;Li87;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Li87;->a:Ll9;

    iget-object v1, v0, Ll9;->g:Ljava/net/ProxySelector;

    iget-object v0, v0, Ll9;->h:Lfz3;

    invoke-virtual {v0}, Lfz3;->g()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, Lokhttp3/OkHttpClient;->C:Lj87;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lj87;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Lts6;
    .locals 0

    iget-object p0, p0, Lly6;->f:Lts6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final declared-synchronized b(Lhy3;Lor7;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p2, Lor7;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, Lor7;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Lly6;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Lvy3;)V
    .locals 1

    sget-object p0, Lp03;->REFUSED_STREAM:Lp03;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lvy3;->c(Lp03;Ljava/io/IOException;)V

    return-void
.end method

.method public final d(IIIZLokhttp3/a;Lokhttp3/b;)V
    .locals 12

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lly6;->f:Lts6;

    if-nez v0, :cond_e

    iget-object v0, p0, Lly6;->b:Li87;

    iget-object v0, v0, Li87;->a:Ll9;

    iget-object v1, v0, Ll9;->j:Ljava/util/List;

    new-instance v7, Luw1;

    invoke-direct {v7, v1}, Luw1;-><init>(Ljava/util/List;)V

    iget-object v2, v0, Ll9;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_2

    sget-object v0, Ltw1;->f:Ltw1;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lly6;->b:Li87;

    iget-object v0, v0, Li87;->a:Ll9;

    iget-object v0, v0, Ll9;->h:Lfz3;

    iget-object v0, v0, Lfz3;->d:Ljava/lang/String;

    sget-object v1, Lz86;->a:Lz86;

    sget-object v1, Lz86;->a:Lz86;

    invoke-virtual {v1, v0}, Lz86;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "CLEARTEXT communication to "

    const-string p3, " not permitted by network security policy"

    invoke-static {p2, v0, p3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_1
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "CLEARTEXT communication not enabled for client"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_2
    iget-object v0, v0, Ll9;->i:Ljava/util/List;

    sget-object v1, Lts6;->H2_PRIOR_KNOWLEDGE:Lts6;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_0
    const/4 v8, 0x0

    move-object v9, v8

    :goto_1
    const/4 v10, 0x1

    :try_start_0
    iget-object v0, p0, Lly6;->b:Li87;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v1, v0, Li87;->a:Ll9;

    iget-object v1, v1, Ll9;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_3

    iget-object v0, v0, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v0, v1, :cond_3

    move v0, v10

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lly6;->g(IIILokhttp3/a;Lokhttp3/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v11, v3

    move-object v2, v5

    move-object v1, v6

    :try_start_3
    iget-object v0, p0, Lly6;->c:Ljava/net/Socket;

    if-nez v0, :cond_5

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_3
    move-object v6, v0

    goto :goto_7

    :catch_1
    move-exception v0

    move v11, v3

    move-object v2, v5

    move-object v1, v6

    goto :goto_3

    :cond_4
    move v11, p2

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, p1, p2, v2, v1}, Lly6;->f(IILokhttp3/a;Lokhttp3/b;)V

    :cond_5
    invoke-virtual {p0, v7, v2, v1}, Lly6;->h(Luw1;Lokhttp3/a;Lokhttp3/b;)V

    iget-object v0, p0, Lly6;->b:Li87;

    iget-object v3, v0, Li87;->c:Ljava/net/InetSocketAddress;

    iget-object v0, v0, Li87;->b:Ljava/net/Proxy;

    iget-object v4, p0, Lly6;->f:Lts6;

    invoke-virtual {v1, v2, v3, v0, v4}, Lokhttp3/b;->connectEnd(Lokhttp3/a;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lts6;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    iget-object p1, p0, Lly6;->b:Li87;

    iget-object p2, p1, Li87;->a:Ll9;

    iget-object p2, p2, Ll9;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_7

    iget-object p1, p1, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lly6;->c:Ljava/net/Socket;

    if-eqz p1, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Too many tunnel connections attempted: 21"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lly6;->q:J

    return-void

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    move v11, p2

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    goto :goto_3

    :goto_7
    iget-object v0, p0, Lly6;->d:Ljava/net/Socket;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_8
    iget-object v0, p0, Lly6;->c:Ljava/net/Socket;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_9
    iput-object v8, p0, Lly6;->d:Ljava/net/Socket;

    iput-object v8, p0, Lly6;->c:Ljava/net/Socket;

    iput-object v8, p0, Lly6;->h:Liy6;

    iput-object v8, p0, Lly6;->i:Lhy6;

    iput-object v8, p0, Lly6;->e:Llu3;

    iput-object v8, p0, Lly6;->f:Lts6;

    iput-object v8, p0, Lly6;->g:Lhy3;

    iput v10, p0, Lly6;->o:I

    iget-object v0, p0, Lly6;->b:Li87;

    iget-object v3, v0, Li87;->c:Ljava/net/InetSocketAddress;

    iget-object v4, v0, Li87;->b:Ljava/net/Proxy;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lokhttp3/b;->connectFailed(Lokhttp3/a;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lts6;Ljava/io/IOException;)V

    if-nez v9, :cond_a

    new-instance v9, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v9, v6}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    :cond_a
    iget-object v0, v9, Lokhttp3/internal/connection/RouteException;->b:Ljava/io/IOException;

    invoke-static {v0, v6}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object v6, v9, Lokhttp3/internal/connection/RouteException;->c:Ljava/io/IOException;

    :goto_8
    if-eqz p4, :cond_c

    iput-boolean v10, v7, Luw1;->d:Z

    iget-boolean v0, v7, Luw1;->c:Z

    if-eqz v0, :cond_c

    instance-of v0, v6, Ljava/net/ProtocolException;

    if-nez v0, :cond_c

    instance-of v0, v6, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_c

    instance-of v0, v6, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-nez v0, :cond_c

    :cond_b
    instance-of v0, v6, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v0, :cond_c

    instance-of v0, v6, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_c

    goto/16 :goto_1

    :cond_c
    throw v9

    :cond_d
    new-instance p0, Lokhttp3/internal/connection/RouteException;

    new-instance p1, Ljava/net/UnknownServiceException;

    const-string p2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p1, p2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p0

    :cond_e
    const-string p0, "already connected"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final f(IILokhttp3/a;Lokhttp3/b;)V
    .locals 4

    iget-object v0, p0, Lly6;->b:Li87;

    iget-object v1, v0, Li87;->b:Ljava/net/Proxy;

    iget-object v0, v0, Li87;->a:Ll9;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lly6$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Ll9;->b:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object v0, p0, Lly6;->c:Ljava/net/Socket;

    iget-object v2, p0, Lly6;->b:Li87;

    iget-object v2, v2, Li87;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p4, p3, v2, v1}, Lokhttp3/b;->connectStart(Lokhttp3/a;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lz86;->a:Lz86;

    sget-object p2, Lz86;->a:Lz86;

    iget-object p3, p0, Lly6;->b:Li87;

    iget-object p3, p3, Li87;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v0, p3, p1}, Lz86;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lvp3;->f(Ljava/net/Socket;)Lct;

    move-result-object p1

    new-instance p2, Liy6;

    invoke-direct {p2, p1}, Liy6;-><init>(Lv48;)V

    iput-object p2, p0, Lly6;->h:Liy6;

    invoke-static {v0}, Lvp3;->e(Ljava/net/Socket;)Lbt;

    move-result-object p1

    new-instance p2, Lhy6;

    invoke-direct {p2, p1}, Lhy6;-><init>(Ls18;)V

    iput-object p2, p0, Lly6;->i:Lhy6;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "throw with null exception"

    invoke-static {p1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to connect to "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lly6;->b:Li87;

    iget-object p0, p0, Li87;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final g(IIILokhttp3/a;Lokhttp3/b;)V
    .locals 10

    new-instance v0, Lb37$a;

    invoke-direct {v0}, Lb37$a;-><init>()V

    iget-object v1, p0, Lly6;->b:Li87;

    iget-object v2, v1, Li87;->a:Ll9;

    iget-object v2, v2, Ll9;->h:Lfz3;

    iput-object v2, v0, Lb37$a;->a:Lfz3;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    iget-object v1, v1, Li87;->a:Ll9;

    iget-object v1, v1, Ll9;->h:Lfz3;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lgb9;->v(Lfz3;Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Host"

    invoke-virtual {v0, v4, v1}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Proxy-Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v0, v1, v4}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v4, "okhttp/4.12.0"

    invoke-virtual {v0, v1, v4}, Lb37$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb37$a;->a()Lb37;

    move-result-object v0

    new-instance v1, Lz47$a;

    invoke-direct {v1}, Lz47$a;-><init>()V

    iput-object v0, v1, Lz47$a;->a:Lb37;

    sget-object v4, Lts6;->HTTP_1_1:Lts6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v1, Lz47$a;->b:Lts6;

    const/16 v4, 0x197

    iput v4, v1, Lz47$a;->c:I

    const-string v5, "Preemptive Authenticate"

    iput-object v5, v1, Lz47$a;->d:Ljava/lang/String;

    sget-object v5, Lgb9;->c:Lc57;

    iput-object v5, v1, Lz47$a;->g:Lb57;

    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lz47$a;->k:J

    iput-wide v5, v1, Lz47$a;->l:J

    iget-object v7, v1, Lz47$a;->f:Ljv3$a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "Proxy-Authenticate"

    invoke-static {v8}, Ljv3$b;->a(Ljava/lang/String;)V

    const-string v9, "OkHttp-Preemptive"

    invoke-static {v9, v8}, Ljv3$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljv3$a;->g(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljv3$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lz47$a;->a()Lz47;

    iget-object v1, v0, Lb37;->a:Lfz3;

    invoke-virtual {p0, p1, p2, p4, p5}, Lly6;->f(IILokhttp3/a;Lokhttp3/b;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lgb9;->v(Lfz3;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lly6;->h:Liy6;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p5, p0, Lly6;->i:Lhy6;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldy3;

    invoke-direct {v1, v3, p0, p4, p5}, Ldy3;-><init>(Lokhttp3/OkHttpClient;Lly6;Liy6;Lhy6;)V

    iget-object p0, p4, Liy6;->b:Lv48;

    invoke-interface {p0}, Lv48;->r()Lwv8;

    move-result-object p0

    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lwv8;->g(J)Lwv8;

    iget-object p0, p5, Lhy6;->b:Ls18;

    invoke-interface {p0}, Ls18;->r()Lwv8;

    move-result-object p0

    int-to-long p2, p3

    invoke-virtual {p0, p2, p3}, Lwv8;->g(J)Lwv8;

    iget-object p0, v0, Lb37;->c:Ljv3;

    invoke-virtual {v1, p0, p1}, Ldy3;->j(Ljv3;Ljava/lang/String;)V

    invoke-virtual {v1}, Ldy3;->e()V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ldy3;->h(Z)Lz47$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lz47$a;->a:Lb37;

    invoke-virtual {p0}, Lz47$a;->a()Lz47;

    move-result-object p0

    iget p1, p0, Lz47;->e:I

    invoke-static {p0}, Lgb9;->j(Lz47;)J

    move-result-wide p2

    cmp-long p0, p2, v5

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, p3}, Ldy3;->i(J)Ldy3$d;

    move-result-object p0

    const p2, 0x7fffffff

    invoke-static {p0, p2}, Lgb9;->t(Lv48;I)Z

    invoke-virtual {p0}, Ldy3$d;->close()V

    :goto_0
    const/16 p0, 0xc8

    if-eq p1, p0, :cond_2

    if-ne p1, v4, :cond_1

    const-string p0, "Failed to authenticate with proxy"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Unexpected response code for CONNECT: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p4, Liy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->P()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p5, Lhy6;->c:Lbu0;

    invoke-virtual {p0}, Lbu0;->P()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const-string p0, "TLS tunnel buffered too many bytes!"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Luw1;Lokhttp3/a;Lokhttp3/b;)V
    .locals 10

    iget-object v0, p0, Lly6;->b:Li87;

    iget-object v0, v0, Li87;->a:Ll9;

    iget-object v1, v0, Ll9;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_1

    iget-object p1, v0, Ll9;->i:Ljava/util/List;

    sget-object p2, Lts6;->H2_PRIOR_KNOWLEDGE:Lts6;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lly6;->c:Ljava/net/Socket;

    if-eqz p1, :cond_0

    iput-object p3, p0, Lly6;->d:Ljava/net/Socket;

    iput-object p2, p0, Lly6;->f:Lts6;

    invoke-virtual {p0}, Lly6;->m()V

    return-void

    :cond_0
    iput-object p3, p0, Lly6;->d:Ljava/net/Socket;

    sget-object p1, Lts6;->HTTP_1_1:Lts6;

    iput-object p1, p0, Lly6;->f:Lts6;

    return-void

    :cond_1
    invoke-virtual {p3, p2}, Lokhttp3/b;->secureConnectStart(Lokhttp3/a;)V

    const-string v0, "Hostname "

    const-string v1, "\n              |Hostname "

    iget-object v2, p0, Lly6;->b:Li87;

    iget-object v2, v2, Li87;->a:Ll9;

    iget-object v3, v2, Ll9;->c:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lly6;->c:Ljava/net/Socket;

    iget-object v6, v2, Ll9;->h:Lfz3;

    iget-object v7, v6, Lfz3;->d:Ljava/lang/String;

    iget v6, v6, Lfz3;->e:I

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v7, v6, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v3}, Luw1;->a(Ljavax/net/ssl/SSLSocket;)Ltw1;

    move-result-object p1

    iget-boolean v5, p1, Ltw1;->b:Z

    if-eqz v5, :cond_2

    sget-object v5, Lz86;->a:Lz86;

    sget-object v5, Lz86;->a:Lz86;

    iget-object v6, v2, Ll9;->h:Lfz3;

    iget-object v6, v6, Lfz3;->d:Ljava/lang/String;

    iget-object v7, v2, Ll9;->i:Ljava/util/List;

    invoke-virtual {v5, v3, v6, v7}, Lz86;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto/16 :goto_2

    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Llu3$a;->a(Ljavax/net/ssl/SSLSession;)Llu3;

    move-result-object v6

    iget-object v7, v2, Ll9;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Ll9;->h:Lfz3;

    iget-object v8, v8, Lfz3;->d:Ljava/lang/String;

    invoke-interface {v7, v8, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v6}, Llu3;->a()Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v2, Ll9;->h:Lfz3;

    iget-object p3, p3, Lfz3;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not verified:\n              |    certificate: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lu81;->c:Lu81;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sha256/"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lgx0;->e:Lgx0;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lgx0$a;->d([B)Lgx0;

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-virtual {v0, v1}, Lgx0;->e(Ljava/lang/String;)Lgx0;

    move-result-object v0

    invoke-virtual {v0}, Lgx0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n              |    DN: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p3

    invoke-interface {p3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n              |    subjectAltNames: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x7

    invoke-static {p0, p3}, Lev5;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lev5;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    check-cast p3, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p3}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n              "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna8;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v2, Ll9;->h:Lfz3;

    iget-object p2, p2, Lfz3;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v0, v2, Ll9;->e:Lu81;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llu3;

    iget-object v5, v6, Llu3;->a:Lyw8;

    iget-object v7, v6, Llu3;->b:Lyj1;

    iget-object v8, v6, Llu3;->c:Ljava/util/List;

    new-instance v9, Lmy6;

    invoke-direct {v9, v0, v6, v2}, Lmy6;-><init>(Lu81;Llu3;Ll9;)V

    invoke-direct {v1, v5, v7, v8, v9}, Llu3;-><init>(Lyw8;Lyj1;Ljava/util/List;Lll3;)V

    iput-object v1, p0, Lly6;->e:Llu3;

    iget-object v1, v2, Ll9;->h:Lfz3;

    iget-object v1, v1, Lfz3;->d:Ljava/lang/String;

    new-instance v2, Lny6;

    invoke-direct {v2, p0}, Lny6;-><init>(Lly6;)V

    invoke-virtual {v0, v1, v2}, Lu81;->a(Ljava/lang/String;Lll3;)V

    iget-boolean p1, p1, Ltw1;->b:Z

    if-eqz p1, :cond_5

    sget-object p1, Lz86;->a:Lz86;

    sget-object p1, Lz86;->a:Lz86;

    invoke-virtual {p1, v3}, Lz86;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    iput-object v3, p0, Lly6;->d:Ljava/net/Socket;

    invoke-static {v3}, Lvp3;->f(Ljava/net/Socket;)Lct;

    move-result-object p1

    new-instance v0, Liy6;

    invoke-direct {v0, p1}, Liy6;-><init>(Lv48;)V

    iput-object v0, p0, Lly6;->h:Liy6;

    invoke-static {v3}, Lvp3;->e(Ljava/net/Socket;)Lbt;

    move-result-object p1

    new-instance v0, Lhy6;

    invoke-direct {v0, p1}, Lhy6;-><init>(Ls18;)V

    iput-object v0, p0, Lly6;->i:Lhy6;

    if-eqz v4, :cond_6

    sget-object p1, Lts6;->Companion:Lts6$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lts6$a;->a(Ljava/lang/String;)Lts6;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object p1, Lts6;->HTTP_1_1:Lts6;

    :goto_1
    iput-object p1, p0, Lly6;->f:Lts6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lz86;->a:Lz86;

    sget-object p1, Lz86;->a:Lz86;

    invoke-virtual {p1, v3}, Lz86;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, Lly6;->e:Llu3;

    invoke-virtual {p3, p2, p1}, Lokhttp3/b;->secureConnectEnd(Lokhttp3/a;Llu3;)V

    iget-object p1, p0, Lly6;->f:Lts6;

    sget-object p2, Lts6;->HTTP_2:Lts6;

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, Lly6;->m()V

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v4, :cond_8

    sget-object p1, Lz86;->a:Lz86;

    sget-object p1, Lz86;->a:Lz86;

    invoke-virtual {p1, v4}, Lz86;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v4}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_9
    throw p0
.end method

.method public final i(Ll9;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll9;",
            "Ljava/util/List<",
            "Li87;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p1, Ll9;->h:Lfz3;

    iget-object v1, v0, Lfz3;->d:Ljava/lang/String;

    sget-object v2, Lgb9;->a:[B

    iget-object v2, p0, Lly6;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lly6;->o:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_9

    iget-boolean v2, p0, Lly6;->j:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lly6;->b:Li87;

    iget-object v3, v2, Li87;->a:Ll9;

    iget-object v5, v2, Li87;->a:Ll9;

    invoke-virtual {v3, p1}, Ll9;->a(Ll9;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v3, v5, Ll9;->h:Lfz3;

    iget-object v3, v3, Lfz3;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    return v6

    :cond_2
    iget-object v3, p0, Lly6;->g:Lhy3;

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_4

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li87;

    iget-object v7, v3, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v8, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v7, v8, :cond_5

    iget-object v7, v2, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    if-ne v7, v8, :cond_5

    iget-object v7, v2, Li87;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Li87;->c:Ljava/net/InetSocketAddress;

    invoke-static {v7, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p2, p1, Ll9;->d:Ljavax/net/ssl/HostnameVerifier;

    sget-object v2, Lev5;->a:Lev5;

    if-eq p2, v2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p2, Lgb9;->a:[B

    iget-object p2, v5, Ll9;->h:Lfz3;

    iget v0, v0, Lfz3;->e:I

    iget v2, p2, Lfz3;->e:I

    if-eq v0, v2, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, Lfz3;->d:Ljava/lang/String;

    invoke-static {v1, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, Lly6;->k:Z

    if-nez p2, :cond_9

    iget-object p2, p0, Lly6;->e:Llu3;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Llu3;->a()Ljava/util/List;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v1, p2}, Lev5;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_0
    :try_start_0
    iget-object p1, p1, Ll9;->e:Lu81;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lly6;->e:Llu3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Llu3;->a()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lv81;

    invoke-direct {p2, p1, p0, v1}, Lv81;-><init>(Lu81;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lu81;->a(Ljava/lang/String;Lll3;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    :cond_9
    :goto_1
    return v4
.end method

.method public final j(Z)Z
    .locals 9

    sget-object v0, Lgb9;->a:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lly6;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lly6;->d:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lly6;->h:Liy6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lly6;->g:Lhy3;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p0, v2, Lhy3;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v2

    return v5

    :cond_1
    :try_start_1
    iget-wide p0, v2, Lhy3;->o:J

    iget-wide v3, v2, Lhy3;->n:J

    cmp-long p0, p0, v3

    if-gez p0, :cond_2

    iget-wide p0, v2, Lhy3;->p:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_2

    monitor-exit v2

    return v5

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    monitor-exit v2

    return v6

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    monitor-enter p0

    :try_start_3
    iget-wide v7, p0, Lly6;->q:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long p0, v0, v7

    if-ltz p0, :cond_4

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, Liy6;->m()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/2addr p1, v6

    :try_start_6
    invoke-virtual {v3, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    return p1

    :catchall_1
    move-exception p1

    invoke-virtual {v3, p0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move v5, v6

    :catch_1
    return v5

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    return v5
.end method

.method public final k(Lokhttp3/OkHttpClient;Lez6;)Lo13;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lez6;->g:I

    iget-object v1, p0, Lly6;->d:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lly6;->h:Liy6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lly6;->i:Lhy6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lly6;->g:Lhy3;

    if-eqz v4, :cond_0

    new-instance v0, Lqy3;

    invoke-direct {v0, p1, p0, p2, v4}, Lqy3;-><init>(Lokhttp3/OkHttpClient;Lly6;Lez6;Lhy3;)V

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, v2, Liy6;->b:Lv48;

    invoke-interface {v1}, Lv48;->r()Lwv8;

    move-result-object v1

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lwv8;->g(J)Lwv8;

    iget-object v0, v3, Lhy6;->b:Ls18;

    invoke-interface {v0}, Ls18;->r()Lwv8;

    move-result-object v0

    iget p2, p2, Lez6;->h:I

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5}, Lwv8;->g(J)Lwv8;

    new-instance p2, Ldy3;

    invoke-direct {p2, p1, p0, v2, v3}, Ldy3;-><init>(Lokhttp3/OkHttpClient;Lly6;Liy6;Lhy6;)V

    return-object p2
.end method

.method public final declared-synchronized l()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lly6;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 9

    iget-object v0, p0, Lly6;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lly6;->h:Liy6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lly6;->i:Lhy6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, Lhy3$a;

    sget-object v5, Lho8;->h:Lho8;

    invoke-direct {v4, v5}, Lhy3$a;-><init>(Lho8;)V

    iget-object v6, p0, Lly6;->b:Li87;

    iget-object v6, v6, Li87;->a:Ll9;

    iget-object v6, v6, Ll9;->h:Lfz3;

    iget-object v6, v6, Lfz3;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lhy3$a;->b:Ljava/net/Socket;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lgb9;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lhy3$a;->c:Ljava/lang/String;

    iput-object v1, v4, Lhy3$a;->d:Liy6;

    iput-object v2, v4, Lhy3$a;->e:Lhy6;

    iput-object p0, v4, Lhy3$a;->f:Lhy3$b;

    new-instance v0, Lhy3;

    invoke-direct {v0, v4}, Lhy3;-><init>(Lhy3$a;)V

    iput-object v0, p0, Lly6;->g:Lhy3;

    sget-object v1, Lhy3;->A:Lor7;

    iget v2, v1, Lor7;->a:I

    and-int/lit8 v2, v2, 0x10

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v1, v1, Lor7;->b:[I

    aget v1, v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, Lly6;->o:I

    iget-object p0, v0, Lhy3;->x:Lwy3;

    const-string v1, ">> CONNECTION "

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lwy3;->e:Z

    if-nez v2, :cond_9

    sget-object v2, Lwy3;->g:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lfy3;->b:Lgx0;

    invoke-virtual {v1}, Lgx0;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v6}, Lgb9;->h(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_1
    iget-object v1, p0, Lwy3;->b:Lvu0;

    sget-object v2, Lfy3;->b:Lgx0;

    invoke-interface {v1, v2}, Lvu0;->d(Lgx0;)Lvu0;

    iget-object v1, p0, Lwy3;->b:Lvu0;

    invoke-interface {v1}, Lvu0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v1, v0, Lhy3;->x:Lwy3;

    iget-object p0, v0, Lhy3;->q:Lor7;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v2, v1, Lwy3;->e:Z

    if-nez v2, :cond_8

    iget v2, p0, Lor7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    invoke-virtual {v1, v3, v2, v4, v3}, Lwy3;->b(IIII)V

    move v2, v3

    :goto_2
    const/16 v6, 0xa

    if-ge v2, v6, :cond_6

    const/4 v6, 0x1

    shl-int v7, v6, v2

    iget v8, p0, Lor7;->a:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v6, v3

    :goto_3
    if-eqz v6, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v6, 0x7

    if-eq v2, v6, :cond_3

    move v6, v2

    goto :goto_4

    :cond_3
    move v6, v4

    goto :goto_4

    :cond_4
    const/4 v6, 0x3

    :goto_4
    iget-object v7, v1, Lwy3;->b:Lvu0;

    invoke-interface {v7, v6}, Lvu0;->writeShort(I)Lvu0;

    iget-object v6, v1, Lwy3;->b:Lvu0;

    iget-object v7, p0, Lor7;->b:[I

    aget v7, v7, v2

    invoke-interface {v6, v7}, Lvu0;->writeInt(I)Lvu0;

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iget-object p0, v1, Lwy3;->b:Lvu0;

    invoke-interface {p0}, Lvu0;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    iget-object p0, v0, Lhy3;->q:Lor7;

    invoke-virtual {p0}, Lor7;->a()I

    move-result p0

    const v1, 0xffff

    if-eq p0, v1, :cond_7

    iget-object v2, v0, Lhy3;->x:Lwy3;

    sub-int/2addr p0, v1

    int-to-long v6, p0

    invoke-virtual {v2, v3, v6, v7}, Lwy3;->T(IJ)V

    :cond_7
    invoke-virtual {v5}, Lho8;->d()Ldo8;

    move-result-object p0

    iget-object v1, v0, Lhy3;->d:Ljava/lang/String;

    iget-object v0, v0, Lhy3;->y:Lhy3$c;

    new-instance v2, Lco8;

    invoke-direct {v2, v1, v0}, Lco8;-><init>(Ljava/lang/String;Lhy3$c;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Ldo8;->c(Ljl8;J)V

    return-void

    :cond_8
    :try_start_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_9
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lly6;->b:Li87;

    iget-object v2, v1, Li87;->a:Ll9;

    iget-object v2, v2, Ll9;->h:Lfz3;

    iget-object v2, v2, Lfz3;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, Li87;->a:Ll9;

    iget-object v2, v2, Ll9;->h:Lfz3;

    iget v2, v2, Lfz3;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Li87;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lly6;->e:Llu3;

    if-eqz v1, :cond_0

    iget-object v1, v1, Llu3;->b:Lyj1;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lly6;->f:Lts6;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
