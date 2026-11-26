.class public final Lo67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf94;


# instance fields
.field public final a:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo67;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static d(Lz47;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-static {p0, v0}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string p1, "\\d+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method


# virtual methods
.method public final a(Lez6;)Lz47;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lez6;->e:Lb37;

    iget-object v3, v2, Lez6;->a:Ljy6;

    sget-object v4, Lkx2;->b:Lkx2;

    const/4 v6, 0x0

    move-object v8, v4

    move-object v9, v6

    const/4 v10, 0x0

    move-object v4, v0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v3, Ljy6;->l:Ln13;

    if-nez v11, :cond_f

    monitor-enter v3

    :try_start_0
    iget-boolean v11, v3, Ljy6;->n:Z

    if-nez v11, :cond_e

    iget-boolean v11, v3, Ljy6;->m:Z

    if-nez v11, :cond_d

    sget-object v11, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v3

    if-eqz v0, :cond_2

    new-instance v0, Lp13;

    iget-object v11, v3, Ljy6;->d:Lpy6;

    iget-object v12, v4, Lb37;->a:Lfz3;

    iget-object v13, v3, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-boolean v14, v12, Lfz3;->j:Z

    if-eqz v14, :cond_1

    iget-object v14, v13, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v14, :cond_0

    iget-object v15, v13, Lokhttp3/OkHttpClient;->u:Ljavax/net/ssl/HostnameVerifier;

    iget-object v7, v13, Lokhttp3/OkHttpClient;->v:Lu81;

    move-object/from16 v23, v7

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    goto :goto_1

    :cond_0
    const-string v0, "CLEARTEXT-only client"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v6

    :cond_1
    move-object/from16 v21, v6

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    :goto_1
    new-instance v16, Ll9;

    iget-object v7, v12, Lfz3;->d:Ljava/lang/String;

    iget v12, v12, Lfz3;->e:I

    iget-object v14, v13, Lokhttp3/OkHttpClient;->m:Lvp2;

    iget-object v15, v13, Lokhttp3/OkHttpClient;->p:Ljavax/net/SocketFactory;

    iget-object v5, v13, Lokhttp3/OkHttpClient;->o:Lpx;

    iget-object v6, v13, Lokhttp3/OkHttpClient;->t:Ljava/util/List;

    move-object/from16 v24, v5

    iget-object v5, v13, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    iget-object v13, v13, Lokhttp3/OkHttpClient;->n:Ljava/net/ProxySelector;

    move-object/from16 v26, v5

    move-object/from16 v25, v6

    move-object/from16 v17, v7

    move/from16 v18, v12

    move-object/from16 v27, v13

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v27}, Ll9;-><init>(Ljava/lang/String;ILvp2;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lu81;Lpx;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    move-object/from16 v5, v16

    iget-object v6, v3, Ljy6;->e:Lokhttp3/b;

    invoke-direct {v0, v11, v5, v3, v6}, Lp13;-><init>(Lpy6;Ll9;Ljy6;Lokhttp3/b;)V

    iput-object v0, v3, Ljy6;->i:Lp13;

    :cond_2
    :try_start_1
    iget-boolean v0, v3, Ljy6;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_c

    :try_start_2
    invoke-virtual {v2, v4}, Lez6;->b(Lb37;)Lz47;

    move-result-object v0
    :try_end_2
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v0}, Lz47;->p()Lz47$a;

    move-result-object v0

    invoke-virtual {v9}, Lz47;->p()Lz47$a;

    move-result-object v4

    const/4 v5, 0x0

    iput-object v5, v4, Lz47$a;->g:Lb57;

    invoke-virtual {v4}, Lz47$a;->a()Lz47;

    move-result-object v4

    iget-object v5, v4, Lz47;->h:Lb57;

    if-nez v5, :cond_4

    iput-object v4, v0, Lz47$a;->j:Lz47;

    invoke-virtual {v0}, Lz47$a;->a()Lz47;

    move-result-object v0

    :cond_3
    move-object v9, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_4
    const-string v0, "priorResponse.body != null"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_2
    iget-object v0, v3, Ljy6;->l:Ln13;

    invoke-virtual {v1, v9, v0}, Lo67;->b(Lz47;Ln13;)Lb37;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljy6;->d(Z)V

    return-object v9

    :cond_5
    :try_start_4
    iget-object v0, v9, Lz47;->h:Lb57;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lgb9;->d(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x14

    if-gt v10, v0, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljy6;->d(Z)V

    const/4 v0, 0x1

    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many follow-up requests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    instance-of v5, v0, Lokhttp3/internal/http2/ConnectionShutdownException;

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-virtual {v1, v0, v3, v4, v5}, Lo67;->c(Ljava/io/IOException;Ljy6;Lb37;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    check-cast v8, Ljava/util/Collection;

    invoke-static {v0, v8}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v3, v6}, Ljy6;->d(Z)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    throw v0

    :catch_1
    move-exception v0

    iget-object v5, v0, Lokhttp3/internal/connection/RouteException;->c:Ljava/io/IOException;

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v3, v4, v6}, Lo67;->c(Ljava/io/IOException;Ljy6;Lb37;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    check-cast v8, Ljava/util/Collection;

    iget-object v0, v0, Lokhttp3/internal/connection/RouteException;->b:Ljava/io/IOException;

    invoke-static {v0, v8}, Lqn1;->i0(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljy6;->d(Z)V

    move v0, v6

    goto :goto_3

    :cond_a
    :try_start_7
    iget-object v0, v0, Lokhttp3/internal/connection/RouteException;->b:Ljava/io/IOException;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-static {v0, v2}, Lsj0;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    throw v0

    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    invoke-virtual {v3, v5}, Ljy6;->d(Z)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_d
    :try_start_8
    const-string v0, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v0, "cannot make a new request because the previous response is still open: please call response.close()"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_7
    monitor-exit v3

    throw v0

    :cond_f
    const-string v0, "Check failed."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    const/16 v28, 0x0

    return-object v28
.end method

.method public final b(Lz47;Ln13;)Lb37;
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Ln13;->f:Lly6;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lly6;->b:Li87;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget v2, p1, Lz47;->e:I

    iget-object v3, p1, Lz47;->b:Lb37;

    iget-object v3, v3, Lb37;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x134

    const/16 v7, 0x133

    if-eq v2, v7, :cond_c

    if-eq v2, v6, :cond_c

    const/16 v8, 0x191

    if-eq v2, v8, :cond_b

    const/16 v8, 0x1a5

    if-eq v2, v8, :cond_9

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_7

    const/16 p2, 0x197

    if-eq v2, p2, :cond_5

    const/16 p2, 0x198

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    :cond_1
    iget-object p0, p0, Lo67;->a:Lokhttp3/OkHttpClient;

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->g:Z

    if-nez p0, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object p0, p1, Lz47;->k:Lz47;

    if-eqz p0, :cond_3

    iget p0, p0, Lz47;->e:I

    if-ne p0, p2, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {p1, v4}, Lo67;->d(Lz47;I)I

    move-result p0

    if-lez p0, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object p0, p1, Lz47;->b:Lb37;

    return-object p0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Li87;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_6

    iget-object p0, p0, Lo67;->a:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Lokhttp3/OkHttpClient;->o:Lpx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_6
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    iget-object p0, p1, Lz47;->k:Lz47;

    if-eqz p0, :cond_8

    iget p0, p0, Lz47;->e:I

    if-ne p0, p2, :cond_8

    goto/16 :goto_3

    :cond_8
    const p0, 0x7fffffff

    invoke-static {p1, p0}, Lo67;->d(Lz47;I)I

    move-result p0

    if-nez p0, :cond_11

    iget-object p0, p1, Lz47;->b:Lb37;

    return-object p0

    :cond_9
    if-eqz p2, :cond_11

    iget-object p0, p2, Ln13;->c:Lp13;

    iget-object p0, p0, Lp13;->b:Ll9;

    iget-object p0, p0, Ll9;->h:Lfz3;

    iget-object p0, p0, Lfz3;->d:Ljava/lang/String;

    iget-object v1, p2, Ln13;->f:Lly6;

    iget-object v1, v1, Lly6;->b:Li87;

    iget-object v1, v1, Li87;->a:Ll9;

    iget-object v1, v1, Ll9;->h:Lfz3;

    iget-object v1, v1, Lfz3;->d:Ljava/lang/String;

    invoke-static {p0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    iget-object p0, p2, Ln13;->f:Lly6;

    monitor-enter p0

    :try_start_0
    iput-boolean v5, p0, Lly6;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, p1, Lz47;->b:Lb37;

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_b
    iget-object p0, p0, Lo67;->a:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Lokhttp3/OkHttpClient;->h:Lpx;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_c
    :pswitch_0
    const-string p2, "PROPFIND"

    iget-object p0, p0, Lo67;->a:Lokhttp3/OkHttpClient;

    iget-boolean v1, p0, Lokhttp3/OkHttpClient;->i:Z

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const-string v1, "Location"

    invoke-static {p1, v1}, Lz47;->n(Lz47;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lz47;->b:Lb37;

    if-nez v1, :cond_e

    goto :goto_3

    :cond_e
    iget-object v8, v2, Lb37;->a:Lfz3;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    new-instance v9, Lfz3$a;

    invoke-direct {v9}, Lfz3$a;-><init>()V

    invoke-virtual {v9, v8, v1}, Lfz3$a;->c(Lfz3;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-object v9, v0

    :goto_1
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lfz3$a;->a()Lfz3;

    move-result-object v1

    goto :goto_2

    :cond_f
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_10

    goto :goto_3

    :cond_10
    iget-object v8, v1, Lfz3;->a:Ljava/lang/String;

    iget-object v9, v2, Lb37;->a:Lfz3;

    iget-object v9, v9, Lfz3;->a:Ljava/lang/String;

    invoke-static {v8, v9}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->j:Z

    if-nez p0, :cond_12

    :cond_11
    :goto_3
    return-object v0

    :cond_12
    invoke-virtual {v2}, Lb37;->a()Lb37$a;

    move-result-object p0

    invoke-static {v3}, Lzd3;->f(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget p1, p1, Lz47;->e:I

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    if-eq p1, v6, :cond_13

    if-ne p1, v7, :cond_14

    :cond_13
    move v4, v5

    :cond_14
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    if-eq p1, v6, :cond_15

    if-eq p1, v7, :cond_15

    const-string p1, "GET"

    invoke-virtual {p0, p1, v0}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    goto :goto_4

    :cond_15
    if-eqz v4, :cond_16

    iget-object v0, v2, Lb37;->d:Lg37;

    :cond_16
    invoke-virtual {p0, v3, v0}, Lb37$a;->c(Ljava/lang/String;Lg37;)V

    :goto_4
    if-nez v4, :cond_17

    const-string p1, "Transfer-Encoding"

    iget-object p2, p0, Lb37$a;->c:Ljv3$a;

    invoke-virtual {p2, p1}, Ljv3$a;->g(Ljava/lang/String;)V

    const-string p1, "Content-Length"

    iget-object p2, p0, Lb37$a;->c:Ljv3$a;

    invoke-virtual {p2, p1}, Ljv3$a;->g(Ljava/lang/String;)V

    const-string p1, "Content-Type"

    iget-object p2, p0, Lb37$a;->c:Ljv3$a;

    invoke-virtual {p2, p1}, Ljv3$a;->g(Ljava/lang/String;)V

    :cond_17
    iget-object p1, v2, Lb37;->a:Lfz3;

    invoke-static {p1, v1}, Lgb9;->a(Lfz3;Lfz3;)Z

    move-result p1

    if-nez p1, :cond_18

    const-string p1, "Authorization"

    iget-object p2, p0, Lb37$a;->c:Ljv3$a;

    invoke-virtual {p2, p1}, Ljv3$a;->g(Ljava/lang/String;)V

    :cond_18
    iput-object v1, p0, Lb37$a;->a:Lfz3;

    invoke-virtual {p0}, Lb37$a;->a()Lb37;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/io/IOException;Ljy6;Lb37;Z)Z
    .locals 2

    iget-object p0, p0, Lo67;->a:Lokhttp3/OkHttpClient;

    iget-boolean p0, p0, Lokhttp3/OkHttpClient;->g:Z

    const/4 p3, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p4, :cond_1

    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_1

    goto/16 :goto_5

    :cond_1
    instance-of p0, p1, Ljava/net/ProtocolException;

    if-eqz p0, :cond_2

    goto/16 :goto_5

    :cond_2
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_3

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_10

    if-nez p4, :cond_10

    goto :goto_0

    :cond_3
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_4

    goto/16 :goto_5

    :cond_4
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_0
    iget-object p0, p2, Ljy6;->i:Lp13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lp13;->g:I

    const/4 p2, 0x1

    if-nez p1, :cond_6

    iget p4, p0, Lp13;->h:I

    if-nez p4, :cond_6

    iget p4, p0, Lp13;->i:I

    if-nez p4, :cond_6

    move p0, p3

    goto :goto_4

    :cond_6
    iget-object p4, p0, Lp13;->j:Li87;

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    const/4 p4, 0x0

    if-gt p1, p2, :cond_c

    iget p1, p0, Lp13;->h:I

    if-gt p1, p2, :cond_c

    iget p1, p0, Lp13;->i:I

    if-lez p1, :cond_8

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lp13;->c:Ljy6;

    iget-object p1, p1, Ljy6;->j:Lly6;

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    monitor-enter p1

    :try_start_0
    iget v0, p1, Lly6;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    monitor-exit p1

    goto :goto_1

    :cond_a
    :try_start_1
    iget-object v0, p1, Lly6;->b:Li87;

    iget-object v0, v0, Li87;->a:Ll9;

    iget-object v0, v0, Ll9;->h:Lfz3;

    iget-object v1, p0, Lp13;->b:Ll9;

    iget-object v1, v1, Ll9;->h:Lfz3;

    invoke-static {v0, v1}, Lgb9;->a(Lfz3;Lfz3;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_b

    monitor-exit p1

    goto :goto_1

    :cond_b
    :try_start_2
    iget-object p4, p1, Lly6;->b:Li87;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_c
    :goto_1
    if-eqz p4, :cond_d

    iput-object p4, p0, Lp13;->j:Li87;

    :goto_2
    move p0, p2

    goto :goto_4

    :cond_d
    iget-object p1, p0, Lp13;->e:Lk87$a;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lk87$a;->a()Z

    move-result p1

    if-ne p1, p2, :cond_e

    goto :goto_3

    :cond_e
    iget-object p0, p0, Lp13;->f:Lk87;

    if-nez p0, :cond_f

    :goto_3
    goto :goto_2

    :cond_f
    invoke-virtual {p0}, Lk87;->a()Z

    move-result p0

    :goto_4
    if-nez p0, :cond_11

    :cond_10
    :goto_5
    return p3

    :cond_11
    return p2
.end method
