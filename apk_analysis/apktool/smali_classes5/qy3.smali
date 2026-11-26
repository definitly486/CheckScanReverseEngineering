.class public final Lqy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo13;


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lly6;

.field public final b:Lez6;

.field public final c:Lhy3;

.field public volatile d:Lvy3;

.field public final e:Lts6;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgb9;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lqy3;->g:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgb9;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lqy3;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lly6;Lez6;Lhy3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lqy3;->a:Lly6;

    iput-object p3, p0, Lqy3;->b:Lez6;

    iput-object p4, p0, Lqy3;->c:Lhy3;

    iget-object p1, p1, Lokhttp3/OkHttpClient;->t:Ljava/util/List;

    sget-object p2, Lts6;->H2_PRIOR_KNOWLEDGE:Lts6;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lts6;->HTTP_2:Lts6;

    :goto_0
    iput-object p2, p0, Lqy3;->e:Lts6;

    return-void
.end method


# virtual methods
.method public final a()Lly6;
    .locals 0

    iget-object p0, p0, Lqy3;->a:Lly6;

    return-object p0
.end method

.method public final b(Lb37;J)Ls18;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqy3;->d:Lvy3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lvy3;->f()Lvy3$a;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lz47;)Lv48;
    .locals 0

    iget-object p0, p0, Lqy3;->d:Lvy3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lvy3;->i:Lvy3$b;

    return-object p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqy3;->f:Z

    iget-object p0, p0, Lqy3;->d:Lvy3;

    if-eqz p0, :cond_0

    sget-object v0, Lp03;->CANCEL:Lp03;

    invoke-virtual {p0, v0}, Lvy3;->e(Lp03;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lqy3;->c:Lhy3;

    iget-object p0, p0, Lhy3;->x:Lwy3;

    invoke-virtual {p0}, Lwy3;->flush()V

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lqy3;->d:Lvy3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lvy3;->f()Lvy3$a;

    move-result-object p0

    invoke-virtual {p0}, Lvy3$a;->close()V

    return-void
.end method

.method public final f(Lb37;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lqy3;->d:Lvy3;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lb37;->d:Lg37;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p1, Lb37;->c:Ljv3;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljv3;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lav3;

    sget-object v6, Lav3;->f:Lgx0;

    iget-object v7, p1, Lb37;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lav3;-><init>(Lgx0;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lav3;

    sget-object v6, Lav3;->g:Lgx0;

    iget-object p1, p1, Lb37;->a:Lfz3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lfz3;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lfz3;->d()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x3f

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-direct {v5, v6, v7}, Lav3;-><init>(Lgx0;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    invoke-virtual {v3, v5}, Ljv3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Lav3;

    sget-object v7, Lav3;->i:Lgx0;

    invoke-direct {v6, v7, v5}, Lav3;-><init>(Lgx0;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v5, Lav3;

    sget-object v6, Lav3;->h:Lgx0;

    iget-object p1, p1, Lfz3;->a:Ljava/lang/String;

    invoke-direct {v5, v6, p1}, Lav3;-><init>(Lgx0;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljv3;->size()I

    move-result p1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_6

    invoke-virtual {v3, v5}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lqy3;->g:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v5}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lav3;

    invoke-virtual {v3, v5}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lav3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget-object v8, p0, Lqy3;->c:Lhy3;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 v9, v0, 0x1

    iget-object p1, v8, Lhy3;->x:Lwy3;

    monitor-enter p1

    :try_start_0
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v8, Lhy3;->f:I

    const v5, 0x3fffffff    # 1.9999999f

    if-le v3, v5, :cond_7

    sget-object v3, Lp03;->REFUSED_STREAM:Lp03;

    invoke-virtual {v8, v3}, Lhy3;->f(Lp03;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_7
    :goto_2
    iget-boolean v3, v8, Lhy3;->g:Z

    if-nez v3, :cond_d

    iget v7, v8, Lhy3;->f:I

    add-int/lit8 v3, v7, 0x2

    iput v3, v8, Lhy3;->f:I

    new-instance v6, Lvy3;

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lvy3;-><init>(ILhy3;ZZLjv3;)V

    if-eqz v0, :cond_8

    iget-wide v10, v8, Lhy3;->u:J

    iget-wide v12, v8, Lhy3;->v:J

    cmp-long v0, v10, v12

    if-gez v0, :cond_8

    iget-wide v10, v6, Lvy3;->e:J

    iget-wide v12, v6, Lvy3;->f:J

    cmp-long v0, v10, v12

    if-ltz v0, :cond_9

    :cond_8
    move v1, v2

    :cond_9
    invoke-virtual {v6}, Lvy3;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v8, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v8

    iget-object v0, v8, Lhy3;->x:Lwy3;

    invoke-virtual {v0, v4, v7, v9}, Lwy3;->f(Ljava/util/ArrayList;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p1

    if-eqz v1, :cond_b

    iget-object p1, v8, Lhy3;->x:Lwy3;

    invoke-virtual {p1}, Lwy3;->flush()V

    :cond_b
    iput-object v6, p0, Lqy3;->d:Lvy3;

    iget-boolean p1, p0, Lqy3;->f:Z

    iget-object v0, p0, Lqy3;->d:Lvy3;

    if-nez p1, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lvy3;->k:Lvy3$c;

    iget-object v0, p0, Lqy3;->b:Lez6;

    iget v0, v0, Lez6;->g:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lwv8;->g(J)Lwv8;

    iget-object p1, p0, Lqy3;->d:Lvy3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lvy3;->l:Lvy3$c;

    iget-object p0, p0, Lqy3;->b:Lez6;

    iget p0, p0, Lez6;->h:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lwv8;->g(J)Lwv8;

    return-void

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp03;->CANCEL:Lp03;

    invoke-virtual {v0, p0}, Lvy3;->e(Lp03;)V

    const-string p0, "Canceled"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_d
    :try_start_3
    new-instance p0, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p0}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    monitor-exit v8

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit p1

    throw p0
.end method

.method public final g(Lz47;)J
    .locals 0

    invoke-static {p1}, Laz3;->a(Lz47;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-static {p1}, Lgb9;->j(Lz47;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final h(Z)Lz47$a;
    .locals 9

    iget-object v0, p0, Lqy3;->d:Lvy3;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lvy3;->k:Lvy3$c;

    invoke-virtual {v2}, Lat;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v2, v0, Lvy3;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lvy3;->m:Lp03;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :try_start_4
    iget-object v2, v0, Lvy3;->k:Lvy3$c;

    invoke-virtual {v2}, Lvy3$c;->k()V

    iget-object v2, v0, Lvy3;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lvy3;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljv3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    iget-object p0, p0, Lqy3;->e:Lts6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljv3$a;

    invoke-direct {v0}, Ljv3$a;-><init>()V

    invoke-virtual {v2}, Ljv3;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object v5, v1

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Ljv3;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4}, Ljv3;->g(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":status"

    invoke-static {v6, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "HTTP/1.1 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lk88$a;->a(Ljava/lang/String;)Lk88;

    move-result-object v5

    goto :goto_2

    :cond_1
    sget-object v8, Lqy3;->h:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0, v6, v7}, Ljv3$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_5

    new-instance v2, Lz47$a;

    invoke-direct {v2}, Lz47$a;-><init>()V

    iput-object p0, v2, Lz47$a;->b:Lts6;

    iget p0, v5, Lk88;->b:I

    iput p0, v2, Lz47$a;->c:I

    iget-object p0, v5, Lk88;->c:Ljava/lang/String;

    iput-object p0, v2, Lz47$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljv3$a;->e()Ljv3;

    move-result-object p0

    invoke-virtual {p0}, Ljv3;->d()Ljv3$a;

    move-result-object p0

    iput-object p0, v2, Lz47$a;->f:Ljv3$a;

    if-eqz p1, :cond_4

    iget p0, v2, Lz47$a;->c:I

    const/16 p1, 0x64

    if-ne p0, p1, :cond_4

    return-object v1

    :cond_4
    return-object v2

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_6
    :try_start_5
    iget-object p0, v0, Lvy3;->n:Ljava/io/IOException;

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p0, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, v0, Lvy3;->m:Lp03;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lp03;)V

    :goto_3
    throw p0

    :goto_4
    iget-object p1, v0, Lvy3;->k:Lvy3$c;

    invoke-virtual {p1}, Lvy3$c;->k()V

    throw p0

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :cond_8
    const-string p0, "stream wasn\'t created"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-object v1
.end method
