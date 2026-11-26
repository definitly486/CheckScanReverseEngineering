.class public final Lyads/lg3;
.super Lyads/cz;
.source "SourceFile"


# instance fields
.field public final j:Lyads/ez;

.field public k:Lyads/bs;

.field public l:J

.field public volatile m:Z


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;Lyads/ez;)V
    .locals 11

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lyads/cz;-><init>(Lyads/wc0;Lyads/bd0;ILyads/vz2;ILjava/lang/Object;JJ)V

    move-object/from16 p1, p6

    iput-object p1, p0, Lyads/lg3;->j:Lyads/ez;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-wide v0, p0, Lyads/lg3;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/lg3;->j:Lyads/ez;

    iget-object v2, p0, Lyads/lg3;->k:Lyads/bs;

    move-object v1, v0

    check-cast v1, Lyads/nv;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v1 .. v6}, Lyads/nv;->a(Lyads/bs;JJ)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v1, p0, Lyads/lg3;->l:J

    iget-wide v3, v0, Lyads/bd0;->g:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    sub-long v5, v3, v1

    :goto_0
    invoke-virtual {v0, v1, v2, v5, v6}, Lyads/bd0;->a(JJ)Lyads/bd0;

    move-result-object v0

    new-instance v1, Lyads/wk0;

    iget-object v2, p0, Lyads/cz;->i:Lyads/rq5;

    iget-wide v3, v0, Lyads/bd0;->f:J

    invoke-virtual {v2, v0}, Lyads/rq5;->a(Lyads/bd0;)J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lyads/wk0;-><init>(Lyads/tc0;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lyads/lg3;->m:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lyads/lg3;->j:Lyads/ez;

    check-cast v0, Lyads/nv;

    iget-object v0, v0, Lyads/nv;->b:Lyads/ws2;

    sget-object v2, Lyads/nv;->l:Lyads/qx4;

    invoke-interface {v0, v1, v2}, Lyads/ws2;->a(Lyads/xs2;Lyads/qx4;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_2
    iget-wide v0, v1, Lyads/wk0;->d:J

    iget-object v2, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v2, v2, Lyads/bd0;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lyads/lg3;->l:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-static {p0}, Lyads/zc0;->a(Lyads/wc0;)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_3
    iget-wide v1, v1, Lyads/wk0;->d:J

    iget-object v3, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v3, v3, Lyads/bd0;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lyads/lg3;->l:J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iget-object p0, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-static {p0}, Lyads/zc0;->a(Lyads/wc0;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/lg3;->m:Z

    return-void
.end method
