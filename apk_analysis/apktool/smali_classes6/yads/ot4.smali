.class public final Lyads/ot4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/oh5;


# instance fields
.field public a:Lyads/vz2;

.field public b:Lyads/vx5;

.field public c:Lyads/k06;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/uz2;

    invoke-direct {v0}, Lyads/uz2;-><init>()V

    iput-object p1, v0, Lyads/uz2;->k:Ljava/lang/String;

    new-instance p1, Lyads/vz2;

    invoke-direct {p1, v0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p1, p0, Lyads/ot4;->a:Lyads/vz2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/os4;)V
    .locals 13

    iget-object v1, p0, Lyads/ot4;->b:Lyads/vx5;

    if-eqz v1, :cond_4

    sget v0, Lyads/u56;->a:I

    monitor-enter v1

    :try_start_0
    iget-wide v2, v1, Lyads/vx5;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v6, v1, Lyads/vx5;->b:J

    add-long/2addr v2, v6

    :goto_0
    move-wide v7, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Lyads/vx5;->a()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v1

    iget-object v0, p0, Lyads/ot4;->b:Lyads/vx5;

    invoke-virtual {v0}, Lyads/vx5;->b()J

    move-result-wide v0

    cmp-long v2, v7, v4

    if-eqz v2, :cond_3

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lyads/ot4;->a:Lyads/vz2;

    iget-wide v3, v2, Lyads/vz2;->q:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    new-instance v3, Lyads/uz2;

    invoke-direct {v3, v2}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iput-wide v0, v3, Lyads/uz2;->o:J

    new-instance v0, Lyads/vz2;

    invoke-direct {v0, v3}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v0, p0, Lyads/ot4;->a:Lyads/vz2;

    iget-object v1, p0, Lyads/ot4;->c:Lyads/k06;

    invoke-interface {v1, v0}, Lyads/k06;->a(Lyads/vz2;)V

    :cond_2
    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int v10, v0, v1

    iget-object v0, p0, Lyads/ot4;->c:Lyads/k06;

    invoke-interface {v0, v10, p1}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v6, p0, Lyads/ot4;->c:Lyads/k06;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_3
    :goto_2
    return-void

    :goto_3
    monitor-exit v1

    throw p0

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lyads/ot4;->b:Lyads/vx5;

    .line 101
    invoke-virtual {p3}, Lyads/t26;->a()V

    .line 102
    invoke-virtual {p3}, Lyads/t26;->b()V

    .line 103
    iget p1, p3, Lyads/t26;->d:I

    const/4 p3, 0x5

    .line 104
    invoke-interface {p2, p1, p3}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/ot4;->c:Lyads/k06;

    .line 105
    iget-object p0, p0, Lyads/ot4;->a:Lyads/vz2;

    invoke-interface {p1, p0}, Lyads/k06;->a(Lyads/vz2;)V

    return-void
.end method
