.class public final Ljy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy6$a;,
        Ljy6$b;
    }
.end annotation


# instance fields
.field public final b:Lokhttp3/OkHttpClient;

.field public final c:Lb37;

.field public final d:Lpy6;

.field public final e:Lokhttp3/b;

.field public final f:Lky6;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Ljava/lang/Object;

.field public i:Lp13;

.field public j:Lly6;

.field public k:Z

.field public l:Ln13;

.field public m:Z

.field public n:Z

.field public o:Z

.field public volatile p:Z

.field public volatile q:Ln13;

.field public volatile r:Lly6;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lb37;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Ljy6;->c:Lb37;

    iget-object p2, p1, Lokhttp3/OkHttpClient;->c:Lnw1;

    iget-object p2, p2, Lnw1;->b:Ljava/lang/Object;

    check-cast p2, Lpy6;

    iput-object p2, p0, Ljy6;->d:Lpy6;

    iget-object p2, p1, Lokhttp3/OkHttpClient;->f:Lokhttp3/b$c;

    invoke-interface {p2, p0}, Lokhttp3/b$c;->a(Ljy6;)Lokhttp3/b;

    move-result-object p2

    iput-object p2, p0, Ljy6;->e:Lokhttp3/b;

    new-instance p2, Lky6;

    invoke-direct {p2, p0}, Lky6;-><init>(Ljy6;)V

    iget p1, p1, Lokhttp3/OkHttpClient;->x:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lwv8;->g(J)Lwv8;

    iput-object p2, p0, Ljy6;->f:Lky6;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Ljy6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljy6;->o:Z

    return-void
.end method


