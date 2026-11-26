.class public final Lyads/lr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/os4;

.field public final c:Lyads/ns4;

.field public d:Lyads/k06;

.field public e:Ljava/lang/String;

.field public f:Lyads/vz2;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I

.field public u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lr3;->a:Ljava/lang/String;

    new-instance p1, Lyads/os4;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/lr3;->b:Lyads/os4;

    new-instance v0, Lyads/ns4;

    iget-object p1, p1, Lyads/os4;->a:[B

    invoke-direct {v0, p1}, Lyads/ns4;-><init>([B)V

    iput-object v0, p0, Lyads/lr3;->c:Lyads/ns4;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/lr3;->k:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 605
    iput v0, p0, Lyads/lr3;->g:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 606
    iput-wide v1, p0, Lyads/lr3;->k:J

    .line 607
    iput-boolean v0, p0, Lyads/lr3;->l:Z

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 604
    iput-wide p2, p0, Lyads/lr3;->k:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/lr3;->d:Lyads/k06;

    if-eqz v2, :cond_1f

    :cond_0
    :goto_0
    iget v2, v1, Lyads/os4;->c:I

    iget v3, v1, Lyads/os4;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_1e

    iget v3, v0, Lyads/lr3;->g:I

    const/16 v4, 0x56

    const/4 v5, 0x1

    if-eqz v3, :cond_1d

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v3, v5, :cond_1b

    const/4 v4, 0x3

    const/16 v8, 0x8

    if-eq v3, v6, :cond_19

    if-ne v3, v4, :cond_18

    iget v3, v0, Lyads/lr3;->i:I

    iget v9, v0, Lyads/lr3;->h:I

    sub-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lyads/lr3;->c:Lyads/ns4;

    iget-object v3, v3, Lyads/ns4;->a:[B

    iget v9, v0, Lyads/lr3;->h:I

    invoke-virtual {v1, v3, v9, v2}, Lyads/os4;->a([BII)V

    iget v3, v0, Lyads/lr3;->h:I

    add-int/2addr v3, v2

    iput v3, v0, Lyads/lr3;->h:I

    iget v2, v0, Lyads/lr3;->i:I

    if-ne v3, v2, :cond_0

    iget-object v2, v0, Lyads/lr3;->c:Lyads/ns4;

    invoke-virtual {v2, v7}, Lyads/ns4;->b(I)V

    iget-object v2, v0, Lyads/lr3;->c:Lyads/ns4;

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v3

    const/4 v9, 0x0

    if-nez v3, :cond_f

    iput-boolean v5, v0, Lyads/lr3;->l:Z

    invoke-virtual {v2, v5}, Lyads/ns4;->a(I)I

    move-result v3

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v5}, Lyads/ns4;->a(I)I

    move-result v10

    goto :goto_1

    :cond_1
    move v10, v7

    :goto_1
    iput v10, v0, Lyads/lr3;->m:I

    if-nez v10, :cond_e

    if-ne v3, v5, :cond_2

    invoke-virtual {v2, v6}, Lyads/ns4;->a(I)I

    move-result v10

    add-int/2addr v10, v5

    mul-int/2addr v10, v8

    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    :cond_2
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    move-result v11

    iput v11, v0, Lyads/lr3;->n:I

    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Lyads/ns4;->a(I)I

    move-result v12

    invoke-virtual {v2, v4}, Lyads/ns4;->a(I)I

    move-result v13

    if-nez v12, :cond_c

    if-nez v13, :cond_c

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lyads/ns4;->d()I

    move-result v12

    invoke-virtual {v2}, Lyads/ns4;->b()I

    move-result v13

    invoke-static {v2, v5}, Lyads/b;->a(Lyads/ns4;Z)Lyads/a;

    move-result-object v14

    iget-object v15, v14, Lyads/a;->c:Ljava/lang/String;

    iput-object v15, v0, Lyads/lr3;->u:Ljava/lang/String;

    iget v15, v14, Lyads/a;->a:I

    iput v15, v0, Lyads/lr3;->r:I

    iget v14, v14, Lyads/a;->b:I

    iput v14, v0, Lyads/lr3;->t:I

    invoke-virtual {v2}, Lyads/ns4;->b()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v2, v12}, Lyads/ns4;->b(I)V

    add-int/lit8 v12, v13, 0x7

    div-int/2addr v12, v8

    new-array v12, v12, [B

    invoke-virtual {v2, v12, v13}, Lyads/ns4;->a([BI)V

    new-instance v13, Lyads/uz2;

    invoke-direct {v13}, Lyads/uz2;-><init>()V

    iget-object v14, v0, Lyads/lr3;->e:Ljava/lang/String;

    iput-object v14, v13, Lyads/uz2;->a:Ljava/lang/String;

    const-string v14, "audio/mp4a-latm"

    iput-object v14, v13, Lyads/uz2;->k:Ljava/lang/String;

    iget-object v14, v0, Lyads/lr3;->u:Ljava/lang/String;

    iput-object v14, v13, Lyads/uz2;->h:Ljava/lang/String;

    iget v14, v0, Lyads/lr3;->t:I

    iput v14, v13, Lyads/uz2;->x:I

    iget v14, v0, Lyads/lr3;->r:I

    iput v14, v13, Lyads/uz2;->y:I

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    iput-object v12, v13, Lyads/uz2;->m:Ljava/util/List;

    iget-object v12, v0, Lyads/lr3;->a:Ljava/lang/String;

    iput-object v12, v13, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v12, Lyads/vz2;

    invoke-direct {v12, v13}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v13, v0, Lyads/lr3;->f:Lyads/vz2;

    invoke-virtual {v12, v13}, Lyads/vz2;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iput-object v12, v0, Lyads/lr3;->f:Lyads/vz2;

    iget v13, v12, Lyads/vz2;->A:I

    int-to-long v13, v13

    const-wide/32 v15, 0x3d090000

    div-long v13, v15, v13

    iput-wide v13, v0, Lyads/lr3;->s:J

    iget-object v13, v0, Lyads/lr3;->d:Lyads/k06;

    invoke-interface {v13, v12}, Lyads/k06;->a(Lyads/vz2;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Lyads/ns4;->a(I)I

    move-result v12

    add-int/2addr v12, v5

    mul-int/2addr v12, v8

    invoke-virtual {v2, v12}, Lyads/ns4;->a(I)I

    move-result v12

    int-to-long v12, v12

    long-to-int v12, v12

    invoke-virtual {v2}, Lyads/ns4;->b()I

    move-result v13

    invoke-static {v2, v5}, Lyads/b;->a(Lyads/ns4;Z)Lyads/a;

    move-result-object v14

    iget-object v15, v14, Lyads/a;->c:Ljava/lang/String;

    iput-object v15, v0, Lyads/lr3;->u:Ljava/lang/String;

    iget v15, v14, Lyads/a;->a:I

    iput v15, v0, Lyads/lr3;->r:I

    iget v14, v14, Lyads/a;->b:I

    iput v14, v0, Lyads/lr3;->t:I

    invoke-virtual {v2}, Lyads/ns4;->b()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int/2addr v12, v13

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_4
    :goto_2
    invoke-virtual {v2, v4}, Lyads/ns4;->a(I)I

    move-result v12

    iput v12, v0, Lyads/lr3;->o:I

    if-eqz v12, :cond_9

    if-eq v12, v5, :cond_8

    if-eq v12, v4, :cond_7

    if-eq v12, v11, :cond_7

    const/4 v4, 0x5

    if-eq v12, v4, :cond_7

    if-eq v12, v10, :cond_6

    const/4 v4, 0x7

    if-ne v12, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {}, Lud;->g()V

    return-void

    :cond_6
    :goto_3
    invoke-virtual {v2, v5}, Lyads/ns4;->c(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    goto :goto_4

    :cond_8
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Lyads/ns4;->c(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    :goto_4
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v4

    iput-boolean v4, v0, Lyads/lr3;->p:Z

    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lyads/lr3;->q:J

    if-eqz v4, :cond_b

    if-ne v3, v5, :cond_a

    invoke-virtual {v2, v6}, Lyads/ns4;->a(I)I

    move-result v3

    add-int/2addr v3, v5

    mul-int/2addr v3, v8

    invoke-virtual {v2, v3}, Lyads/ns4;->a(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lyads/lr3;->q:J

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v3

    iget-wide v10, v0, Lyads/lr3;->q:J

    shl-long/2addr v10, v8

    invoke-virtual {v2, v8}, Lyads/ns4;->a(I)I

    move-result v4

    int-to-long v12, v4

    add-long/2addr v10, v12

    iput-wide v10, v0, Lyads/lr3;->q:J

    if-nez v3, :cond_a

    :cond_b
    :goto_5
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    goto :goto_6

    :cond_c
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v9, v9, v5, v5}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_d
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v9, v9, v5, v5}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_e
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v9, v9, v5, v5}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_f
    iget-boolean v3, v0, Lyads/lr3;->l:Z

    if-nez v3, :cond_10

    goto :goto_9

    :cond_10
    :goto_6
    iget v3, v0, Lyads/lr3;->m:I

    if-nez v3, :cond_17

    iget v3, v0, Lyads/lr3;->n:I

    if-nez v3, :cond_16

    iget v3, v0, Lyads/lr3;->o:I

    if-nez v3, :cond_15

    move v3, v7

    :goto_7
    invoke-virtual {v2, v8}, Lyads/ns4;->a(I)I

    move-result v4

    add-int v13, v3, v4

    const/16 v3, 0xff

    if-eq v4, v3, :cond_14

    invoke-virtual {v2}, Lyads/ns4;->d()I

    move-result v3

    and-int/lit8 v4, v3, 0x7

    iget-object v5, v0, Lyads/lr3;->b:Lyads/os4;

    if-nez v4, :cond_11

    shr-int/lit8 v3, v3, 0x3

    invoke-virtual {v5, v3}, Lyads/os4;->e(I)V

    goto :goto_8

    :cond_11
    iget-object v3, v5, Lyads/os4;->a:[B

    mul-int/lit8 v4, v13, 0x8

    invoke-virtual {v2, v3, v4}, Lyads/ns4;->a([BI)V

    iget-object v3, v0, Lyads/lr3;->b:Lyads/os4;

    invoke-virtual {v3, v7}, Lyads/os4;->e(I)V

    :goto_8
    iget-object v3, v0, Lyads/lr3;->d:Lyads/k06;

    iget-object v4, v0, Lyads/lr3;->b:Lyads/os4;

    invoke-interface {v3, v13, v4}, Lyads/k06;->a(ILyads/os4;)V

    iget-wide v10, v0, Lyads/lr3;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v3

    if-eqz v3, :cond_12

    iget-object v9, v0, Lyads/lr3;->d:Lyads/k06;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-interface/range {v9 .. v15}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v3, v0, Lyads/lr3;->k:J

    iget-wide v5, v0, Lyads/lr3;->s:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Lyads/lr3;->k:J

    :cond_12
    iget-boolean v3, v0, Lyads/lr3;->p:Z

    if-eqz v3, :cond_13

    iget-wide v3, v0, Lyads/lr3;->q:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lyads/ns4;->c(I)V

    :cond_13
    :goto_9
    iput v7, v0, Lyads/lr3;->g:I

    goto/16 :goto_0

    :cond_14
    move v3, v13

    goto :goto_7

    :cond_15
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v9, v9, v5, v5}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_16
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v9, v9, v5, v5}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_17
    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v9, v9, v5, v5}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_18
    invoke-static {}, Lud;->g()V

    return-void

    :cond_19
    iget v2, v0, Lyads/lr3;->j:I

    and-int/lit16 v2, v2, -0xe1

    shl-int/2addr v2, v8

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Lyads/lr3;->i:I

    iget-object v3, v0, Lyads/lr3;->b:Lyads/os4;

    iget-object v5, v3, Lyads/os4;->a:[B

    array-length v5, v5

    if-le v2, v5, :cond_1a

    invoke-virtual {v3, v2}, Lyads/os4;->c(I)V

    iget-object v2, v0, Lyads/lr3;->c:Lyads/ns4;

    iget-object v3, v0, Lyads/lr3;->b:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    array-length v5, v3

    invoke-virtual {v2, v3, v5}, Lyads/ns4;->b([BI)V

    :cond_1a
    iput v7, v0, Lyads/lr3;->h:I

    iput v4, v0, Lyads/lr3;->g:I

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v2

    and-int/lit16 v3, v2, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_1c

    iput v2, v0, Lyads/lr3;->j:I

    iput v6, v0, Lyads/lr3;->g:I

    goto/16 :goto_0

    :cond_1c
    if-eq v2, v4, :cond_0

    iput v7, v0, Lyads/lr3;->g:I

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v2

    if-ne v2, v4, :cond_0

    iput v5, v0, Lyads/lr3;->g:I

    goto/16 :goto_0

    :cond_1e
    return-void

    :cond_1f
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 2

    .line 597
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 598
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 599
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x1

    .line 600
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/lr3;->d:Lyads/k06;

    .line 601
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 602
    iget-object p1, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 603
    iput-object p1, p0, Lyads/lr3;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
