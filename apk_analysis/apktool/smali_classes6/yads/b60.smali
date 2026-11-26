.class public final Lyads/b60;
.super Lyads/zr;
.source "SourceFile"


# instance fields
.field public final o:I

.field public final p:J

.field public final q:Lyads/ez;

.field public r:J

.field public volatile s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJJJIJLyads/ez;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lyads/zr;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJJJ)V

    move/from16 p1, p16

    iput p1, p0, Lyads/b60;->o:I

    move-wide/from16 p1, p17

    iput-wide p1, p0, Lyads/b60;->p:J

    move-object/from16 p1, p19

    iput-object p1, p0, Lyads/b60;->q:Lyads/ez;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-wide v0, p0, Lyads/b60;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v3, p0, Lyads/zr;->m:Lyads/bs;

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lyads/b60;->p:J

    iget-object v0, v3, Lyads/bs;->b:[Lyads/lc5;

    array-length v2, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    aget-object v7, v0, v6

    iget-wide v8, v7, Lyads/lc5;->E:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_0

    iput-wide v4, v7, Lyads/lc5;->E:J

    iput-boolean v1, v7, Lyads/lc5;->z:Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyads/b60;->q:Lyads/ez;

    iget-wide v4, p0, Lyads/zr;->k:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    move-wide v4, v6

    goto :goto_1

    :cond_2
    iget-wide v8, p0, Lyads/b60;->p:J

    sub-long/2addr v4, v8

    :goto_1
    iget-wide v8, p0, Lyads/zr;->l:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v6, p0, Lyads/b60;->p:J

    sub-long v6, v8, v6

    :goto_2
    move-object v2, v0

    check-cast v2, Lyads/nv;

    invoke-virtual/range {v2 .. v7}, Lyads/nv;->a(Lyads/bs;JJ)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void

    :cond_5
    :goto_3
    :try_start_0
    iget-object v0, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v2, p0, Lyads/b60;->r:J

    iget-wide v4, v0, Lyads/bd0;->g:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    sub-long v6, v4, v2

    :goto_4
    invoke-virtual {v0, v2, v3, v6, v7}, Lyads/bd0;->a(JJ)Lyads/bd0;

    move-result-object v0

    new-instance v2, Lyads/wk0;

    iget-object v3, p0, Lyads/cz;->i:Lyads/rq5;

    iget-wide v4, v0, Lyads/bd0;->f:J

    invoke-virtual {v3, v0}, Lyads/rq5;->a(Lyads/bd0;)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lyads/wk0;-><init>(Lyads/tc0;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_5
    :try_start_1
    iget-boolean v0, p0, Lyads/b60;->s:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lyads/b60;->q:Lyads/ez;

    check-cast v0, Lyads/nv;

    iget-object v0, v0, Lyads/nv;->b:Lyads/ws2;

    sget-object v3, Lyads/nv;->l:Lyads/qx4;

    invoke-interface {v0, v2, v3}, Lyads/ws2;->a(Lyads/xs2;Lyads/qx4;)I

    move-result v0

    if-eq v0, v1, :cond_7

    if-nez v0, :cond_8

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_8
    :try_start_2
    iget-wide v2, v2, Lyads/wk0;->d:J

    iget-object v0, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v4, v0, Lyads/bd0;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lyads/b60;->r:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-static {v0}, Lyads/zc0;->a(Lyads/wc0;)V

    iget-boolean v0, p0, Lyads/b60;->s:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lyads/b60;->t:Z

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_6
    :try_start_3
    iget-wide v1, v2, Lyads/wk0;->d:J

    iget-object v3, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v3, v3, Lyads/bd0;->f:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lyads/b60;->r:J

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_7
    iget-object p0, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-static {p0}, Lyads/zc0;->a(Lyads/wc0;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/b60;->s:Z

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lyads/zr;->j:J

    iget p0, p0, Lyads/b60;->o:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lyads/b60;->t:Z

    return p0
.end method
