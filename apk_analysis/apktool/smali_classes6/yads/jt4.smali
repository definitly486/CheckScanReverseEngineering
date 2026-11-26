.class public final Lyads/jt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/nu3;


# instance fields
.field public final a:J

.field public final b:Lyads/bd0;

.field public final c:I

.field public final d:Lyads/rq5;

.field public final e:Lyads/it4;

.field public volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lyads/wc0;Landroid/net/Uri;ILyads/it4;)V
    .locals 14

    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const-string v0, "The uri must be set."

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lyads/zj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyads/bd0;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, Lyads/bd0;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lyads/rq5;

    invoke-direct {v1, p1}, Lyads/rq5;-><init>(Lyads/wc0;)V

    iput-object v1, p0, Lyads/jt4;->d:Lyads/rq5;

    iput-object v0, p0, Lyads/jt4;->b:Lyads/bd0;

    move/from16 p1, p3

    iput p1, p0, Lyads/jt4;->c:I

    move-object/from16 p1, p4

    iput-object p1, p0, Lyads/jt4;->e:Lyads/it4;

    sget-object p1, Lyads/cu3;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lyads/jt4;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lyads/jt4;->d:Lyads/rq5;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lyads/rq5;->b:J

    new-instance v0, Lyads/yc0;

    iget-object v1, p0, Lyads/jt4;->d:Lyads/rq5;

    iget-object v2, p0, Lyads/jt4;->b:Lyads/bd0;

    invoke-direct {v0, v1, v2}, Lyads/yc0;-><init>(Lyads/wc0;Lyads/bd0;)V

    :try_start_0
    iget-object v1, v0, Lyads/yc0;->b:Lyads/wc0;

    iget-object v2, v0, Lyads/yc0;->c:Lyads/bd0;

    invoke-interface {v1, v2}, Lyads/wc0;->a(Lyads/bd0;)J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/yc0;->e:Z

    iget-object v1, p0, Lyads/jt4;->d:Lyads/rq5;

    iget-object v1, v1, Lyads/rq5;->a:Lyads/wc0;

    invoke-interface {v1}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lyads/jt4;->e:Lyads/it4;

    invoke-interface {v2, v1, v0}, Lyads/it4;->a(Landroid/net/Uri;Lyads/yc0;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lyads/jt4;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lyads/u56;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lyads/u56;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
