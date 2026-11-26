.class public final Lyads/l83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Lyads/ki5;

.field public b:Ljava/lang/String;

.field public c:Lyads/k06;

.field public d:Lyads/k83;

.field public e:Z

.field public final f:[Z

.field public final g:Lyads/md4;

.field public final h:Lyads/md4;

.field public final i:Lyads/md4;

.field public final j:Lyads/md4;

.field public final k:Lyads/md4;

.field public l:J

.field public m:J

.field public final n:Lyads/os4;


# direct methods
.method public constructor <init>(Lyads/ki5;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/l83;->a:Lyads/ki5;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lyads/l83;->f:[Z

    new-instance p1, Lyads/md4;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/l83;->g:Lyads/md4;

    new-instance p1, Lyads/md4;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/l83;->h:Lyads/md4;

    new-instance p1, Lyads/md4;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/l83;->i:Lyads/md4;

    new-instance p1, Lyads/md4;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/l83;->j:Lyads/md4;

    new-instance p1, Lyads/md4;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lyads/md4;-><init>(I)V

    iput-object p1, p0, Lyads/l83;->k:Lyads/md4;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/l83;->m:J

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/l83;->n:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1158
    iput-wide v0, p0, Lyads/l83;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1159
    iput-wide v0, p0, Lyads/l83;->m:J

    .line 1160
    iget-object v0, p0, Lyads/l83;->f:[Z

    invoke-static {v0}, Lyads/qd4;->a([Z)V

    .line 1161
    iget-object v0, p0, Lyads/l83;->g:Lyads/md4;

    const/4 v1, 0x0

    .line 1162
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 1163
    iput-boolean v1, v0, Lyads/md4;->c:Z

    .line 1164
    iget-object v0, p0, Lyads/l83;->h:Lyads/md4;

    .line 1165
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 1166
    iput-boolean v1, v0, Lyads/md4;->c:Z

    .line 1167
    iget-object v0, p0, Lyads/l83;->i:Lyads/md4;

    .line 1168
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 1169
    iput-boolean v1, v0, Lyads/md4;->c:Z

    .line 1170
    iget-object v0, p0, Lyads/l83;->j:Lyads/md4;

    .line 1171
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 1172
    iput-boolean v1, v0, Lyads/md4;->c:Z

    .line 1173
    iget-object v0, p0, Lyads/l83;->k:Lyads/md4;

    .line 1174
    iput-boolean v1, v0, Lyads/md4;->b:Z

    .line 1175
    iput-boolean v1, v0, Lyads/md4;->c:Z

    .line 1176
    iget-object p0, p0, Lyads/l83;->d:Lyads/k83;

    if-eqz p0, :cond_0

    .line 1177
    iput-boolean v1, p0, Lyads/k83;->f:Z

    .line 1178
    iput-boolean v1, p0, Lyads/k83;->g:Z

    .line 1179
    iput-boolean v1, p0, Lyads/k83;->h:Z

    .line 1180
    iput-boolean v1, p0, Lyads/k83;->i:Z

    .line 1181
    iput-boolean v1, p0, Lyads/k83;->j:Z

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 1145
    iput-wide p2, p0, Lyads/l83;->m:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/l83;->c:Lyads/k06;

    if-eqz v2, :cond_3c

    sget v2, Lyads/u56;->a:I

    :goto_0
    iget v2, v1, Lyads/os4;->c:I

    iget v3, v1, Lyads/os4;->b:I

    sub-int v4, v2, v3

    if-lez v4, :cond_3b

    iget-object v5, v1, Lyads/os4;->a:[B

    iget-wide v6, v0, Lyads/l83;->l:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v0, Lyads/l83;->l:J

    iget-object v6, v0, Lyads/l83;->c:Lyads/k06;

    invoke-interface {v6, v4, v1}, Lyads/k06;->a(ILyads/os4;)V

    :goto_1
    if-ge v3, v2, :cond_3a

    iget-object v4, v0, Lyads/l83;->f:[Z

    invoke-static {v5, v3, v2, v4}, Lyads/qd4;->a([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v0, v5, v3, v2}, Lyads/l83;->a([BII)V

    return-void

    :cond_0
    add-int/lit8 v6, v4, 0x3

    aget-byte v7, v5, v6

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v4, v3

    if-lez v9, :cond_1

    invoke-virtual {v0, v5, v3, v4}, Lyads/l83;->a([BII)V

    :cond_1
    sub-int v15, v2, v4

    iget-wide v3, v0, Lyads/l83;->l:J

    int-to-long v10, v15

    sub-long/2addr v3, v10

    const/4 v10, 0x0

    if-gez v9, :cond_2

    neg-int v9, v9

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    iget-wide v11, v0, Lyads/l83;->m:J

    iget-object v13, v0, Lyads/l83;->d:Lyads/k83;

    iget-boolean v14, v0, Lyads/l83;->e:Z

    iget-boolean v8, v13, Lyads/k83;->j:Z

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_4

    iget-boolean v8, v13, Lyads/k83;->g:Z

    if-eqz v8, :cond_4

    iget-boolean v8, v13, Lyads/k83;->c:Z

    iput-boolean v8, v13, Lyads/k83;->m:Z

    iput-boolean v10, v13, Lyads/k83;->j:Z

    :cond_3
    move/from16 v29, v2

    move-wide/from16 v20, v11

    move v12, v9

    goto :goto_4

    :cond_4
    iget-boolean v8, v13, Lyads/k83;->h:Z

    if-nez v8, :cond_5

    iget-boolean v8, v13, Lyads/k83;->g:Z

    if-eqz v8, :cond_3

    :cond_5
    if-eqz v14, :cond_7

    iget-boolean v8, v13, Lyads/k83;->i:Z

    if-eqz v8, :cond_7

    move-wide/from16 v20, v11

    iget-wide v10, v13, Lyads/k83;->b:J

    move v12, v9

    sub-long v8, v3, v10

    long-to-int v8, v8

    add-int v27, v15, v8

    iget-wide v8, v13, Lyads/k83;->l:J

    cmp-long v16, v8, v18

    if-nez v16, :cond_6

    move/from16 v29, v2

    goto :goto_3

    :cond_6
    iget-boolean v14, v13, Lyads/k83;->m:Z

    move/from16 v29, v2

    iget-wide v1, v13, Lyads/k83;->k:J

    sub-long/2addr v10, v1

    long-to-int v1, v10

    iget-object v2, v13, Lyads/k83;->a:Lyads/k06;

    const/16 v28, 0x0

    move/from16 v26, v1

    move-object/from16 v22, v2

    move-wide/from16 v23, v8

    move/from16 v25, v14

    invoke-interface/range {v22 .. v28}, Lyads/k06;->a(JIIILyads/j06;)V

    goto :goto_3

    :cond_7
    move/from16 v29, v2

    move-wide/from16 v20, v11

    move v12, v9

    :goto_3
    iget-wide v1, v13, Lyads/k83;->b:J

    iput-wide v1, v13, Lyads/k83;->k:J

    iget-wide v1, v13, Lyads/k83;->e:J

    iput-wide v1, v13, Lyads/k83;->l:J

    iget-boolean v1, v13, Lyads/k83;->c:Z

    iput-boolean v1, v13, Lyads/k83;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, v13, Lyads/k83;->i:Z

    :goto_4
    iget-boolean v1, v0, Lyads/l83;->e:Z

    if-nez v1, :cond_2c

    iget-object v1, v0, Lyads/l83;->g:Lyads/md4;

    invoke-virtual {v1, v12}, Lyads/md4;->a(I)Z

    iget-object v1, v0, Lyads/l83;->h:Lyads/md4;

    invoke-virtual {v1, v12}, Lyads/md4;->a(I)Z

    iget-object v1, v0, Lyads/l83;->i:Lyads/md4;

    invoke-virtual {v1, v12}, Lyads/md4;->a(I)Z

    iget-object v1, v0, Lyads/l83;->g:Lyads/md4;

    iget-boolean v8, v1, Lyads/md4;->c:Z

    if-eqz v8, :cond_2c

    iget-object v8, v0, Lyads/l83;->h:Lyads/md4;

    iget-boolean v11, v8, Lyads/md4;->c:Z

    if-eqz v11, :cond_2c

    iget-object v11, v0, Lyads/l83;->i:Lyads/md4;

    iget-boolean v13, v11, Lyads/md4;->c:Z

    if-eqz v13, :cond_2c

    iget-object v13, v0, Lyads/l83;->c:Lyads/k06;

    iget-object v14, v0, Lyads/l83;->b:Ljava/lang/String;

    iget v2, v1, Lyads/md4;->e:I

    iget v9, v8, Lyads/md4;->e:I

    add-int/2addr v9, v2

    iget v10, v11, Lyads/md4;->e:I

    add-int/2addr v9, v10

    new-array v9, v9, [B

    iget-object v10, v1, Lyads/md4;->d:[B

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-static {v10, v5, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v8, Lyads/md4;->d:[B

    iget v10, v1, Lyads/md4;->e:I

    move/from16 v26, v6

    iget v6, v8, Lyads/md4;->e:I

    invoke-static {v2, v5, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v11, Lyads/md4;->d:[B

    iget v1, v1, Lyads/md4;->e:I

    iget v6, v8, Lyads/md4;->e:I

    add-int/2addr v1, v6

    iget v6, v11, Lyads/md4;->e:I

    invoke-static {v2, v5, v9, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lyads/ps4;

    iget-object v2, v8, Lyads/md4;->d:[B

    iget v6, v8, Lyads/md4;->e:I

    invoke-direct {v1, v2, v5, v6}, Lyads/ps4;-><init>([BII)V

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lyads/ps4;->d(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lyads/ps4;->b(I)I

    move-result v5

    invoke-virtual {v1}, Lyads/ps4;->f()V

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lyads/ps4;->b(I)I

    move-result v30

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v31

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Lyads/ps4;->b(I)I

    move-result v32

    const/4 v10, 0x0

    const/16 v33, 0x0

    :goto_5
    const/16 v11, 0x20

    if-ge v10, v11, :cond_9

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v17, 0x1

    shl-int v11, v17, v10

    or-int v11, v33, v11

    move/from16 v33, v11

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x6

    new-array v11, v10, [I

    move/from16 v27, v6

    const/4 v8, 0x0

    :goto_6
    const/16 v6, 0x8

    if-ge v8, v10, :cond_a

    invoke-virtual {v1, v6}, Lyads/ps4;->b(I)I

    move-result v6

    aput v6, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v1, v6}, Lyads/ps4;->b(I)I

    move-result v35

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v5, :cond_d

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v34

    if-eqz v34, :cond_b

    add-int/lit8 v6, v6, 0x59

    :cond_b
    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v34

    if-eqz v34, :cond_c

    add-int/lit8 v6, v6, 0x8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v1, v6}, Lyads/ps4;->d(I)V

    if-lez v5, :cond_e

    rsub-int/lit8 v6, v5, 0x8

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v6}, Lyads/ps4;->d(I)V

    :cond_e
    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v6

    if-ne v6, v2, :cond_f

    invoke-virtual {v1}, Lyads/ps4;->f()V

    :cond_f
    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v8

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v34

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v36

    if-eqz v36, :cond_13

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v36

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v37

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v38

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v39

    const/4 v2, 0x1

    if-eq v6, v2, :cond_11

    move/from16 v10, v27

    if-ne v6, v10, :cond_10

    goto :goto_8

    :cond_10
    move v10, v2

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v10, 0x2

    :goto_9
    if-ne v6, v2, :cond_12

    const/4 v2, 0x2

    goto :goto_a

    :cond_12
    const/4 v2, 0x1

    :goto_a
    add-int v36, v36, v37

    mul-int v36, v36, v10

    sub-int v8, v8, v36

    add-int v38, v38, v39

    mul-int v38, v38, v2

    sub-int v34, v34, v38

    :cond_13
    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v2

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x0

    goto :goto_b

    :cond_14
    move v6, v5

    :goto_b
    if-gt v6, v5, :cond_15

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_1b

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v6, :cond_1b

    move/from16 v36, v6

    const/4 v10, 0x0

    :goto_d
    const/4 v6, 0x6

    if-ge v10, v6, :cond_1a

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v37

    if-nez v37, :cond_17

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move/from16 v37, v2

    :cond_16
    const/4 v2, 0x3

    goto :goto_f

    :cond_17
    shl-int/lit8 v37, v5, 0x1

    add-int/lit8 v37, v37, 0x4

    const/16 v17, 0x1

    shl-int v6, v17, v37

    move/from16 v37, v2

    const/16 v2, 0x40

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v6, v17

    if-le v5, v6, :cond_18

    invoke-virtual {v1}, Lyads/ps4;->e()I

    :cond_18
    const/4 v6, 0x0

    :goto_e
    if-ge v6, v2, :cond_16

    invoke-virtual {v1}, Lyads/ps4;->e()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :goto_f
    if-ne v5, v2, :cond_19

    move v6, v2

    goto :goto_10

    :cond_19
    const/4 v6, 0x1

    :goto_10
    add-int/2addr v10, v6

    move/from16 v2, v37

    goto :goto_d

    :cond_1a
    move/from16 v37, v2

    const/4 v2, 0x3

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v36

    move/from16 v2, v37

    goto :goto_c

    :cond_1b
    move/from16 v37, v2

    move/from16 v36, v6

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lyads/ps4;->d(I)V

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lyads/ps4;->d(I)V

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->f()V

    :cond_1c
    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_11
    if-ge v5, v2, :cond_23

    if-eqz v5, :cond_1d

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v6

    :cond_1d
    if-eqz v6, :cond_20

    invoke-virtual {v1}, Lyads/ps4;->f()V

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move/from16 v38, v2

    const/4 v2, 0x0

    :goto_12
    if-gt v2, v10, :cond_1f

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v39

    if-eqz v39, :cond_1e

    invoke-virtual {v1}, Lyads/ps4;->f()V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1f
    move/from16 v40, v5

    goto :goto_15

    :cond_20
    move/from16 v38, v2

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v2

    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v10

    add-int v39, v2, v10

    move/from16 v40, v5

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v2, :cond_21

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->f()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_21
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v10, :cond_22

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    move/from16 v10, v39

    :goto_15
    add-int/lit8 v5, v40, 0x1

    move/from16 v2, v38

    goto :goto_11

    :cond_23
    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1}, Lyads/ps4;->d()I

    move-result v5

    if-ge v2, v5, :cond_24

    const/16 v24, 0x5

    add-int/lit8 v5, v37, 0x5

    invoke-virtual {v1, v5}, Lyads/ps4;->d(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_24
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lyads/ps4;->d(I)V

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2b

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lyads/ps4;->b(I)I

    move-result v2

    const/16 v6, 0xff

    if-ne v2, v6, :cond_25

    const/16 v6, 0x10

    invoke-virtual {v1, v6}, Lyads/ps4;->b(I)I

    move-result v2

    invoke-virtual {v1, v6}, Lyads/ps4;->b(I)I

    move-result v10

    if-eqz v2, :cond_27

    if-eqz v10, :cond_27

    int-to-float v2, v2

    int-to-float v5, v10

    div-float v5, v2, v5

    goto :goto_17

    :cond_25
    sget-object v6, Lyads/qd4;->b:[F

    const/16 v10, 0x11

    if-ge v2, v10, :cond_26

    aget v5, v6, v2

    goto :goto_17

    :cond_26
    const-string v6, "Unexpected aspect_ratio_idc value: "

    const-string v10, "H265Reader"

    invoke-static {v2, v6, v10}, Lyads/qt3;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_27
    :goto_17
    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1}, Lyads/ps4;->f()V

    :cond_28
    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_29

    move/from16 v2, v36

    invoke-virtual {v1, v2}, Lyads/ps4;->d(I)V

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_29

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lyads/ps4;->d(I)V

    :cond_29
    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1}, Lyads/ps4;->d()I

    invoke-virtual {v1}, Lyads/ps4;->d()I

    :cond_2a
    invoke-virtual {v1}, Lyads/ps4;->f()V

    invoke-virtual {v1}, Lyads/ps4;->c()Z

    move-result v1

    if-eqz v1, :cond_2b

    mul-int/lit8 v34, v34, 0x2

    :cond_2b
    move/from16 v1, v34

    move-object/from16 v34, v11

    invoke-static/range {v30 .. v35}, Lyads/g20;->a(IZII[II)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lyads/uz2;

    invoke-direct {v6}, Lyads/uz2;-><init>()V

    iput-object v14, v6, Lyads/uz2;->a:Ljava/lang/String;

    const-string v10, "video/hevc"

    iput-object v10, v6, Lyads/uz2;->k:Ljava/lang/String;

    iput-object v2, v6, Lyads/uz2;->h:Ljava/lang/String;

    iput v8, v6, Lyads/uz2;->p:I

    iput v1, v6, Lyads/uz2;->q:I

    iput v5, v6, Lyads/uz2;->t:F

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lyads/uz2;->m:Ljava/util/List;

    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v6}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v13, v1}, Lyads/k06;->a(Lyads/vz2;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lyads/l83;->e:Z

    goto :goto_18

    :cond_2c
    move-object/from16 v25, v5

    move/from16 v26, v6

    :goto_18
    iget-object v1, v0, Lyads/l83;->j:Lyads/md4;

    invoke-virtual {v1, v12}, Lyads/md4;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, v0, Lyads/l83;->j:Lyads/md4;

    iget-object v2, v1, Lyads/md4;->d:[B

    iget v1, v1, Lyads/md4;->e:I

    invoke-static {v2, v1}, Lyads/qd4;->a([BI)I

    move-result v1

    iget-object v2, v0, Lyads/l83;->n:Lyads/os4;

    iget-object v5, v0, Lyads/l83;->j:Lyads/md4;

    iget-object v5, v5, Lyads/md4;->d:[B

    iput-object v5, v2, Lyads/os4;->a:[B

    iput v1, v2, Lyads/os4;->c:I

    const/4 v8, 0x0

    iput v8, v2, Lyads/os4;->b:I

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/l83;->a:Lyads/ki5;

    iget-object v2, v0, Lyads/l83;->n:Lyads/os4;

    iget-object v1, v1, Lyads/ki5;->b:[Lyads/k06;

    move-wide/from16 v5, v20

    invoke-static {v5, v6, v2, v1}, Lyads/ry;->a(JLyads/os4;[Lyads/k06;)V

    goto :goto_19

    :cond_2d
    move-wide/from16 v5, v20

    :goto_19
    iget-object v1, v0, Lyads/l83;->k:Lyads/md4;

    invoke-virtual {v1, v12}, Lyads/md4;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lyads/l83;->k:Lyads/md4;

    iget-object v2, v1, Lyads/md4;->d:[B

    iget v1, v1, Lyads/md4;->e:I

    invoke-static {v2, v1}, Lyads/qd4;->a([BI)I

    move-result v1

    iget-object v2, v0, Lyads/l83;->n:Lyads/os4;

    iget-object v9, v0, Lyads/l83;->k:Lyads/md4;

    iget-object v9, v9, Lyads/md4;->d:[B

    iput-object v9, v2, Lyads/os4;->a:[B

    iput v1, v2, Lyads/os4;->c:I

    const/4 v8, 0x0

    iput v8, v2, Lyads/os4;->b:I

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/l83;->a:Lyads/ki5;

    iget-object v2, v0, Lyads/l83;->n:Lyads/os4;

    iget-object v1, v1, Lyads/ki5;->b:[Lyads/k06;

    invoke-static {v5, v6, v2, v1}, Lyads/ry;->a(JLyads/os4;[Lyads/k06;)V

    goto :goto_1a

    :cond_2e
    const/4 v8, 0x0

    :goto_1a
    iget-wide v1, v0, Lyads/l83;->m:J

    iget-object v5, v0, Lyads/l83;->d:Lyads/k83;

    iget-boolean v6, v0, Lyads/l83;->e:Z

    iput-boolean v8, v5, Lyads/k83;->g:Z

    iput-boolean v8, v5, Lyads/k83;->h:Z

    iput-wide v1, v5, Lyads/k83;->e:J

    iput v8, v5, Lyads/k83;->d:I

    iput-wide v3, v5, Lyads/k83;->b:J

    const/16 v11, 0x20

    if-lt v7, v11, :cond_2f

    const/16 v1, 0x28

    if-ne v7, v1, :cond_30

    :cond_2f
    const/4 v2, 0x1

    :goto_1b
    const/16 v6, 0x10

    goto :goto_1d

    :cond_30
    iget-boolean v1, v5, Lyads/k83;->i:Z

    if-eqz v1, :cond_33

    iget-boolean v1, v5, Lyads/k83;->j:Z

    if-nez v1, :cond_33

    if-eqz v6, :cond_32

    iget-wide v11, v5, Lyads/k83;->l:J

    cmp-long v1, v11, v18

    if-nez v1, :cond_31

    goto :goto_1c

    :cond_31
    iget-boolean v13, v5, Lyads/k83;->m:Z

    iget-wide v1, v5, Lyads/k83;->k:J

    sub-long/2addr v3, v1

    long-to-int v14, v3

    iget-object v10, v5, Lyads/k83;->a:Lyads/k06;

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_32
    :goto_1c
    iput-boolean v8, v5, Lyads/k83;->i:Z

    :cond_33
    const/16 v11, 0x20

    if-gt v11, v7, :cond_34

    const/16 v1, 0x23

    if-le v7, v1, :cond_35

    :cond_34
    const/16 v1, 0x27

    if-ne v7, v1, :cond_2f

    :cond_35
    iget-boolean v1, v5, Lyads/k83;->j:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v5, Lyads/k83;->h:Z

    iput-boolean v2, v5, Lyads/k83;->j:Z

    goto :goto_1b

    :goto_1d
    if-lt v7, v6, :cond_36

    const/16 v1, 0x15

    if-gt v7, v1, :cond_36

    move v10, v2

    goto :goto_1e

    :cond_36
    move v10, v8

    :goto_1e
    iput-boolean v10, v5, Lyads/k83;->c:Z

    if-nez v10, :cond_37

    const/16 v1, 0x9

    if-gt v7, v1, :cond_38

    :cond_37
    move v8, v2

    :cond_38
    iput-boolean v8, v5, Lyads/k83;->f:Z

    iget-boolean v1, v0, Lyads/l83;->e:Z

    if-nez v1, :cond_39

    iget-object v1, v0, Lyads/l83;->g:Lyads/md4;

    invoke-virtual {v1, v7}, Lyads/md4;->b(I)V

    iget-object v1, v0, Lyads/l83;->h:Lyads/md4;

    invoke-virtual {v1, v7}, Lyads/md4;->b(I)V

    iget-object v1, v0, Lyads/l83;->i:Lyads/md4;

    invoke-virtual {v1, v7}, Lyads/md4;->b(I)V

    :cond_39
    iget-object v1, v0, Lyads/l83;->j:Lyads/md4;

    invoke-virtual {v1, v7}, Lyads/md4;->b(I)V

    iget-object v1, v0, Lyads/l83;->k:Lyads/md4;

    invoke-virtual {v1, v7}, Lyads/md4;->b(I)V

    move-object/from16 v1, p1

    move-object/from16 v5, v25

    move/from16 v3, v26

    move/from16 v2, v29

    goto/16 :goto_1

    :cond_3a
    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_3b
    return-void

    :cond_3c
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 2

    .line 1136
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 1137
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 1138
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 1139
    iput-object v0, p0, Lyads/l83;->b:Ljava/lang/String;

    .line 1140
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 1141
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x2

    .line 1142
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/l83;->c:Lyads/k06;

    .line 1143
    new-instance v1, Lyads/k83;

    invoke-direct {v1, v0}, Lyads/k83;-><init>(Lyads/k06;)V

    iput-object v1, p0, Lyads/l83;->d:Lyads/k83;

    .line 1144
    iget-object p0, p0, Lyads/l83;->a:Lyads/ki5;

    invoke-virtual {p0, p1, p2}, Lyads/ki5;->a(Lyads/zs2;Lyads/t26;)V

    return-void
.end method

.method public final a([BII)V
    .locals 3

    .line 1146
    iget-object v0, p0, Lyads/l83;->d:Lyads/k83;

    .line 1147
    iget-boolean v1, v0, Lyads/k83;->f:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x2

    .line 1148
    iget v2, v0, Lyads/k83;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_1

    .line 1149
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lyads/k83;->g:Z

    .line 1150
    iput-boolean v2, v0, Lyads/k83;->f:Z

    goto :goto_1

    :cond_1
    sub-int v1, p3, p2

    add-int/2addr v1, v2

    .line 1151
    iput v1, v0, Lyads/k83;->d:I

    .line 1152
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lyads/l83;->e:Z

    if-nez v0, :cond_3

    .line 1153
    iget-object v0, p0, Lyads/l83;->g:Lyads/md4;

    invoke-virtual {v0, p1, p2, p3}, Lyads/md4;->a([BII)V

    .line 1154
    iget-object v0, p0, Lyads/l83;->h:Lyads/md4;

    invoke-virtual {v0, p1, p2, p3}, Lyads/md4;->a([BII)V

    .line 1155
    iget-object v0, p0, Lyads/l83;->i:Lyads/md4;

    invoke-virtual {v0, p1, p2, p3}, Lyads/md4;->a([BII)V

    .line 1156
    :cond_3
    iget-object v0, p0, Lyads/l83;->j:Lyads/md4;

    invoke-virtual {v0, p1, p2, p3}, Lyads/md4;->a([BII)V

    .line 1157
    iget-object p0, p0, Lyads/l83;->k:Lyads/md4;

    invoke-virtual {p0, p1, p2, p3}, Lyads/md4;->a([BII)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
