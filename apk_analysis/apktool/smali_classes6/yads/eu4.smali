.class public final Lyads/eu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/u26;


# instance fields
.field public final a:Lyads/zm2;

.field public final b:Lyads/ns4;

.field public c:I

.field public d:I

.field public e:Lyads/vx5;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lyads/zm2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/eu4;->a:Lyads/zm2;

    new-instance p1, Lyads/ns4;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lyads/ns4;-><init>([B)V

    iput-object p1, p0, Lyads/eu4;->b:Lyads/ns4;

    const/4 p1, 0x0

    iput p1, p0, Lyads/eu4;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 487
    iput v0, p0, Lyads/eu4;->c:I

    .line 488
    iput v0, p0, Lyads/eu4;->d:I

    .line 489
    iput-boolean v0, p0, Lyads/eu4;->h:Z

    .line 490
    iget-object p0, p0, Lyads/eu4;->a:Lyads/zm2;

    invoke-interface {p0}, Lyads/zm2;->a()V

    return-void
.end method

.method public final a(ILyads/os4;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lyads/eu4;->e:Lyads/vx5;

    if-eqz v2, :cond_14

    and-int/lit8 v2, p1, 0x1

    const-string v3, "PesReader"

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    iget v2, v0, Lyads/eu4;->c:I

    if-eqz v2, :cond_3

    if-eq v2, v8, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget v2, v0, Lyads/eu4;->j:I

    if-eq v2, v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Unexpected start indicator: expected "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lyads/eu4;->j:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " more bytes"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, v0, Lyads/eu4;->a:Lyads/zm2;

    invoke-interface {v2}, Lyads/zm2;->b()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lud;->g()V

    return-void

    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v3, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iput v8, v0, Lyads/eu4;->c:I

    iput v7, v0, Lyads/eu4;->d:I

    :cond_4
    move/from16 v2, p1

    :goto_1
    iget v9, v1, Lyads/os4;->c:I

    iget v10, v1, Lyads/os4;->b:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_13

    iget v11, v0, Lyads/eu4;->c:I

    if-eqz v11, :cond_12

    if-eq v11, v8, :cond_d

    if-eq v11, v4, :cond_9

    if-ne v11, v5, :cond_8

    iget v11, v0, Lyads/eu4;->j:I

    if-ne v11, v6, :cond_5

    move v11, v7

    goto :goto_2

    :cond_5
    sub-int v11, v9, v11

    :goto_2
    if-lez v11, :cond_6

    sub-int/2addr v9, v11

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lyads/os4;->d(I)V

    :cond_6
    iget-object v10, v0, Lyads/eu4;->a:Lyads/zm2;

    invoke-interface {v10, v1}, Lyads/zm2;->a(Lyads/os4;)V

    iget v10, v0, Lyads/eu4;->j:I

    if-eq v10, v6, :cond_7

    sub-int/2addr v10, v9

    iput v10, v0, Lyads/eu4;->j:I

    if-nez v10, :cond_7

    iget-object v9, v0, Lyads/eu4;->a:Lyads/zm2;

    invoke-interface {v9}, Lyads/zm2;->b()V

    iput v8, v0, Lyads/eu4;->c:I

    iput v7, v0, Lyads/eu4;->d:I

    :cond_7
    move v15, v6

    move v6, v7

    goto/16 :goto_6

    :cond_8
    invoke-static {}, Lud;->g()V

    return-void

    :cond_9
    iget v9, v0, Lyads/eu4;->i:I

    const/16 v10, 0xa

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v10, v0, Lyads/eu4;->b:Lyads/ns4;

    iget-object v10, v10, Lyads/ns4;->a:[B

    invoke-virtual {v0, v1, v10, v9}, Lyads/eu4;->a(Lyads/os4;[BI)Z

    move-result v9

    if-eqz v9, :cond_7

    iget v9, v0, Lyads/eu4;->i:I

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v9}, Lyads/eu4;->a(Lyads/os4;[BI)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v7}, Lyads/ns4;->b(I)V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v9, v0, Lyads/eu4;->l:J

    iget-boolean v11, v0, Lyads/eu4;->f:Z

    const/4 v12, 0x4

    if-eqz v11, :cond_b

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v12}, Lyads/ns4;->c(I)V

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v5}, Lyads/ns4;->a(I)I

    move-result v9

    int-to-long v9, v9

    const/16 v11, 0x1e

    shl-long/2addr v9, v11

    iget-object v13, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v13, v8}, Lyads/ns4;->c(I)V

    iget-object v13, v0, Lyads/eu4;->b:Lyads/ns4;

    const/16 v14, 0xf

    invoke-virtual {v13, v14}, Lyads/ns4;->a(I)I

    move-result v13

    shl-int/2addr v13, v14

    int-to-long v6, v13

    or-long/2addr v6, v9

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v8}, Lyads/ns4;->c(I)V

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v14}, Lyads/ns4;->a(I)I

    move-result v9

    int-to-long v9, v9

    or-long/2addr v6, v9

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v8}, Lyads/ns4;->c(I)V

    iget-boolean v9, v0, Lyads/eu4;->h:Z

    if-nez v9, :cond_a

    iget-boolean v9, v0, Lyads/eu4;->g:Z

    if-eqz v9, :cond_a

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v12}, Lyads/ns4;->c(I)V

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v5}, Lyads/ns4;->a(I)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v11

    iget-object v11, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v11, v8}, Lyads/ns4;->c(I)V

    iget-object v11, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v11, v14}, Lyads/ns4;->a(I)I

    move-result v11

    shl-int/2addr v11, v14

    int-to-long v12, v11

    or-long/2addr v9, v12

    iget-object v11, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v11, v8}, Lyads/ns4;->c(I)V

    iget-object v11, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v11, v14}, Lyads/ns4;->a(I)I

    move-result v11

    int-to-long v11, v11

    or-long/2addr v9, v11

    iget-object v11, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v11, v8}, Lyads/ns4;->c(I)V

    iget-object v11, v0, Lyads/eu4;->e:Lyads/vx5;

    invoke-virtual {v11, v9, v10}, Lyads/vx5;->b(J)J

    iput-boolean v8, v0, Lyads/eu4;->h:Z

    :cond_a
    iget-object v9, v0, Lyads/eu4;->e:Lyads/vx5;

    invoke-virtual {v9, v6, v7}, Lyads/vx5;->b(J)J

    move-result-wide v9

    iput-wide v9, v0, Lyads/eu4;->l:J

    :cond_b
    iget-boolean v6, v0, Lyads/eu4;->k:Z

    if-eqz v6, :cond_c

    const/4 v12, 0x4

    goto :goto_3

    :cond_c
    const/4 v12, 0x0

    :goto_3
    or-int/2addr v2, v12

    iget-object v6, v0, Lyads/eu4;->a:Lyads/zm2;

    invoke-interface {v6, v2, v9, v10}, Lyads/zm2;->a(IJ)V

    iput v5, v0, Lyads/eu4;->c:I

    const/4 v6, 0x0

    iput v6, v0, Lyads/eu4;->d:I

    move v7, v6

    const/4 v6, -0x1

    goto/16 :goto_1

    :cond_d
    move v6, v7

    iget-object v7, v0, Lyads/eu4;->b:Lyads/ns4;

    iget-object v7, v7, Lyads/ns4;->a:[B

    const/16 v9, 0x9

    invoke-virtual {v0, v1, v7, v9}, Lyads/eu4;->a(Lyads/os4;[BI)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v7, v6}, Lyads/ns4;->b(I)V

    iget-object v6, v0, Lyads/eu4;->b:Lyads/ns4;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lyads/ns4;->a(I)I

    move-result v6

    if-eq v6, v8, :cond_e

    const-string v7, "Unexpected start code prefix: "

    invoke-static {v6, v7, v3}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v15, -0x1

    iput v15, v0, Lyads/eu4;->j:I

    const/4 v6, 0x0

    const/4 v15, -0x1

    goto :goto_5

    :cond_e
    iget-object v6, v0, Lyads/eu4;->b:Lyads/ns4;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lyads/ns4;->c(I)V

    iget-object v6, v0, Lyads/eu4;->b:Lyads/ns4;

    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Lyads/ns4;->a(I)I

    move-result v6

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lyads/ns4;->c(I)V

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9}, Lyads/ns4;->e()Z

    move-result v9

    iput-boolean v9, v0, Lyads/eu4;->k:Z

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v4}, Lyads/ns4;->c(I)V

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9}, Lyads/ns4;->e()Z

    move-result v9

    iput-boolean v9, v0, Lyads/eu4;->f:Z

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9}, Lyads/ns4;->e()Z

    move-result v9

    iput-boolean v9, v0, Lyads/eu4;->g:Z

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lyads/ns4;->c(I)V

    iget-object v9, v0, Lyads/eu4;->b:Lyads/ns4;

    invoke-virtual {v9, v7}, Lyads/ns4;->a(I)I

    move-result v7

    iput v7, v0, Lyads/eu4;->i:I

    if-nez v6, :cond_10

    const/4 v15, -0x1

    iput v15, v0, Lyads/eu4;->j:I

    :cond_f
    const/4 v15, -0x1

    goto :goto_4

    :cond_10
    add-int/lit8 v6, v6, -0x3

    sub-int/2addr v6, v7

    iput v6, v0, Lyads/eu4;->j:I

    if-gez v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found negative packet payload size: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lyads/eu4;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, -0x1

    iput v15, v0, Lyads/eu4;->j:I

    :goto_4
    move v6, v4

    :goto_5
    iput v6, v0, Lyads/eu4;->c:I

    const/4 v6, 0x0

    iput v6, v0, Lyads/eu4;->d:I

    goto :goto_6

    :cond_11
    const/4 v15, -0x1

    goto :goto_6

    :cond_12
    move v15, v6

    move v6, v7

    add-int/2addr v9, v10

    invoke-virtual {v1, v9}, Lyads/os4;->e(I)V

    :goto_6
    move v7, v6

    move v6, v15

    goto/16 :goto_1

    :cond_13
    return-void

    :cond_14
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lyads/eu4;->e:Lyads/vx5;

    .line 492
    iget-object p0, p0, Lyads/eu4;->a:Lyads/zm2;

    invoke-interface {p0, p2, p3}, Lyads/zm2;->a(Lyads/zs2;Lyads/t26;)V

    return-void
.end method

.method public final a(Lyads/os4;[BI)Z
    .locals 3

    .line 493
    iget v0, p1, Lyads/os4;->c:I

    .line 494
    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    .line 495
    iget v1, p0, Lyads/eu4;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 496
    iget p2, p1, Lyads/os4;->b:I

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lyads/os4;->e(I)V

    goto :goto_0

    .line 497
    :cond_1
    iget v2, p0, Lyads/eu4;->d:I

    invoke-virtual {p1, p2, v2, v0}, Lyads/os4;->a([BII)V

    .line 498
    :goto_0
    iget p1, p0, Lyads/eu4;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lyads/eu4;->d:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
