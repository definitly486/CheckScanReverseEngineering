.class public final Lvy3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls18;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Z

.field public final c:Lbu0;

.field public d:Z

.field public final synthetic e:Lvy3;


# direct methods
.method public constructor <init>(Lvy3;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvy3$a;->e:Lvy3;

    iput-boolean p2, p0, Lvy3$a;->b:Z

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, p0, Lvy3$a;->c:Lbu0;

    return-void
.end method


# virtual methods
.method public final H(Lbu0;J)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lgb9;->a:[B

    iget-object v0, p0, Lvy3$a;->c:Lbu0;

    invoke-virtual {v0, p1, p2, p3}, Lbu0;->H(Lbu0;J)V

    :goto_0
    iget-wide p1, v0, Lbu0;->c:J

    const-wide/16 v1, 0x4000

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lvy3$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 12

    iget-object v1, p0, Lvy3$a;->e:Lvy3;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lvy3;->l:Lvy3$c;

    invoke-virtual {v0}, Lat;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-wide v2, v1, Lvy3;->e:J

    iget-wide v4, v1, Lvy3;->f:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lvy3$a;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lvy3$a;->d:Z

    if-nez v0, :cond_0

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lvy3;->m:Lp03;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :try_start_8
    iget-object v0, v1, Lvy3;->l:Lvy3$c;

    invoke-virtual {v0}, Lvy3$c;->k()V

    invoke-virtual {v1}, Lvy3;->b()V

    iget-wide v2, v1, Lvy3;->f:J

    iget-wide v4, v1, Lvy3;->e:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lvy3$a;->c:Lbu0;

    iget-wide v4, v0, Lbu0;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iget-wide v2, v1, Lvy3;->e:J

    add-long/2addr v2, v10

    iput-wide v2, v1, Lvy3;->e:J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lvy3$a;->c:Lbu0;

    iget-wide v2, p1, Lbu0;->c:J

    cmp-long p1, v10, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :goto_1
    move v8, p1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    sget-object p1, Lj59;->a:Lj59;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v1

    iget-object p1, p0, Lvy3$a;->e:Lvy3;

    iget-object p1, p1, Lvy3;->l:Lvy3$c;

    invoke-virtual {p1}, Lat;->h()V

    :try_start_9
    iget-object p1, p0, Lvy3$a;->e:Lvy3;

    iget-object v6, p1, Lvy3;->b:Lhy3;

    iget v7, p1, Lvy3;->a:I

    iget-object v9, p0, Lvy3$a;->c:Lbu0;

    invoke-virtual/range {v6 .. v11}, Lhy3;->m(IZLbu0;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    iget-object p0, p0, Lvy3$a;->e:Lvy3;

    iget-object p0, p0, Lvy3;->l:Lvy3$c;

    invoke-virtual {p0}, Lvy3$c;->k()V

    return-void

    :catchall_3
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lvy3$a;->e:Lvy3;

    iget-object p0, p0, Lvy3;->l:Lvy3$c;

    invoke-virtual {p0}, Lvy3$c;->k()V

    throw p1

    :goto_3
    :try_start_a
    iget-object p1, v1, Lvy3;->l:Lvy3$c;

    invoke-virtual {p1}, Lvy3$c;->k()V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_4
    monitor-exit v1

    throw p0
.end method

.method public final close()V
    .locals 13

    iget-object v1, p0, Lvy3$a;->e:Lvy3;

    sget-object v0, Lgb9;->a:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lvy3$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v1, Lvy3;->m:Lp03;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    iget-object v1, p0, Lvy3$a;->e:Lvy3;

    iget-object v3, v1, Lvy3;->j:Lvy3$a;

    iget-boolean v3, v3, Lvy3$a;->b:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lvy3$a;->c:Lbu0;

    iget-wide v3, v3, Lbu0;->c:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    :goto_1
    iget-object v0, p0, Lvy3$a;->c:Lbu0;

    iget-wide v0, v0, Lbu0;->c:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_3

    invoke-virtual {p0, v2}, Lvy3$a;->a(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v7, v1, Lvy3;->b:Lhy3;

    iget v8, v1, Lvy3;->a:I

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v12}, Lhy3;->m(IZLbu0;J)V

    :cond_3
    iget-object v1, p0, Lvy3$a;->e:Lvy3;

    monitor-enter v1

    :try_start_4
    iput-boolean v2, p0, Lvy3$a;->d:Z

    sget-object v0, Lj59;->a:Lj59;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    iget-object v0, p0, Lvy3$a;->e:Lvy3;

    iget-object v0, v0, Lvy3;->b:Lhy3;

    iget-object v0, v0, Lhy3;->x:Lwy3;

    invoke-virtual {v0}, Lwy3;->flush()V

    iget-object p0, p0, Lvy3$a;->e:Lvy3;

    invoke-virtual {p0}, Lvy3;->a()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final flush()V
    .locals 4

    iget-object v0, p0, Lvy3$a;->e:Lvy3;

    sget-object v1, Lgb9;->a:[B

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Lvy3;->b()V

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    :goto_0
    iget-object v0, p0, Lvy3$a;->c:Lbu0;

    iget-wide v0, v0, Lbu0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvy3$a;->a(Z)V

    iget-object v0, p0, Lvy3$a;->e:Lvy3;

    iget-object v0, v0, Lvy3;->b:Lhy3;

    iget-object v0, v0, Lhy3;->x:Lwy3;

    invoke-virtual {v0}, Lwy3;->flush()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Lvy3$a;->e:Lvy3;

    iget-object p0, p0, Lvy3;->l:Lvy3$c;

    return-object p0
.end method
