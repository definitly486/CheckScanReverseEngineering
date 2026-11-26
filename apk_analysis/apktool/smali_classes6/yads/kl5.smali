.class public final Lyads/kl5;
.super Lyads/zr;
.source "SourceFile"


# instance fields
.field public final o:I

.field public final p:Lyads/vz2;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJILyads/vz2;)V
    .locals 16

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v14, p10

    invoke-direct/range {v0 .. v15}, Lyads/zr;-><init>(Lyads/wc0;Lyads/bd0;Lyads/vz2;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p12

    iput v1, v0, Lyads/kl5;->o:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lyads/kl5;->p:Lyads/vz2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-object v0, p0, Lyads/zr;->m:Lyads/bs;

    if-eqz v0, :cond_7

    iget-object v1, v0, Lyads/bs;->b:[Lyads/lc5;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    iget-wide v7, v6, Lyads/lc5;->E:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    iput-wide v9, v6, Lyads/lc5;->E:J

    iput-boolean v5, v6, Lyads/lc5;->z:Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lyads/kl5;->o:I

    move v2, v3

    :goto_1
    iget-object v4, v0, Lyads/bs;->a:[I

    array-length v6, v4

    if-ge v2, v6, :cond_3

    aget v4, v4, v2

    if-ne v1, v4, :cond_2

    iget-object v0, v0, Lyads/bs;->b:[Lyads/lc5;

    aget-object v0, v0, v2

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unmatched track of type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMediaChunkOutput"

    invoke-static {v1, v0}, Lyads/sv3;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lyads/cm2;

    invoke-direct {v0}, Lyads/cm2;-><init>()V

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lyads/kl5;->p:Lyads/vz2;

    invoke-interface {v6, v0}, Lyads/k06;->a(Lyads/vz2;)V

    :try_start_0
    iget-object v0, p0, Lyads/cz;->b:Lyads/bd0;

    iget-wide v1, p0, Lyads/kl5;->q:J

    iget-wide v7, v0, Lyads/bd0;->g:J

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_4

    move-wide v7, v9

    goto :goto_4

    :cond_4
    sub-long/2addr v7, v1

    :goto_4
    invoke-virtual {v0, v1, v2, v7, v8}, Lyads/bd0;->a(JJ)Lyads/bd0;

    move-result-object v0

    iget-object v1, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-virtual {v1, v0}, Lyads/rq5;->a(Lyads/bd0;)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-eqz v2, :cond_5

    iget-wide v7, p0, Lyads/kl5;->q:J

    add-long/2addr v0, v7

    :cond_5
    move-wide v11, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :goto_5
    new-instance v7, Lyads/wk0;

    iget-object v8, p0, Lyads/cz;->i:Lyads/rq5;

    iget-wide v9, p0, Lyads/kl5;->q:J

    invoke-direct/range {v7 .. v12}, Lyads/wk0;-><init>(Lyads/tc0;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    iget-wide v0, p0, Lyads/kl5;->q:J

    const/4 v2, -0x1

    if-eq v3, v2, :cond_6

    int-to-long v2, v3

    add-long/2addr v0, v2

    :try_start_1
    iput-wide v0, p0, Lyads/kl5;->q:J

    const v0, 0x7fffffff

    invoke-interface {v6, v7, v0, v5}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v3

    goto :goto_6

    :cond_6
    long-to-int v10, v0

    iget-wide v7, p0, Lyads/cz;->g:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lyads/k06;->a(JIIILyads/j06;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-static {v0}, Lyads/zc0;->a(Lyads/wc0;)V

    iput-boolean v5, p0, Lyads/kl5;->r:Z

    return-void

    :goto_7
    iget-object p0, p0, Lyads/cz;->i:Lyads/rq5;

    invoke-static {p0}, Lyads/zc0;->a(Lyads/wc0;)V

    throw v0

    :cond_7
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lyads/kl5;->r:Z

    return p0
.end method
