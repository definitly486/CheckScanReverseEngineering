.class public final Lyads/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Lyads/ns4;

.field public final b:Lyads/os4;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lyads/k06;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Lyads/vz2;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/ns4;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lyads/ns4;-><init>([B)V

    iput-object v0, p0, Lyads/e0;->a:Lyads/ns4;

    new-instance v1, Lyads/os4;

    iget-object v0, v0, Lyads/ns4;->a:[B

    invoke-direct {v1, v0}, Lyads/os4;-><init>([B)V

    iput-object v1, p0, Lyads/e0;->b:Lyads/os4;

    const/4 v0, 0x0

    iput v0, p0, Lyads/e0;->f:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/e0;->l:J

    iput-object p1, p0, Lyads/e0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 916
    iput v0, p0, Lyads/e0;->f:I

    .line 917
    iput v0, p0, Lyads/e0;->g:I

    .line 918
    iput-boolean v0, p0, Lyads/e0;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 919
    iput-wide v0, p0, Lyads/e0;->l:J

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 915
    iput-wide p2, p0, Lyads/e0;->l:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/e0;->e:Lyads/k06;

    if-eqz v2, :cond_3d

    :cond_0
    :goto_0
    iget v2, v1, Lyads/os4;->c:I

    iget v3, v1, Lyads/os4;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_3c

    iget v3, v0, Lyads/e0;->f:I

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v3, :cond_37

    if-eq v3, v6, :cond_3

    if-eq v3, v7, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v0, Lyads/e0;->k:I

    iget v4, v0, Lyads/e0;->g:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lyads/e0;->e:Lyads/k06;

    invoke-interface {v3, v2, v1}, Lyads/k06;->a(ILyads/os4;)V

    iget v3, v0, Lyads/e0;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Lyads/e0;->g:I

    iget v10, v0, Lyads/e0;->k:I

    if-ne v3, v10, :cond_0

    iget-wide v7, v0, Lyads/e0;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v2

    if-eqz v2, :cond_2

    iget-object v6, v0, Lyads/e0;->e:Lyads/k06;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v2, v0, Lyads/e0;->l:J

    iget-wide v6, v0, Lyads/e0;->i:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Lyads/e0;->l:J

    :cond_2
    iput v5, v0, Lyads/e0;->f:I

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lyads/e0;->b:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    iget v8, v0, Lyads/e0;->g:I

    const/16 v9, 0x80

    rsub-int v8, v8, 0x80

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v8, v0, Lyads/e0;->g:I

    invoke-virtual {v1, v3, v8, v2}, Lyads/os4;->a([BII)V

    iget v3, v0, Lyads/e0;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Lyads/e0;->g:I

    if-ne v3, v9, :cond_0

    iget-object v2, v0, Lyads/e0;->a:Lyads/ns4;

    invoke-virtual {v2, v5}, Lyads/ns4;->b(I)V

    iget-object v2, v0, Lyads/e0;->a:Lyads/ns4;

    invoke-virtual {v2}, Lyads/ns4;->d()I

    move-result v3

    const/16 v8, 0x28

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    const/4 v8, 0x5

    invoke-virtual {v2, v8}, Lyads/ns4;->a(I)I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_4

    move v10, v6

    goto :goto_1

    :cond_4
    move v10, v5

    :goto_1
    invoke-virtual {v2, v3}, Lyads/ns4;->b(I)V

    const/4 v3, -0x1

    const/16 v12, 0x8

    const/4 v14, 0x3

    if-eqz v10, :cond_2f

    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    invoke-virtual {v2, v7}, Lyads/ns4;->a(I)I

    move-result v15

    if-eqz v15, :cond_7

    if-eq v15, v6, :cond_6

    if-eq v15, v7, :cond_5

    goto :goto_2

    :cond_5
    move v3, v7

    goto :goto_2

    :cond_6
    move v3, v6

    goto :goto_2

    :cond_7
    move v3, v5

    :goto_2
    invoke-virtual {v2, v14}, Lyads/ns4;->c(I)V

    invoke-virtual {v2, v4}, Lyads/ns4;->a(I)I

    move-result v4

    add-int/2addr v4, v6

    mul-int/2addr v4, v7

    invoke-virtual {v2, v7}, Lyads/ns4;->a(I)I

    move-result v15

    if-ne v15, v14, :cond_8

    sget-object v16, Lyads/f0;->c:[I

    invoke-virtual {v2, v7}, Lyads/ns4;->a(I)I

    move-result v17

    aget v16, v16, v17

    move v9, v14

    const/4 v5, 0x6

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v7}, Lyads/ns4;->a(I)I

    move-result v16

    sget-object v17, Lyads/f0;->a:[I

    aget v17, v17, v16

    sget-object v18, Lyads/f0;->b:[I

    aget v18, v18, v15

    move/from16 v9, v16

    move/from16 v5, v17

    move/from16 v16, v18

    :goto_3
    mul-int/lit16 v13, v5, 0x100

    invoke-virtual {v2, v14}, Lyads/ns4;->a(I)I

    move-result v7

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v20

    sget-object v21, Lyads/f0;->d:[I

    aget v21, v21, v7

    add-int v21, v21, v20

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_9
    if-nez v7, :cond_a

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_a
    if-ne v3, v6, :cond_b

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_b
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    const/4 v11, 0x4

    if-eqz v10, :cond_25

    const/4 v10, 0x2

    if-le v7, v10, :cond_c

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_c
    and-int/lit8 v19, v7, 0x1

    if-eqz v19, :cond_d

    if-le v7, v10, :cond_d

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    goto :goto_4

    :cond_d
    const/4 v10, 0x6

    :goto_4
    and-int/lit8 v18, v7, 0x4

    if-eqz v18, :cond_e

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_e
    if-eqz v20, :cond_f

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    :cond_f
    if-nez v3, :cond_25

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    goto :goto_5

    :cond_10
    const/4 v10, 0x6

    :goto_5
    if-nez v7, :cond_11

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_11
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_12
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    move-result v12

    if-ne v12, v6, :cond_13

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    goto/16 :goto_9

    :cond_13
    if-ne v12, v10, :cond_15

    const/16 v10, 0xc

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_14
    :goto_6
    const/4 v10, 0x2

    goto/16 :goto_9

    :cond_15
    if-ne v12, v14, :cond_14

    invoke-virtual {v2, v8}, Lyads/ns4;->a(I)I

    move-result v10

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_16
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_17
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_18
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_19
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_1a
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_1b
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_1c
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_1d
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_1e
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1f

    const/4 v12, 0x7

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_1f

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :goto_7
    const/16 v19, 0x2

    goto :goto_8

    :cond_1f
    const/16 v12, 0x8

    goto :goto_7

    :goto_8
    add-int/lit8 v10, v10, 0x2

    mul-int/2addr v10, v12

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    iget v10, v2, Lyads/ns4;->c:I

    if-nez v10, :cond_20

    goto/16 :goto_6

    :cond_20
    const/4 v10, 0x0

    iput v10, v2, Lyads/ns4;->c:I

    iget v10, v2, Lyads/ns4;->b:I

    add-int/2addr v10, v6

    iput v10, v2, Lyads/ns4;->b:I

    invoke-virtual {v2}, Lyads/ns4;->a()V

    goto/16 :goto_6

    :goto_9
    if-ge v7, v10, :cond_22

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    const/16 v12, 0xe

    if-eqz v10, :cond_21

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_21
    if-nez v7, :cond_22

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_22
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v10

    if-eqz v10, :cond_25

    if-nez v9, :cond_23

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    goto :goto_b

    :cond_23
    const/4 v10, 0x0

    :goto_a
    if-ge v10, v5, :cond_25

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v12

    if-eqz v12, :cond_24

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_25
    :goto_b
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-virtual {v2, v8}, Lyads/ns4;->c(I)V

    const/4 v10, 0x2

    if-ne v7, v10, :cond_26

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    :cond_26
    const/4 v5, 0x6

    if-lt v7, v5, :cond_27

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_27
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v5

    const/16 v12, 0x8

    if-eqz v5, :cond_28

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_28
    if-nez v7, :cond_29

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    :cond_29
    if-ge v15, v14, :cond_2a

    invoke-virtual {v2}, Lyads/ns4;->f()V

    :cond_2a
    if-nez v3, :cond_2b

    if-eq v9, v14, :cond_2b

    invoke-virtual {v2}, Lyads/ns4;->f()V

    :cond_2b
    const/4 v10, 0x2

    if-ne v3, v10, :cond_2d

    if-eq v9, v14, :cond_2c

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_2c
    const/4 v10, 0x6

    goto :goto_c

    :cond_2d
    const/4 v10, 0x6

    goto :goto_d

    :goto_c
    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :goto_d
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    move-result v3

    if-ne v3, v6, :cond_2e

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lyads/ns4;->a(I)I

    move-result v2

    if-ne v2, v6, :cond_2e

    const-string v2, "audio/eac3-joc"

    :goto_e
    move/from16 v3, v16

    :goto_f
    move/from16 v5, v21

    goto :goto_13

    :cond_2e
    const-string v2, "audio/eac3"

    goto :goto_e

    :cond_2f
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lyads/ns4;->c(I)V

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    move-result v4

    if-ne v4, v14, :cond_30

    const/4 v5, 0x0

    :goto_10
    const/4 v10, 0x6

    goto :goto_11

    :cond_30
    const-string v5, "audio/ac3"

    goto :goto_10

    :goto_11
    invoke-virtual {v2, v10}, Lyads/ns4;->a(I)I

    move-result v7

    invoke-static {v4, v7}, Lyads/f0;->a(II)I

    move-result v7

    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Lyads/ns4;->c(I)V

    invoke-virtual {v2, v14}, Lyads/ns4;->a(I)I

    move-result v8

    and-int/lit8 v9, v8, 0x1

    if-eqz v9, :cond_31

    if-eq v8, v6, :cond_31

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    goto :goto_12

    :cond_31
    const/4 v10, 0x2

    :goto_12
    and-int/lit8 v6, v8, 0x4

    if-eqz v6, :cond_32

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_32
    if-ne v8, v10, :cond_33

    invoke-virtual {v2, v10}, Lyads/ns4;->c(I)V

    :cond_33
    sget-object v6, Lyads/f0;->b:[I

    if-ge v4, v14, :cond_34

    aget v3, v6, v4

    :cond_34
    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v2

    sget-object v4, Lyads/f0;->d:[I

    aget v4, v4, v8

    add-int v21, v4, v2

    const/16 v13, 0x600

    move-object v2, v5

    move v4, v7

    goto :goto_f

    :goto_13
    iget-object v6, v0, Lyads/e0;->j:Lyads/vz2;

    if-eqz v6, :cond_35

    iget v7, v6, Lyads/vz2;->z:I

    if-ne v5, v7, :cond_35

    iget v7, v6, Lyads/vz2;->A:I

    if-ne v3, v7, :cond_35

    iget-object v6, v6, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v2, v6}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    :cond_35
    new-instance v6, Lyads/uz2;

    invoke-direct {v6}, Lyads/uz2;-><init>()V

    iget-object v7, v0, Lyads/e0;->d:Ljava/lang/String;

    iput-object v7, v6, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v2, v6, Lyads/uz2;->k:Ljava/lang/String;

    iput v5, v6, Lyads/uz2;->x:I

    iput v3, v6, Lyads/uz2;->y:I

    iget-object v2, v0, Lyads/e0;->c:Ljava/lang/String;

    iput-object v2, v6, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v6}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v2, v0, Lyads/e0;->j:Lyads/vz2;

    iget-object v3, v0, Lyads/e0;->e:Lyads/k06;

    invoke-interface {v3, v2}, Lyads/k06;->a(Lyads/vz2;)V

    :cond_36
    iput v4, v0, Lyads/e0;->k:I

    int-to-long v2, v13

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-object v4, v0, Lyads/e0;->j:Lyads/vz2;

    iget v4, v4, Lyads/vz2;->A:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iput-wide v2, v0, Lyads/e0;->i:J

    iget-object v2, v0, Lyads/e0;->b:Lyads/os4;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lyads/os4;->e(I)V

    iget-object v2, v0, Lyads/e0;->e:Lyads/k06;

    iget-object v3, v0, Lyads/e0;->b:Lyads/os4;

    const/16 v4, 0x80

    invoke-interface {v2, v4, v3}, Lyads/k06;->a(ILyads/os4;)V

    const/4 v10, 0x2

    iput v10, v0, Lyads/e0;->f:I

    goto/16 :goto_0

    :cond_37
    :goto_14
    iget v2, v1, Lyads/os4;->c:I

    iget v3, v1, Lyads/os4;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    iget-boolean v2, v0, Lyads/e0;->h:Z

    if-nez v2, :cond_39

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v2

    if-ne v2, v4, :cond_38

    move v10, v6

    goto :goto_15

    :cond_38
    const/4 v10, 0x0

    :goto_15
    iput-boolean v10, v0, Lyads/e0;->h:Z

    goto :goto_14

    :cond_39
    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_3a

    const/4 v10, 0x0

    iput-boolean v10, v0, Lyads/e0;->h:Z

    iput v6, v0, Lyads/e0;->f:I

    iget-object v2, v0, Lyads/e0;->b:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    aput-byte v4, v2, v10

    aput-byte v3, v2, v6

    const/4 v3, 0x2

    iput v3, v0, Lyads/e0;->g:I

    goto/16 :goto_0

    :cond_3a
    const/4 v3, 0x2

    const/4 v10, 0x0

    if-ne v2, v4, :cond_3b

    move v2, v6

    goto :goto_16

    :cond_3b
    move v2, v10

    :goto_16
    iput-boolean v2, v0, Lyads/e0;->h:Z

    goto :goto_14

    :cond_3c
    return-void

    :cond_3d
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 1

    .line 908
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 909
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 910
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 911
    iput-object v0, p0, Lyads/e0;->d:Ljava/lang/String;

    .line 912
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 913
    iget p2, p2, Lyads/t26;->d:I

    const/4 v0, 0x1

    .line 914
    invoke-interface {p1, p2, v0}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/e0;->e:Lyads/k06;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
