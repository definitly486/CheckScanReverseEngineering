.class public final Lvy3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvy3$a;,
        Lvy3$b;,
        Lvy3$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lhy3;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public final g:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljv3;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public final i:Lvy3$b;

.field public final j:Lvy3$a;

.field public final k:Lvy3$c;

.field public final l:Lvy3$c;

.field public m:Lp03;

.field public n:Ljava/io/IOException;


# direct methods
.method public constructor <init>(ILhy3;ZZLjv3;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvy3;->a:I

    iput-object p2, p0, Lvy3;->b:Lhy3;

    iget-object p1, p2, Lhy3;->r:Lor7;

    invoke-virtual {p1}, Lor7;->a()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lvy3;->f:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lvy3;->g:Ljava/util/ArrayDeque;

    new-instance v0, Lvy3$b;

    iget-object p2, p2, Lhy3;->q:Lor7;

    invoke-virtual {p2}, Lor7;->a()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Lvy3$b;-><init>(Lvy3;JZ)V

    iput-object v0, p0, Lvy3;->i:Lvy3$b;

    new-instance p2, Lvy3$a;

    invoke-direct {p2, p0, p3}, Lvy3$a;-><init>(Lvy3;Z)V

    iput-object p2, p0, Lvy3;->j:Lvy3$a;

    new-instance p2, Lvy3$c;

    invoke-direct {p2, p0}, Lvy3$c;-><init>(Lvy3;)V

    iput-object p2, p0, Lvy3;->k:Lvy3$c;

    new-instance p2, Lvy3$c;

    invoke-direct {p2, p0}, Lvy3$c;-><init>(Lvy3;)V

    iput-object p2, p0, Lvy3;->l:Lvy3$c;

    const/4 p2, 0x0

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lvy3;->g()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "locally-initiated streams shouldn\'t have headers yet"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0}, Lvy3;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    const-string p0, "remotely-initiated streams should have headers"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lgb9;->a:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvy3;->i:Lvy3$b;

    iget-boolean v1, v0, Lvy3$b;->c:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lvy3$b;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvy3;->j:Lvy3$a;

    iget-boolean v1, v0, Lvy3$a;->b:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lvy3$a;->d:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lvy3;->h()Z

    move-result v1

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_2

    sget-object v0, Lp03;->CANCEL:Lp03;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lvy3;->c(Lp03;Ljava/io/IOException;)V

    return-void

    :cond_2
    if-nez v1, :cond_3

    iget-object v0, p0, Lvy3;->b:Lhy3;

    iget p0, p0, Lvy3;->a:I

    invoke-virtual {v0, p0}, Lhy3;->e(I)Lvy3;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lvy3;->j:Lvy3$a;

    iget-boolean v1, v0, Lvy3$a;->d:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lvy3$a;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lvy3;->m:Lp03;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lvy3;->n:Ljava/io/IOException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lokhttp3/internal/http2/StreamResetException;

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/StreamResetException;-><init>(Lp03;)V

    :goto_0
    throw p0

    :cond_1
    return-void

    :cond_2
    const-string p0, "stream finished"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "stream closed"

    invoke-static {p0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lp03;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lvy3;->d(Lp03;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lvy3;->b:Lhy3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lhy3;->x:Lwy3;

    iget p0, p0, Lvy3;->a:I

    invoke-virtual {p2, p0, p1}, Lwy3;->g(ILp03;)V

    return-void
.end method

.method public final d(Lp03;Ljava/io/IOException;)Z
    .locals 2

    sget-object v0, Lgb9;->a:[B

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvy3;->m:Lp03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lvy3;->m:Lp03;

    iput-object p2, p0, Lvy3;->n:Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lvy3;->i:Lvy3$b;

    iget-boolean p1, p1, Lvy3$b;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lvy3;->j:Lvy3$a;

    iget-boolean p1, p1, Lvy3$a;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object p1, Lj59;->a:Lj59;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lvy3;->b:Lhy3;

    iget p0, p0, Lvy3;->a:I

    invoke-virtual {p1, p0}, Lhy3;->e(I)Lvy3;

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final e(Lp03;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvy3;->d(Lp03;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lvy3;->b:Lhy3;

    iget p0, p0, Lvy3;->a:I

    invoke-virtual {v0, p0, p1}, Lhy3;->n(ILp03;)V

    return-void
.end method

.method public final f()Lvy3$a;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvy3;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lvy3;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p0, p0, Lvy3;->j:Lvy3$a;

    return-object p0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final g()Z
    .locals 3

    iget v0, p0, Lvy3;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lvy3;->b:Lhy3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public final declared-synchronized h()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvy3;->m:Lp03;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lvy3;->i:Lvy3$b;

    iget-boolean v2, v0, Lvy3$b;->c:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lvy3$b;->f:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lvy3;->j:Lvy3$a;

    iget-boolean v2, v0, Lvy3$a;->b:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lvy3$a;->d:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lvy3;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final i(Ljv3;Z)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lgb9;->a:[B

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lvy3;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lvy3;->i:Lvy3$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lvy3;->h:Z

    iget-object v0, p0, Lvy3;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lvy3;->i:Lvy3$b;

    iput-boolean v1, p1, Lvy3$b;->c:Z

    :cond_2
    invoke-virtual {p0}, Lvy3;->h()Z

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_3

    iget-object p1, p0, Lvy3;->b:Lhy3;

    iget p0, p0, Lvy3;->a:I

    invoke-virtual {p1, p0}, Lhy3;->e(I)Lvy3;

    :cond_3
    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method
