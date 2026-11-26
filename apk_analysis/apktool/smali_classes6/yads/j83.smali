.class public final Lyads/j83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Lyads/ki5;

.field public final b:Z

.field public final c:Z

.field public final d:Lyads/md4;

.field public final e:Lyads/md4;

.field public final f:Lyads/md4;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lyads/k06;

.field public k:Lyads/i83;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lyads/os4;


# direct methods
.method public constructor <init>(Lyads/ki5;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/j83;->a:Lyads/ki5;

    iput-boolean p2, p0, Lyads/j83;->b:Z

    iput-boolean p3, p0, Lyads/j83;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lyads/j83;->h:[Z

    new-instance p1, Lyads/md4;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/j83;->d:Lyads/md4;

    new-instance p1, Lyads/md4;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/j83;->e:Lyads/md4;

    new-instance p1, Lyads/md4;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/j83;->f:Lyads/md4;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/j83;->m:J

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/j83;->o:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 817
    iput-wide v0, p0, Lyads/j83;->g:J

    const/4 v0, 0x0

    .line 818
    iput-boolean v0, p0, Lyads/j83;->n:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 819
    iput-wide v1, p0, Lyads/j83;->m:J

    .line 820
    iget-object v1, p0, Lyads/j83;->h:[Z

    invoke-static {v1}, Lyads/qd4;->a([Z)V

    .line 821
    iget-object v1, p0, Lyads/j83;->d:Lyads/md4;

    .line 822
    iput-boolean v0, v1, Lyads/md4;->b:Z

    .line 823
    iput-boolean v0, v1, Lyads/md4;->c:Z

    .line 824
    iget-object v1, p0, Lyads/j83;->e:Lyads/md4;

    .line 825
    iput-boolean v0, v1, Lyads/md4;->b:Z

    .line 826
    iput-boolean v0, v1, Lyads/md4;->c:Z

    .line 827
    iget-object v1, p0, Lyads/j83;->f:Lyads/md4;

    .line 828
    iput-boolean v0, v1, Lyads/md4;->b:Z

    .line 829
    iput-boolean v0, v1, Lyads/md4;->c:Z

    .line 830
    iget-object p0, p0, Lyads/j83;->k:Lyads/i83;

    if-eqz p0, :cond_0

    .line 831
    iput-boolean v0, p0, Lyads/i83;->k:Z

    .line 832
    iput-boolean v0, p0, Lyads/i83;->o:Z

    .line 833
    iget-object p0, p0, Lyads/i83;->n:Lyads/h83;

    .line 834
    iput-boolean v0, p0, Lyads/h83;->b:Z

    .line 835
    iput-boolean v0, p0, Lyads/h83;->a:Z

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 815
    iput-wide p2, p0, Lyads/j83;->m:J

    .line 816
    :cond_0
    iget-boolean p2, p0, Lyads/j83;->n:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lyads/j83;->n:Z

    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/j83;->j:Lyads/k06;

    if-eqz v2, :cond_24

    sget v3, Lyads/u56;->a:I

    iget v3, v1, Lyads/os4;->b:I

    iget v4, v1, Lyads/os4;->c:I

    iget-object v5, v1, Lyads/os4;->a:[B

    iget-wide v6, v0, Lyads/j83;->g:J

    sub-int v8, v4, v3

    int-to-long v9, v8

    add-long/2addr v6, v9

    iput-wide v6, v0, Lyads/j83;->g:J

    invoke-interface {v2, v8, v1}, Lyads/k06;->a(ILyads/os4;)V

    :goto_0
    iget-object v1, v0, Lyads/j83;->h:[Z

    invoke-static {v5, v3, v4, v1}, Lyads/qd4;->a([BII[Z)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-boolean v1, v0, Lyads/j83;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lyads/j83;->k:Lyads/i83;

    iget-boolean v1, v1, Lyads/i83;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lyads/j83;->d:Lyads/md4;

    invoke-virtual {v1, v5, v3, v4}, Lyads/md4;->a([BII)V

    iget-object v1, v0, Lyads/j83;->e:Lyads/md4;

    invoke-virtual {v1, v5, v3, v4}, Lyads/md4;->a([BII)V

    :cond_1
    iget-object v1, v0, Lyads/j83;->f:Lyads/md4;

    invoke-virtual {v1, v5, v3, v4}, Lyads/md4;->a([BII)V

    iget-object v0, v0, Lyads/j83;->k:Lyads/i83;

    invoke-virtual {v0, v5, v3, v4}, Lyads/i83;->a([BII)V

    return-void

    :cond_2
    add-int/lit8 v2, v1, 0x3

    aget-byte v6, v5, v2

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v3

    if-lez v7, :cond_5

    iget-boolean v8, v0, Lyads/j83;->l:Z

    if-eqz v8, :cond_3

    iget-object v8, v0, Lyads/j83;->k:Lyads/i83;

    iget-boolean v8, v8, Lyads/i83;->c:Z

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, v0, Lyads/j83;->d:Lyads/md4;

    invoke-virtual {v8, v5, v3, v1}, Lyads/md4;->a([BII)V

    iget-object v8, v0, Lyads/j83;->e:Lyads/md4;

    invoke-virtual {v8, v5, v3, v1}, Lyads/md4;->a([BII)V

    :cond_4
    iget-object v8, v0, Lyads/j83;->f:Lyads/md4;

    invoke-virtual {v8, v5, v3, v1}, Lyads/md4;->a([BII)V

    iget-object v8, v0, Lyads/j83;->k:Lyads/i83;

    invoke-virtual {v8, v5, v3, v1}, Lyads/i83;->a([BII)V

    :cond_5
    sub-int v1, v4, v1

    iget-wide v8, v0, Lyads/j83;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_6

    neg-int v7, v7

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    iget-wide v10, v0, Lyads/j83;->m:J

    iget-boolean v12, v0, Lyads/j83;->l:Z

    const/4 v13, 0x4

    if-eqz v12, :cond_8

    iget-object v12, v0, Lyads/j83;->k:Lyads/i83;

    iget-boolean v12, v12, Lyads/i83;->c:Z

    if-eqz v12, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    goto/16 :goto_3

    :cond_8
    :goto_2
    iget-object v12, v0, Lyads/j83;->d:Lyads/md4;

    invoke-virtual {v12, v7}, Lyads/md4;->a(I)Z

    iget-object v12, v0, Lyads/j83;->e:Lyads/md4;

    invoke-virtual {v12, v7}, Lyads/md4;->a(I)Z

    iget-boolean v12, v0, Lyads/j83;->l:Z

    iget-object v15, v0, Lyads/j83;->d:Lyads/md4;

    const/4 v3, 0x3

    if-nez v12, :cond_9

    iget-boolean v12, v15, Lyads/md4;->c:Z

    if-eqz v12, :cond_7

    iget-object v12, v0, Lyads/j83;->e:Lyads/md4;

    iget-boolean v12, v12, Lyads/md4;->c:Z

    if-eqz v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lyads/j83;->d:Lyads/md4;

    iget-object v14, v15, Lyads/md4;->d:[B

    iget v15, v15, Lyads/md4;->e:I

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lyads/j83;->e:Lyads/md4;

    iget-object v15, v14, Lyads/md4;->d:[B

    iget v14, v14, Lyads/md4;->e:I

    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lyads/j83;->d:Lyads/md4;

    iget-object v15, v14, Lyads/md4;->d:[B

    iget v14, v14, Lyads/md4;->e:I

    invoke-static {v15, v3, v14}, Lyads/qd4;->b([BII)Lyads/pd4;

    move-result-object v3

    iget-object v14, v0, Lyads/j83;->e:Lyads/md4;

    iget-object v15, v14, Lyads/md4;->d:[B

    iget v14, v14, Lyads/md4;->e:I

    move/from16 v16, v1

    new-instance v1, Lyads/ps4;

    invoke-direct {v1, v15, v13, v14}, Lyads/ps4;-><init>([BII)V

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v14

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v15

    invoke-virtual {v1}, Lyads/ps4;->f()V

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v1

    new-instance v13, Lyads/od4;

    invoke-direct {v13, v14, v15, v1}, Lyads/od4;-><init>(IIZ)V

    iget v1, v3, Lyads/pd4;->a:I

    iget v15, v3, Lyads/pd4;->b:I

    move/from16 v17, v1

    iget v1, v3, Lyads/pd4;->c:I

    move/from16 v18, v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v17, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v15, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "avc1.%02X%02X%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lyads/j83;->j:Lyads/k06;

    new-instance v15, Lyads/uz2;

    invoke-direct {v15}, Lyads/uz2;-><init>()V

    move/from16 v18, v4

    iget-object v4, v0, Lyads/j83;->i:Ljava/lang/String;

    iput-object v4, v15, Lyads/uz2;->a:Ljava/lang/String;

    const-string v4, "video/avc"

    iput-object v4, v15, Lyads/uz2;->k:Ljava/lang/String;

    iput-object v1, v15, Lyads/uz2;->h:Ljava/lang/String;

    iget v1, v3, Lyads/pd4;->e:I

    iput v1, v15, Lyads/uz2;->p:I

    iget v1, v3, Lyads/pd4;->f:I

    iput v1, v15, Lyads/uz2;->q:I

    iget v1, v3, Lyads/pd4;->g:F

    iput v1, v15, Lyads/uz2;->t:F

    iput-object v12, v15, Lyads/uz2;->m:Ljava/util/List;

    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v15}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v2, v1}, Lyads/k06;->a(Lyads/vz2;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/j83;->l:Z

    iget-object v1, v0, Lyads/j83;->k:Lyads/i83;

    iget-object v1, v1, Lyads/i83;->d:Landroid/util/SparseArray;

    iget v2, v3, Lyads/pd4;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Lyads/j83;->k:Lyads/i83;

    iget-object v1, v1, Lyads/i83;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v14, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Lyads/j83;->d:Lyads/md4;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/md4;->b:Z

    iput-boolean v2, v1, Lyads/md4;->c:Z

    iget-object v1, v0, Lyads/j83;->e:Lyads/md4;

    iput-boolean v2, v1, Lyads/md4;->b:Z

    iput-boolean v2, v1, Lyads/md4;->c:Z

    goto :goto_3

    :cond_9
    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    iget-boolean v1, v15, Lyads/md4;->c:Z

    if-eqz v1, :cond_a

    iget-object v1, v15, Lyads/md4;->d:[B

    iget v2, v15, Lyads/md4;->e:I

    invoke-static {v1, v3, v2}, Lyads/qd4;->b([BII)Lyads/pd4;

    move-result-object v1

    iget-object v2, v0, Lyads/j83;->k:Lyads/i83;

    iget-object v2, v2, Lyads/i83;->d:Landroid/util/SparseArray;

    iget v3, v1, Lyads/pd4;->d:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Lyads/j83;->d:Lyads/md4;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/md4;->b:Z

    iput-boolean v2, v1, Lyads/md4;->c:Z

    goto :goto_3

    :cond_a
    iget-object v1, v0, Lyads/j83;->e:Lyads/md4;

    iget-boolean v2, v1, Lyads/md4;->c:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lyads/md4;->d:[B

    iget v1, v1, Lyads/md4;->e:I

    new-instance v3, Lyads/ps4;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4, v1}, Lyads/ps4;-><init>([BII)V

    invoke-virtual {v3}, Lyads/ps4;->d()I

    move-result v1

    invoke-virtual {v3}, Lyads/ps4;->d()I

    move-result v2

    invoke-virtual {v3}, Lyads/ps4;->f()V

    invoke-virtual {v3}, Lyads/ps4;->c()Z

    move-result v3

    new-instance v4, Lyads/od4;

    invoke-direct {v4, v1, v2, v3}, Lyads/od4;-><init>(IIZ)V

    iget-object v2, v0, Lyads/j83;->k:Lyads/i83;

    iget-object v2, v2, Lyads/i83;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v1, v0, Lyads/j83;->e:Lyads/md4;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/md4;->b:Z

    iput-boolean v2, v1, Lyads/md4;->c:Z

    :cond_b
    :goto_3
    iget-object v1, v0, Lyads/j83;->f:Lyads/md4;

    invoke-virtual {v1, v7}, Lyads/md4;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lyads/j83;->f:Lyads/md4;

    iget-object v2, v1, Lyads/md4;->d:[B

    iget v1, v1, Lyads/md4;->e:I

    invoke-static {v2, v1}, Lyads/qd4;->a([BI)I

    move-result v1

    iget-object v2, v0, Lyads/j83;->o:Lyads/os4;

    iget-object v3, v0, Lyads/j83;->f:Lyads/md4;

    iget-object v3, v3, Lyads/md4;->d:[B

    iput-object v3, v2, Lyads/os4;->a:[B

    iput v1, v2, Lyads/os4;->c:I

    const/4 v1, 0x0

    iput v1, v2, Lyads/os4;->b:I

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/j83;->a:Lyads/ki5;

    iget-object v2, v0, Lyads/j83;->o:Lyads/os4;

    iget-object v1, v1, Lyads/ki5;->b:[Lyads/k06;

    invoke-static {v10, v11, v2, v1}, Lyads/ry;->a(JLyads/os4;[Lyads/k06;)V

    :cond_c
    iget-object v1, v0, Lyads/j83;->k:Lyads/i83;

    iget-boolean v2, v0, Lyads/j83;->l:Z

    iget-boolean v3, v0, Lyads/j83;->n:Z

    iget v4, v1, Lyads/i83;->i:I

    const/16 v7, 0x9

    if-eq v4, v7, :cond_15

    iget-boolean v4, v1, Lyads/i83;->c:Z

    if-eqz v4, :cond_18

    iget-object v4, v1, Lyads/i83;->n:Lyads/h83;

    iget-object v7, v1, Lyads/i83;->m:Lyads/h83;

    iget-boolean v10, v4, Lyads/h83;->a:Z

    if-nez v10, :cond_d

    goto/16 :goto_6

    :cond_d
    iget-boolean v10, v7, Lyads/h83;->a:Z

    if-nez v10, :cond_e

    goto/16 :goto_4

    :cond_e
    iget-object v10, v4, Lyads/h83;->c:Lyads/pd4;

    if-eqz v10, :cond_14

    iget-object v11, v7, Lyads/h83;->c:Lyads/pd4;

    if-eqz v11, :cond_13

    iget v12, v4, Lyads/h83;->f:I

    iget v13, v7, Lyads/h83;->f:I

    if-ne v12, v13, :cond_15

    iget v12, v4, Lyads/h83;->g:I

    iget v13, v7, Lyads/h83;->g:I

    if-ne v12, v13, :cond_15

    iget-boolean v12, v4, Lyads/h83;->h:Z

    iget-boolean v13, v7, Lyads/h83;->h:Z

    if-ne v12, v13, :cond_15

    iget-boolean v12, v4, Lyads/h83;->i:Z

    if-eqz v12, :cond_f

    iget-boolean v12, v7, Lyads/h83;->i:Z

    if-eqz v12, :cond_f

    iget-boolean v12, v4, Lyads/h83;->j:Z

    iget-boolean v13, v7, Lyads/h83;->j:Z

    if-ne v12, v13, :cond_15

    :cond_f
    iget v12, v4, Lyads/h83;->d:I

    iget v13, v7, Lyads/h83;->d:I

    if-eq v12, v13, :cond_10

    if-eqz v12, :cond_15

    if-eqz v13, :cond_15

    :cond_10
    iget v10, v10, Lyads/pd4;->k:I

    if-nez v10, :cond_11

    iget v12, v11, Lyads/pd4;->k:I

    if-nez v12, :cond_11

    iget v12, v4, Lyads/h83;->m:I

    iget v13, v7, Lyads/h83;->m:I

    if-ne v12, v13, :cond_15

    iget v12, v4, Lyads/h83;->n:I

    iget v13, v7, Lyads/h83;->n:I

    if-ne v12, v13, :cond_15

    :cond_11
    const/4 v12, 0x1

    if-ne v10, v12, :cond_12

    iget v10, v11, Lyads/pd4;->k:I

    if-ne v10, v12, :cond_12

    iget v10, v4, Lyads/h83;->o:I

    iget v11, v7, Lyads/h83;->o:I

    if-ne v10, v11, :cond_15

    iget v10, v4, Lyads/h83;->p:I

    iget v11, v7, Lyads/h83;->p:I

    if-ne v10, v11, :cond_15

    :cond_12
    iget-boolean v10, v4, Lyads/h83;->k:Z

    iget-boolean v11, v7, Lyads/h83;->k:Z

    if-ne v10, v11, :cond_15

    if-eqz v10, :cond_18

    iget v4, v4, Lyads/h83;->l:I

    iget v7, v7, Lyads/h83;->l:I

    if-eq v4, v7, :cond_18

    goto :goto_4

    :cond_13
    invoke-static {}, Lud;->g()V

    return-void

    :cond_14
    invoke-static {}, Lud;->g()V

    return-void

    :cond_15
    :goto_4
    if-eqz v2, :cond_17

    iget-boolean v2, v1, Lyads/i83;->o:Z

    if-eqz v2, :cond_17

    iget-wide v10, v1, Lyads/i83;->j:J

    sub-long v12, v8, v10

    long-to-int v2, v12

    add-int v24, v16, v2

    iget-wide v12, v1, Lyads/i83;->q:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v12, v14

    if-nez v2, :cond_16

    goto :goto_5

    :cond_16
    iget-boolean v2, v1, Lyads/i83;->r:Z

    iget-wide v14, v1, Lyads/i83;->p:J

    sub-long/2addr v10, v14

    long-to-int v4, v10

    iget-object v7, v1, Lyads/i83;->a:Lyads/k06;

    const/16 v25, 0x0

    move/from16 v22, v2

    move/from16 v23, v4

    move-object/from16 v19, v7

    move-wide/from16 v20, v12

    invoke-interface/range {v19 .. v25}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_17
    :goto_5
    iget-wide v10, v1, Lyads/i83;->j:J

    iput-wide v10, v1, Lyads/i83;->p:J

    iget-wide v10, v1, Lyads/i83;->l:J

    iput-wide v10, v1, Lyads/i83;->q:J

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/i83;->r:Z

    const/4 v12, 0x1

    iput-boolean v12, v1, Lyads/i83;->o:Z

    :cond_18
    :goto_6
    iget-boolean v2, v1, Lyads/i83;->b:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lyads/i83;->n:Lyads/h83;

    iget-boolean v3, v2, Lyads/h83;->b:Z

    if-eqz v3, :cond_1a

    iget v2, v2, Lyads/h83;->e:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_19

    if-ne v2, v4, :cond_1a

    :cond_19
    const/4 v3, 0x1

    goto :goto_7

    :cond_1a
    const/4 v3, 0x0

    :cond_1b
    :goto_7
    iget-boolean v2, v1, Lyads/i83;->r:Z

    iget v7, v1, Lyads/i83;->i:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_1d

    if-eqz v3, :cond_1c

    const/4 v12, 0x1

    if-ne v7, v12, :cond_1c

    goto :goto_8

    :cond_1c
    const/4 v3, 0x0

    goto :goto_9

    :cond_1d
    :goto_8
    const/4 v3, 0x1

    :goto_9
    or-int/2addr v2, v3

    iput-boolean v2, v1, Lyads/i83;->r:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    iput-boolean v2, v0, Lyads/j83;->n:Z

    :cond_1e
    iget-wide v1, v0, Lyads/j83;->m:J

    iget-boolean v3, v0, Lyads/j83;->l:Z

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lyads/j83;->k:Lyads/i83;

    iget-boolean v3, v3, Lyads/i83;->c:Z

    if-eqz v3, :cond_20

    :cond_1f
    iget-object v3, v0, Lyads/j83;->d:Lyads/md4;

    invoke-virtual {v3, v6}, Lyads/md4;->b(I)V

    iget-object v3, v0, Lyads/j83;->e:Lyads/md4;

    invoke-virtual {v3, v6}, Lyads/md4;->b(I)V

    :cond_20
    iget-object v3, v0, Lyads/j83;->f:Lyads/md4;

    invoke-virtual {v3, v6}, Lyads/md4;->b(I)V

    iget-object v3, v0, Lyads/j83;->k:Lyads/i83;

    iput v6, v3, Lyads/i83;->i:I

    iput-wide v1, v3, Lyads/i83;->l:J

    iput-wide v8, v3, Lyads/i83;->j:J

    iget-boolean v1, v3, Lyads/i83;->b:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_21

    if-eq v6, v12, :cond_22

    :cond_21
    iget-boolean v1, v3, Lyads/i83;->c:Z

    if-eqz v1, :cond_23

    if-eq v6, v10, :cond_22

    if-eq v6, v12, :cond_22

    if-ne v6, v4, :cond_23

    :cond_22
    iget-object v1, v3, Lyads/i83;->m:Lyads/h83;

    iget-object v2, v3, Lyads/i83;->n:Lyads/h83;

    iput-object v2, v3, Lyads/i83;->m:Lyads/h83;

    iput-object v1, v3, Lyads/i83;->n:Lyads/h83;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lyads/h83;->b:Z

    iput-boolean v2, v1, Lyads/h83;->a:Z

    iput v2, v3, Lyads/i83;->h:I

    const/4 v12, 0x1

    iput-boolean v12, v3, Lyads/i83;->k:Z

    :cond_23
    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_0

    :cond_24
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 4

    .line 806
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 807
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 808
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 809
    iput-object v0, p0, Lyads/j83;->i:Ljava/lang/String;

    .line 810
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 811
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x2

    .line 812
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/j83;->j:Lyads/k06;

    .line 813
    new-instance v1, Lyads/i83;

    iget-boolean v2, p0, Lyads/j83;->b:Z

    iget-boolean v3, p0, Lyads/j83;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lyads/i83;-><init>(Lyads/k06;ZZ)V

    iput-object v1, p0, Lyads/j83;->k:Lyads/i83;

    .line 814
    iget-object p0, p0, Lyads/j83;->a:Lyads/ki5;

    invoke-virtual {p0, p1, p2}, Lyads/ki5;->a(Lyads/zs2;Lyads/t26;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