# virtual methods
.method public final a(Lty0;)V
    .locals 4

    iget-object v0, p0, Ljy6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lz86;->a:Lz86;

    sget-object v0, Lz86;->a:Lz86;

    invoke-virtual {v0}, Lz86;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljy6;->h:Ljava/lang/Object;

    iget-object v0, p0, Ljy6;->e:Lokhttp3/b;

    invoke-virtual {v0, p0}, Lokhttp3/b;->callStart(Lokhttp3/a;)V

    iget-object v0, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->b:Lko2;

    new-instance v1, Ljy6$a;

    invoke-direct {v1, p0, p1}, Ljy6$a;-><init>(Ljy6;Lty0;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lko2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Ljy6;->c:Lb37;

    iget-object p0, p0, Lb37;->a:Lfz3;

    iget-object p0, p0, Lfz3;->d:Ljava/lang/String;

    iget-object p1, v0, Lko2;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljy6$a;

    iget-object v3, v2, Ljy6$a;->d:Ljy6;

    iget-object v3, v3, Ljy6;->c:Lb37;

    iget-object v3, v3, Lb37;->a:Lfz3;

    iget-object v3, v3, Lfz3;->d:Ljava/lang/String;

    invoke-static {v3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lko2;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljy6$a;

    iget-object v3, v2, Ljy6$a;->d:Ljy6;

    iget-object v3, v3, Ljy6;->c:Lb37;

    iget-object v3, v3, Lb37;->a:Lfz3;

    iget-object v3, v3, Lfz3;->d:Ljava/lang/String;

    invoke-static {v3, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-object p0, v2, Ljy6$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p0, v1, Ljy6$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_4
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v0}, Lko2;->d()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    const-string p0, "Already Executed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lly6;)V
    .locals 2

    sget-object v0, Lgb9;->a:[B

    iget-object v0, p0, Ljy6;->j:Lly6;

    if-nez v0, :cond_0

    iput-object p1, p0, Ljy6;->j:Lly6;

    iget-object p1, p1, Lly6;->p:Ljava/util/ArrayList;

    new-instance v0, Ljy6$b;

    iget-object v1, p0, Ljy6;->h:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Ljy6$b;-><init>(Ljy6;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(TE;)TE;"
        }
    .end annotation

    sget-object v0, Lgb9;->a:[B

    iget-object v0, p0, Ljy6;->j:Lly6;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljy6;->h()Ljava/net/Socket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v2, p0, Ljy6;->j:Lly6;

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_0
    iget-object v1, p0, Ljy6;->e:Lokhttp3/b;

    invoke-virtual {v1, p0, v0}, Lokhttp3/b;->connectionReleased(Lokhttp3/a;Llw1;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    :goto_0
    iget-boolean v0, p0, Ljy6;->k:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Ljy6;->f:Lky6;

    invoke-virtual {v0}, Lat;->i()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_6
    :goto_2
    iget-object v1, p0, Ljy6;->e:Lokhttp3/b;

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, v0}, Lokhttp3/b;->callFailed(Lokhttp3/a;Ljava/io/IOException;)V

    return-object v0

    :cond_7
    invoke-virtual {v1, p0}, Lokhttp3/b;->callEnd(Lokhttp3/a;)V

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Ljy6;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljy6;->p:Z

    iget-object v0, p0, Ljy6;->q:Ln13;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ln13;->d:Lo13;

    invoke-interface {v0}, Lo13;->cancel()V

    :cond_1
    iget-object v0, p0, Ljy6;->r:Lly6;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lly6;->c:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lgb9;->e(Ljava/net/Socket;)V

    :cond_2
    iget-object v0, p0, Ljy6;->e:Lokhttp3/b;

    invoke-virtual {v0, p0}, Lokhttp3/b;->canceled(Lokhttp3/a;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljy6;

    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object p0, p0, Ljy6;->c:Lb37;

    invoke-direct {v0, v1, p0}, Ljy6;-><init>(Lokhttp3/OkHttpClient;Lb37;)V

    return-object v0
.end method

.method public final d(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljy6;->o:Z

    if-eqz v0, :cond_1

    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljy6;->q:Ln13;

    if-eqz p1, :cond_0

    iget-object v1, p1, Ln13;->d:Lo13;

    invoke-interface {v1}, Lo13;->cancel()V

    iget-object v1, p1, Ln13;->a:Ljy6;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v2, v0}, Ljy6;->f(Ln13;ZZLjava/io/IOException;)Ljava/io/IOException;

    :cond_0
    iput-object v0, p0, Ljy6;->l:Ln13;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final e()Lz47;
    .locals 9

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance v0, Lo67;

    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lo67;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lxt0;

    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->k:Ll02;

    invoke-direct {v0, v1}, Lxt0;-><init>(Ll02;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lpx0;

    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->l:Llx0;

    invoke-direct {v0, v1}, Lpx0;-><init>(Llx0;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljw1;->a:Ljw1;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    new-instance v0, Loy0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lez6;

    iget-object v5, p0, Ljy6;->c:Lb37;

    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget v6, v1, Lokhttp3/OkHttpClient;->y:I

    iget v7, v1, Lokhttp3/OkHttpClient;->z:I

    iget v8, v1, Lokhttp3/OkHttpClient;->A:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lez6;-><init>(Ljy6;Ljava/util/ArrayList;ILn13;Lb37;III)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Ljy6;->c:Lb37;

    invoke-virtual {v0, v3}, Lez6;->b(Lb37;)Lz47;

    move-result-object v0

    iget-boolean v3, v1, Ljy6;->p:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v1, p0}, Ljy6;->g(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {v0}, Lgb9;->d(Ljava/io/Closeable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v1, v0}, Ljy6;->g(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v1, p0}, Ljy6;->g(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_1
    throw v0
.end method

.method public final execute()Lz47;
    .locals 3

    iget-object v0, p0, Ljy6;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljy6;->f:Lky6;

    invoke-virtual {v0}, Lat;->h()V

    sget-object v0, Lz86;->a:Lz86;

    sget-object v0, Lz86;->a:Lz86;

    invoke-virtual {v0}, Lz86;->g()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljy6;->h:Ljava/lang/Object;

    iget-object v0, p0, Ljy6;->e:Lokhttp3/b;

    invoke-virtual {v0, p0}, Lokhttp3/b;->callStart(Lokhttp3/a;)V

    :try_start_0
    iget-object v0, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->b:Lko2;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Lko2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0

    invoke-virtual {p0}, Ljy6;->e()Lz47;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->b:Lko2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lko2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lko2;->b(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, Ljy6;->b:Lokhttp3/OkHttpClient;

    iget-object v1, v1, Lokhttp3/OkHttpClient;->b:Lko2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lko2;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2, p0}, Lko2;->b(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string p0, "Already Executed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(Ln13;ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(",
            "Ln13;",
            "ZZTE;)TE;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljy6;->q:Ln13;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    monitor-enter p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Ljy6;->m:Z

    if-nez v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    if-eqz p3, :cond_7

    iget-boolean v1, p0, Ljy6;->n:Z

    if-eqz v1, :cond_7

    :cond_2
    if-eqz p2, :cond_3

    iput-boolean v0, p0, Ljy6;->m:Z

    :cond_3
    if-eqz p3, :cond_4

    iput-boolean v0, p0, Ljy6;->n:Z

    :cond_4
    iget-boolean p2, p0, Ljy6;->m:Z

    if-nez p2, :cond_5

    iget-boolean p3, p0, Ljy6;->n:Z

    if-nez p3, :cond_5

    move p3, p1

    goto :goto_1

    :cond_5
    move p3, v0

    :goto_1
    if-nez p2, :cond_6

    iget-boolean p2, p0, Ljy6;->n:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Ljy6;->o:Z

    if-nez p2, :cond_6

    move v0, p1

    :cond_6
    move p2, v0

    move v0, p3

    goto :goto_2

    :cond_7
    move p2, v0

    :goto_2
    sget-object p3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_8

    const/4 p3, 0x0

    iput-object p3, p0, Ljy6;->q:Ln13;

    iget-object p3, p0, Ljy6;->j:Lly6;

    if-eqz p3, :cond_8

    monitor-enter p3

    :try_start_1
    iget v0, p3, Lly6;->m:I

    add-int/2addr v0, p1

    iput v0, p3, Lly6;->m:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p3

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    invoke-virtual {p0, p4}, Ljy6;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_4
    return-object p4

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final g(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljy6;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ljy6;->o:Z

    iget-boolean v0, p0, Ljy6;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljy6;->n:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljy6;->c(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final h()Ljava/net/Socket;
    .locals 6

    iget-object v0, p0, Ljy6;->j:Lly6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lgb9;->a:[B

    iget-object v1, v0, Lly6;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    const/4 v2, 0x0

    if-eq v3, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-object v2, p0, Ljy6;->j:Lly6;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lly6;->q:J

    iget-object p0, p0, Ljy6;->d:Lpy6;

    iget-object v1, p0, Lpy6;->b:Ldo8;

    iget-object v3, p0, Lpy6;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v4, Lgb9;->a:[B

    iget-boolean v4, v0, Lly6;->j:Z

    if-nez v4, :cond_2

    iget-object p0, p0, Lpy6;->c:Loy6;

    invoke-static {v1, p0}, Ldo8;->d(Ldo8;Ljl8;)V

    return-object v2

    :cond_2
    const/4 p0, 0x1

    iput-boolean p0, v0, Lly6;->j:Z

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Ldo8;->a()V

    :cond_3
    iget-object p0, v0, Lly6;->d:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_4
    return-object v2

    :cond_5
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method

.method public final m()Lb37;
    .locals 0

    iget-object p0, p0, Ljy6;->c:Lb37;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Ljy6;->p:Z

    return p0
.end method
