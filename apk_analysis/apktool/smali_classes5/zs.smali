.class public final Lzs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls18;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzs$d;,
        Lzs$e;
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lbu0;

.field public final d:Loq7;

.field public final e:Llv5;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lbt;

.field public j:Ljava/net/Socket;

.field public k:Z

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Loq7;Llv5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzs;->b:Ljava/lang/Object;

    new-instance v0, Lbu0;

    invoke-direct {v0}, Lbu0;-><init>()V

    iput-object v0, p0, Lzs;->c:Lbu0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzs;->f:Z

    iput-boolean v0, p0, Lzs;->g:Z

    iput-boolean v0, p0, Lzs;->h:Z

    const-string v0, "executor"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lzs;->d:Loq7;

    iput-object p2, p0, Lzs;->e:Llv5;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lzs;->h:Z

    if-nez v0, :cond_4

    invoke-static {}, Lr46;->c()V

    :try_start_0
    iget-object v0, p0, Lzs;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lzs;->c:Lbu0;

    invoke-virtual {v1, p1, p2, p3}, Lbu0;->H(Lbu0;J)V

    iget p1, p0, Lzs;->m:I

    iget p2, p0, Lzs;->l:I

    add-int/2addr p1, p2

    iput p1, p0, Lzs;->m:I

    const/4 p2, 0x0

    iput p2, p0, Lzs;->l:I

    iget-boolean p3, p0, Lzs;->k:Z

    const/4 v1, 0x1

    if-nez p3, :cond_0

    const/16 p3, 0x2710

    if-le p1, p3, :cond_0

    iput-boolean v1, p0, Lzs;->k:Z

    move p2, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Lzs;->f:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lzs;->g:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lzs;->c:Lbu0;

    invoke-virtual {p1}, Lbu0;->v()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_1

    goto :goto_2

    :cond_1
    iput-boolean v1, p0, Lzs;->f:Z

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    :try_start_2
    iget-object p1, p0, Lzs;->j:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p0, p0, Lzs;->e:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_2
    :try_start_4
    iget-object p1, p0, Lzs;->d:Loq7;

    new-instance p2, Lzs$a;

    invoke-direct {p2, p0}, Lzs$a;-><init>(Lzs;)V

    invoke-virtual {p1, p2}, Loq7;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_3
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_8
    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0

    :cond_4
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lbt;Ljava/net/Socket;)V
    .locals 2

    iget-object v0, p0, Lzs;->i:Lbt;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iput-object p1, p0, Lzs;->i:Lbt;

    const-string p1, "socket"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lzs;->j:Ljava/net/Socket;

    return-void
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lzs;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzs;->h:Z

    new-instance v0, Lzs$c;

    invoke-direct {v0, p0}, Lzs$c;-><init>(Lzs;)V

    iget-object p0, p0, Lzs;->d:Loq7;

    invoke-virtual {p0, v0}, Loq7;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, Lzs;->h:Z

    if-nez v0, :cond_1

    invoke-static {}, Lr46;->c()V

    :try_start_0
    iget-object v0, p0, Lzs;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lzs;->g:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lzs;->g:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lzs;->d:Loq7;

    new-instance v1, Lzs$b;

    invoke-direct {v1, p0}, Lzs$b;-><init>(Lzs;)V

    invoke-virtual {v0, v1}, Loq7;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_6
    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    sget-object p0, Lwv8;->d:Lwv8$a;

    return-object p0
.end method
