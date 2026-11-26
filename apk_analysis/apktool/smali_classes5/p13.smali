.class public final Lp13;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpy6;

.field public final b:Ll9;

.field public final c:Ljy6;

.field public final d:Lokhttp3/b;

.field public e:Lk87$a;

.field public f:Lk87;

.field public g:I

.field public h:I

.field public i:I

.field public j:Li87;


# direct methods
.method public constructor <init>(Lpy6;Ll9;Ljy6;Lokhttp3/b;)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp13;->a:Lpy6;

    iput-object p2, p0, Lp13;->b:Ll9;

    iput-object p3, p0, Lp13;->c:Ljy6;

    iput-object p4, p0, Lp13;->d:Lokhttp3/b;

    return-void
.end method


# virtual methods
.method public final a(IZZII)Lly6;
    .locals 14

    :cond_0
    :goto_0
    iget-object v0, p0, Lp13;->c:Ljy6;

    iget-boolean v0, v0, Ljy6;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_25

    iget-object v0, p0, Lp13;->c:Ljy6;

    iget-object v2, v0, Ljy6;->j:Lly6;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    monitor-enter v2

    :try_start_0
    iget-boolean v4, v2, Lly6;->j:Z

    if-nez v4, :cond_3

    iget-object v4, v2, Lly6;->b:Li87;

    iget-object v4, v4, Li87;->a:Ll9;

    iget-object v4, v4, Ll9;->h:Lfz3;

    iget-object v5, p0, Lp13;->b:Ll9;

    iget-object v5, v5, Ll9;->h:Lfz3;

    iget v6, v4, Lfz3;->e:I

    iget v7, v5, Lfz3;->e:I

    if-ne v6, v7, :cond_1

    iget-object v4, v4, Lfz3;->d:Ljava/lang/String;

    iget-object v5, v5, Lfz3;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_3
    :goto_2
    iget-object v4, p0, Lp13;->c:Ljy6;

    invoke-virtual {v4}, Ljy6;->h()Ljava/net/Socket;

    move-result-object v4

    :goto_3
    sget-object v5, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v5, p0, Lp13;->c:Ljy6;

    iget-object v5, v5, Ljy6;->j:Lly6;

    if-eqz v5, :cond_5

    if-nez v4, :cond_4

    :goto_4
    move/from16 v0, p3

    goto/16 :goto_11

    :cond_4
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v1

    :cond_5
    if-eqz v4, :cond_6

    invoke-static {v4}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_6
    iget-object v4, p0, Lp13;->d:Lokhttp3/b;

    iget-object v5, p0, Lp13;->c:Ljy6;

    invoke-virtual {v4, v5, v2}, Lokhttp3/b;->connectionReleased(Lokhttp3/a;Llw1;)V

    goto :goto_6

    :goto_5
    monitor-exit v2

    throw p0

    :cond_7
    :goto_6
    iput v0, p0, Lp13;->g:I

    iput v0, p0, Lp13;->h:I

    iput v0, p0, Lp13;->i:I

    iget-object v2, p0, Lp13;->a:Lpy6;

    iget-object v4, p0, Lp13;->b:Ll9;

    iget-object v5, p0, Lp13;->c:Ljy6;

    invoke-virtual {v2, v4, v5, v1, v0}, Lpy6;->a(Ll9;Ljy6;Ljava/util/ArrayList;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lp13;->c:Ljy6;

    iget-object v2, v0, Ljy6;->j:Lly6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lp13;->d:Lokhttp3/b;

    iget-object v4, p0, Lp13;->c:Ljy6;

    invoke-virtual {v0, v4, v2}, Lokhttp3/b;->connectionAcquired(Lokhttp3/a;Llw1;)V

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lp13;->j:Li87;

    if-eqz v2, :cond_9

    iput-object v1, p0, Lp13;->j:Li87;

    :goto_7
    move-object v4, v1

    goto/16 :goto_10

    :cond_9
    iget-object v2, p0, Lp13;->e:Lk87$a;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lk87$a;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lp13;->e:Lk87$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lk87$a;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lk87$a;->a:Ljava/util/ArrayList;

    iget v4, v0, Lk87$a;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lk87$a;->b:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Li87;

    goto :goto_7

    :cond_a
    invoke-static {}, Lqz0;->e()V

    return-object v1

    :cond_b
    iget-object v2, p0, Lp13;->f:Lk87;

    if-nez v2, :cond_c

    new-instance v2, Lk87;

    iget-object v4, p0, Lp13;->b:Ll9;

    iget-object v5, p0, Lp13;->c:Ljy6;

    iget-object v6, v5, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v6, v6, Lokhttp3/OkHttpClient;->C:Lj87;

    iget-object v7, p0, Lp13;->d:Lokhttp3/b;

    invoke-direct {v2, v4, v6, v5, v7}, Lk87;-><init>(Ll9;Lj87;Lokhttp3/a;Lokhttp3/b;)V

    iput-object v2, p0, Lp13;->f:Lk87;

    :cond_c
    invoke-virtual {v2}, Lk87;->a()Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    iget v5, v2, Lk87;->f:I

    iget-object v6, v2, Lk87;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1a

    iget-object v5, v2, Lk87;->a:Ll9;

    const-string v6, "No route to "

    iget v7, v2, Lk87;->f:I

    iget-object v8, v2, Lk87;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_19

    iget-object v7, v2, Lk87;->e:Ljava/util/List;

    iget v8, v2, Lk87;->f:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lk87;->f:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/Proxy;

    iget-object v8, v2, Lk87;->c:Lokhttp3/a;

    iget-object v9, v2, Lk87;->d:Lokhttp3/b;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v2, Lk87;->g:Ljava/util/List;

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    sget-object v12, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v11, v12, :cond_11

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v11

    sget-object v12, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v11, v12, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v7}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v11

    instance-of v12, v11, Ljava/net/InetSocketAddress;

    if-eqz v12, :cond_10

    check-cast v11, Ljava/net/InetSocketAddress;

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    if-nez v12, :cond_f

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_f
    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    goto :goto_a

    :cond_10
    const-string p0, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Leg;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_11
    :goto_9
    iget-object v11, v5, Ll9;->h:Lfz3;

    iget-object v12, v11, Lfz3;->d:Ljava/lang/String;

    iget v11, v11, Lfz3;->e:I

    :goto_a
    if-gt v3, v11, :cond_18

    const/high16 v13, 0x10000

    if-ge v11, v13, :cond_18

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v13, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v6, v13, :cond_12

    invoke-static {v12, v11}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    sget-object v6, Lgb9;->a:[B

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lgb9;->f:Lg17;

    invoke-virtual {v6, v12}, Lg17;->e(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_b

    :cond_13
    invoke-virtual {v9, v8, v12}, Lokhttp3/b;->dnsStart(Lokhttp3/a;Ljava/lang/String;)V

    iget-object v6, v5, Ll9;->a:Lvp2;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v12}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_17

    invoke-virtual {v9, v8, v12, v6}, Lokhttp3/b;->dnsEnd(Lokhttp3/a;Ljava/lang/String;Ljava/util/List;)V

    move-object v5, v6

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v6, v11}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    :goto_d
    iget-object v5, v2, Lk87;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetSocketAddress;

    new-instance v8, Li87;

    iget-object v9, v2, Lk87;->a:Ll9;

    invoke-direct {v8, v9, v7, v6}, Li87;-><init>(Ll9;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    iget-object v6, v2, Lk87;->b:Lj87;

    monitor-enter v6

    :try_start_2
    iget-object v9, v6, Lj87;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    if-eqz v9, :cond_15

    iget-object v6, v2, Lk87;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_f

    :cond_17
    new-instance p0, Ljava/net/UnknownHostException;

    iget-object v0, v5, Ll9;->a:Lvp2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned no addresses for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Broken system behaviour for dns lookup of "

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_18
    new-instance p0, Ljava/net/SocketException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; port is out of range"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/net/SocketException;

    iget-object v0, v5, Ll9;->h:Lfz3;

    iget-object v0, v0, Lfz3;->d:Ljava/lang/String;

    const-string v1, "; exhausted proxy configurations: "

    iget-object v2, v2, Lk87;->e:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    :goto_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, v2, Lk87;->h:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v2, v2, Lk87;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    new-instance v2, Lk87$a;

    invoke-direct {v2, v4}, Lk87$a;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lp13;->e:Lk87$a;

    iget-object v5, p0, Lp13;->c:Ljy6;

    iget-boolean v5, v5, Ljy6;->p:Z

    if-nez v5, :cond_23

    iget-object v5, p0, Lp13;->a:Lpy6;

    iget-object v6, p0, Lp13;->b:Ll9;

    iget-object v7, p0, Lp13;->c:Ljy6;

    invoke-virtual {v5, v6, v7, v4, v0}, Lpy6;->a(Ll9;Ljy6;Ljava/util/ArrayList;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lp13;->c:Ljy6;

    iget-object v2, v0, Ljy6;->j:Lly6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lp13;->d:Lokhttp3/b;

    iget-object v4, p0, Lp13;->c:Ljy6;

    invoke-virtual {v0, v4, v2}, Lokhttp3/b;->connectionAcquired(Lokhttp3/a;Llw1;)V

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v2}, Lk87$a;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, v2, Lk87$a;->b:I

    add-int/lit8 v5, v0, 0x1

    iput v5, v2, Lk87$a;->b:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Li87;

    :goto_10
    new-instance v5, Lly6;

    iget-object v0, p0, Lp13;->a:Lpy6;

    invoke-direct {v5, v0, v2}, Lly6;-><init>(Lpy6;Li87;)V

    iget-object v0, p0, Lp13;->c:Ljy6;

    iput-object v5, v0, Ljy6;->r:Lly6;

    :try_start_4
    iget-object v10, p0, Lp13;->c:Ljy6;

    iget-object v11, p0, Lp13;->d:Lokhttp3/b;

    move v6, p1

    move/from16 v9, p2

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lly6;->d(IIIZLokhttp3/a;Lokhttp3/b;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v0, p0, Lp13;->c:Ljy6;

    iput-object v1, v0, Ljy6;->r:Lly6;

    iget-object v0, p0, Lp13;->c:Ljy6;

    iget-object v0, v0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v6, v0, Lokhttp3/OkHttpClient;->C:Lj87;

    iget-object v0, v5, Lly6;->b:Li87;

    monitor-enter v6

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Lj87;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit v6

    iget-object v0, p0, Lp13;->a:Lpy6;

    iget-object v6, p0, Lp13;->b:Ll9;

    iget-object v7, p0, Lp13;->c:Ljy6;

    invoke-virtual {v0, v6, v7, v4, v3}, Lpy6;->a(Ll9;Ljy6;Ljava/util/ArrayList;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lp13;->c:Ljy6;

    iget-object v0, v0, Ljy6;->j:Lly6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lp13;->j:Li87;

    iget-object v2, v5, Lly6;->d:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lgb9;->e(Ljava/net/Socket;)V

    iget-object v2, p0, Lp13;->d:Lokhttp3/b;

    iget-object v4, p0, Lp13;->c:Ljy6;

    invoke-virtual {v2, v4, v0}, Lokhttp3/b;->connectionAcquired(Lokhttp3/a;Llw1;)V

    move-object v2, v0

    goto/16 :goto_4

    :cond_1d
    monitor-enter v5

    :try_start_6
    iget-object v0, p0, Lp13;->a:Lpy6;

    sget-object v2, Lgb9;->a:[B

    iget-object v2, v0, Lpy6;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lpy6;->b:Ldo8;

    iget-object v0, v0, Lpy6;->c:Loy6;

    invoke-static {v2, v0}, Ldo8;->d(Ldo8;Ljl8;)V

    iget-object v0, p0, Lp13;->c:Ljy6;

    invoke-virtual {v0, v5}, Ljy6;->b(Lly6;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit v5

    iget-object v0, p0, Lp13;->d:Lokhttp3/b;

    iget-object v2, p0, Lp13;->c:Ljy6;

    invoke-virtual {v0, v2, v5}, Lokhttp3/b;->connectionAcquired(Lokhttp3/a;Llw1;)V

    move/from16 v0, p3

    move-object v2, v5

    :goto_11
    invoke-virtual {v2, v0}, Lly6;->j(Z)Z

    move-result v4

    if-eqz v4, :cond_1e

    return-object v2

    :cond_1e
    invoke-virtual {v2}, Lly6;->l()V

    iget-object v2, p0, Lp13;->j:Li87;

    if-nez v2, :cond_0

    iget-object v2, p0, Lp13;->e:Lk87$a;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lk87$a;->a()Z

    move-result v2

    goto :goto_12

    :cond_1f
    move v2, v3

    :goto_12
    if-nez v2, :cond_0

    iget-object v2, p0, Lp13;->f:Lk87;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lk87;->a()Z

    move-result v3

    :cond_20
    if-eqz v3, :cond_21

    goto/16 :goto_0

    :cond_21
    const-string p0, "exhausted all routes"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v1

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v5

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :catchall_4
    move-exception v0

    iget-object p0, p0, Lp13;->c:Ljy6;

    iput-object v1, p0, Ljy6;->r:Lly6;

    throw v0

    :cond_22
    invoke-static {}, Lqz0;->e()V

    return-object v1

    :cond_23
    const-string p0, "Canceled"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v1

    :cond_24
    invoke-static {}, Lqz0;->e()V

    return-object v1

    :cond_25
    const-string p0, "Canceled"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v1
.end method

.method public final b(Ljava/io/IOException;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lp13;->j:Li87;

    instance-of v0, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->b:Lp03;

    sget-object v1, Lp03;->REFUSED_STREAM:Lp03;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lp13;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp13;->g:I

    return-void

    :cond_0
    instance-of p1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz p1, :cond_1

    iget p1, p0, Lp13;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp13;->h:I

    return-void

    :cond_1
    iget p1, p0, Lp13;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lp13;->i:I

    return-void
.end method
