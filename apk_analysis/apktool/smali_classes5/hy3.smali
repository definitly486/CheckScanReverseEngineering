.class public final Lhy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhy3$a;,
        Lhy3$b;,
        Lhy3$c;
    }
.end annotation


# static fields
.field public static final A:Lor7;


# instance fields
.field public final b:Lhy3$b;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Z

.field public final h:Lho8;

.field public final i:Ldo8;

.field public final j:Ldo8;

.field public final k:Ldo8;

.field public final l:Lnu6;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public final q:Lor7;

.field public r:Lor7;

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public final w:Ljava/net/Socket;

.field public final x:Lwy3;

.field public final y:Lhy3$c;

.field public final z:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lor7;

    invoke-direct {v0}, Lor7;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, Lor7;->b(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lor7;->b(II)V

    sput-object v0, Lhy3;->A:Lor7;

    return-void
.end method

.method public constructor <init>(Lhy3$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhy3$a;->f:Lhy3$b;

    iput-object v0, p0, Lhy3;->b:Lhy3$b;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lhy3$a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lhy3;->d:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lhy3;->f:I

    iget-object v0, p1, Lhy3$a;->a:Lho8;

    iput-object v0, p0, Lhy3;->h:Lho8;

    invoke-virtual {v0}, Lho8;->d()Ldo8;

    move-result-object v2

    iput-object v2, p0, Lhy3;->i:Ldo8;

    invoke-virtual {v0}, Lho8;->d()Ldo8;

    move-result-object v2

    iput-object v2, p0, Lhy3;->j:Ldo8;

    invoke-virtual {v0}, Lho8;->d()Ldo8;

    move-result-object v0

    iput-object v0, p0, Lhy3;->k:Ldo8;

    sget-object v0, Lnu6;->c:Lnu6;

    iput-object v0, p0, Lhy3;->l:Lnu6;

    new-instance v0, Lor7;

    invoke-direct {v0}, Lor7;-><init>()V

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v2, v3}, Lor7;->b(II)V

    iput-object v0, p0, Lhy3;->q:Lor7;

    sget-object v0, Lhy3;->A:Lor7;

    iput-object v0, p0, Lhy3;->r:Lor7;

    invoke-virtual {v0}, Lor7;->a()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lhy3;->v:J

    iget-object v0, p1, Lhy3$a;->b:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lhy3;->w:Ljava/net/Socket;

    new-instance v0, Lwy3;

    iget-object v2, p1, Lhy3$a;->e:Lhy6;

    if-eqz v2, :cond_1

    invoke-direct {v0, v2}, Lwy3;-><init>(Lhy6;)V

    iput-object v0, p0, Lhy3;->x:Lwy3;

    new-instance v0, Lhy3$c;

    new-instance v2, Luy3;

    iget-object p1, p1, Lhy3$a;->d:Liy6;

    if-eqz p1, :cond_0

    invoke-direct {v2, p1}, Luy3;-><init>(Liy6;)V

    invoke-direct {v0, p0, v2}, Lhy3$c;-><init>(Lhy3;Luy3;)V

    iput-object v0, p0, Lhy3;->y:Lhy3$c;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lhy3;->z:Ljava/util/LinkedHashSet;

    return-void

    :cond_0
    const-string p0, "source"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "sink"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, "socket"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "connectionName"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Lp03;Lp03;Ljava/io/IOException;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lgb9;->a:[B

    :try_start_0
    invoke-virtual {p0, p1}, Lhy3;->f(Lp03;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [Lvy3;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    check-cast p1, [Lvy3;

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p2, p3}, Lvy3;->c(Lp03;Ljava/io/IOException;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lhy3;->x:Lwy3;

    invoke-virtual {p1}, Lwy3;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, Lhy3;->w:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, Lhy3;->i:Ldo8;

    invoke-virtual {p1}, Ldo8;->f()V

    iget-object p1, p0, Lhy3;->j:Ldo8;

    invoke-virtual {p1}, Ldo8;->f()V

    iget-object p0, p0, Lhy3;->k:Ldo8;

    invoke-virtual {p0}, Ldo8;->f()V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)Lvy3;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvy3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lp03;->NO_ERROR:Lp03;

    sget-object v1, Lp03;->CANCEL:Lp03;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized e(I)Lvy3;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvy3;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(Lp03;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lhy3;->x:Lwy3;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lp07;

    invoke-direct {v1}, Lp07;-><init>()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v2, p0, Lhy3;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lhy3;->g:Z

    iget v2, p0, Lhy3;->e:I

    iput v2, v1, Lp07;->b:I

    sget-object v1, Lj59;->a:Lj59;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object p0, p0, Lhy3;->x:Lwy3;

    sget-object v1, Lgb9;->a:[B

    invoke-virtual {p0, v2, p1, v1}, Lwy3;->e(ILp03;[B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public final declared-synchronized g(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lhy3;->s:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lhy3;->s:J

    iget-wide p1, p0, Lhy3;->t:J

    sub-long/2addr v0, p1

    iget-object p1, p0, Lhy3;->q:Lor7;

    invoke-virtual {p1}, Lor7;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lhy3;->o(IJ)V

    iget-wide p1, p0, Lhy3;->t:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lhy3;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(IZLbu0;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p0, p0, Lhy3;->x:Lwy3;

    invoke-virtual {p0, p2, p1, p3, v3}, Lwy3;->w(ZILbu0;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, Lhy3;->u:J

    iget-wide v6, p0, Lhy3;->v:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    iget-object v2, p0, Lhy3;->c:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, Lhy3;->x:Lwy3;

    iget v4, v4, Lwy3;->d:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, Lhy3;->u:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lhy3;->u:J

    sget-object v4, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, Lhy3;->x:Lwy3;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, Lwy3;->w(ZILbu0;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final n(ILp03;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lhy3$d;

    invoke-direct {v1, v0, p0, p1, p2}, Lhy3$d;-><init>(Ljava/lang/String;Lhy3;ILp03;)V

    iget-object p0, p0, Lhy3;->i:Ldo8;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Ldo8;->c(Ljl8;J)V

    return-void
.end method

.method public final o(IJ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhy3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lhy3$e;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lhy3$e;-><init>(Ljava/lang/String;Lhy3;IJ)V

    iget-object p0, v4, Lhy3;->i:Ldo8;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v2, p1, p2}, Ldo8;->c(Ljl8;J)V

    return-void
.end method
