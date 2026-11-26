.class public final Lyads/z25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/vx5;

.field public final b:Landroid/util/SparseArray;

.field public final c:Lyads/os4;

.field public final d:Lyads/x25;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Lyads/w25;

.field public j:Lyads/zs2;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, Lyads/vx5;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lyads/vx5;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/z25;->a:Lyads/vx5;

    new-instance v0, Lyads/os4;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/z25;->c:Lyads/os4;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lyads/z25;->b:Landroid/util/SparseArray;

    new-instance v0, Lyads/x25;

    invoke-direct {v0}, Lyads/x25;-><init>()V

    iput-object v0, p0, Lyads/z25;->d:Lyads/x25;

    return-void
.end method

.method public static synthetic a()[Lyads/ws2;
    .locals 3

    .line 963
    new-instance v0, Lyads/z25;

    invoke-direct {v0}, Lyads/z25;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lyads/z25;->j:Lyads/zs2;

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    move-object/from16 v4, p1

    check-cast v4, Lyads/wk0;

    iget-wide v9, v4, Lyads/wk0;->c:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    const/16 v14, 0x1ba

    const-wide/16 v5, 0x0

    const/16 p1, 0x3

    const/16 v16, 0x4

    move-wide/from16 v17, v11

    const/4 v11, 0x1

    if-eqz v13, :cond_b

    iget-object v12, v0, Lyads/z25;->d:Lyads/x25;

    const/16 v19, 0x8

    iget-boolean v15, v12, Lyads/x25;->c:Z

    if-nez v15, :cond_c

    iget-boolean v0, v12, Lyads/x25;->e:Z

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x4e20

    if-nez v0, :cond_3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v0, v5

    int-to-long v5, v0

    sub-long/2addr v9, v5

    iget-wide v5, v4, Lyads/wk0;->d:J

    cmp-long v2, v5, v9

    if-eqz v2, :cond_0

    iput-wide v9, v1, Lyads/qx4;->a:J

    return v11

    :cond_0
    iget-object v1, v12, Lyads/x25;->b:Lyads/os4;

    invoke-virtual {v1, v0}, Lyads/os4;->c(I)V

    iput v3, v4, Lyads/wk0;->f:I

    iget-object v1, v12, Lyads/x25;->b:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v4, v1, v3, v0, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v0, v12, Lyads/x25;->b:Lyads/os4;

    iget v1, v0, Lyads/os4;->b:I

    iget v2, v0, Lyads/os4;->c:I

    add-int/lit8 v2, v2, -0x4

    :goto_0
    if-lt v2, v1, :cond_2

    iget-object v4, v0, Lyads/os4;->a:[B

    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, 0x3

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    if-ne v4, v14, :cond_1

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v4}, Lyads/os4;->e(I)V

    invoke-static {v0}, Lyads/x25;->a(Lyads/os4;)J

    move-result-wide v4

    cmp-long v6, v4, v20

    if-eqz v6, :cond_1

    move-wide v7, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v7, v20

    :goto_1
    iput-wide v7, v12, Lyads/x25;->g:J

    iput-boolean v11, v12, Lyads/x25;->e:Z

    return v3

    :cond_3
    iget-wide v14, v12, Lyads/x25;->g:J

    cmp-long v0, v14, v20

    if-nez v0, :cond_4

    iget-object v0, v12, Lyads/x25;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v11, v12, Lyads/x25;->c:Z

    iput v3, v4, Lyads/wk0;->f:I

    goto/16 :goto_4

    :cond_4
    iget-boolean v0, v12, Lyads/x25;->d:Z

    if-nez v0, :cond_8

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v0, v7

    iget-wide v7, v4, Lyads/wk0;->d:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_5

    iput-wide v5, v1, Lyads/qx4;->a:J

    return v11

    :cond_5
    iget-object v1, v12, Lyads/x25;->b:Lyads/os4;

    invoke-virtual {v1, v0}, Lyads/os4;->c(I)V

    iput v3, v4, Lyads/wk0;->f:I

    iget-object v1, v12, Lyads/x25;->b:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v4, v1, v3, v0, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v0, v12, Lyads/x25;->b:Lyads/os4;

    iget v1, v0, Lyads/os4;->b:I

    iget v2, v0, Lyads/os4;->c:I

    :goto_2
    add-int/lit8 v4, v2, -0x3

    if-ge v1, v4, :cond_7

    iget-object v4, v0, Lyads/os4;->a:[B

    aget-byte v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, v4, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v1, 0x3

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    const/16 v5, 0x1ba

    if-ne v4, v5, :cond_6

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    invoke-static {v0}, Lyads/x25;->a(Lyads/os4;)J

    move-result-wide v4

    cmp-long v1, v4, v20

    if-eqz v1, :cond_6

    move-wide v7, v4

    goto :goto_3

    :cond_6
    move v1, v6

    goto :goto_2

    :cond_7
    move-wide/from16 v7, v20

    :goto_3
    iput-wide v7, v12, Lyads/x25;->f:J

    iput-boolean v11, v12, Lyads/x25;->d:Z

    return v3

    :cond_8
    iget-wide v0, v12, Lyads/x25;->f:J

    cmp-long v2, v0, v20

    if-nez v2, :cond_9

    iget-object v0, v12, Lyads/x25;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v11, v12, Lyads/x25;->c:Z

    iput v3, v4, Lyads/wk0;->f:I

    goto :goto_4

    :cond_9
    iget-object v2, v12, Lyads/x25;->a:Lyads/vx5;

    invoke-virtual {v2, v0, v1}, Lyads/vx5;->b(J)J

    move-result-wide v0

    iget-object v2, v12, Lyads/x25;->a:Lyads/vx5;

    iget-wide v7, v12, Lyads/x25;->g:J

    invoke-virtual {v2, v7, v8}, Lyads/vx5;->b(J)J

    move-result-wide v7

    sub-long/2addr v7, v0

    iput-wide v7, v12, Lyads/x25;->h:J

    cmp-long v0, v7, v5

    if-gez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid duration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v12, Lyads/x25;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". Using TIME_UNSET instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PsDurationReader"

    invoke-static {v1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, v20

    iput-wide v0, v12, Lyads/x25;->h:J

    :cond_a
    iget-object v0, v12, Lyads/x25;->b:Lyads/os4;

    sget-object v1, Lyads/u56;->f:[B

    invoke-virtual {v0, v1}, Lyads/os4;->a([B)V

    iput-boolean v11, v12, Lyads/x25;->c:Z

    iput v3, v4, Lyads/wk0;->f:I

    :goto_4
    return v3

    :cond_b
    const/16 v19, 0x8

    :cond_c
    iget-boolean v7, v0, Lyads/z25;->k:Z

    if-nez v7, :cond_e

    iput-boolean v11, v0, Lyads/z25;->k:Z

    iget-object v7, v0, Lyads/z25;->d:Lyads/x25;

    iget-wide v14, v7, Lyads/x25;->h:J

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v14, v20

    if-eqz v8, :cond_d

    move-wide/from16 v20, v5

    new-instance v5, Lyads/w25;

    iget-object v6, v7, Lyads/x25;->a:Lyads/vx5;

    move/from16 v12, p1

    move-wide v7, v14

    move-wide/from16 v14, v20

    invoke-direct/range {v5 .. v10}, Lyads/w25;-><init>(Lyads/vx5;JJ)V

    iput-object v5, v0, Lyads/z25;->i:Lyads/w25;

    iget-object v2, v0, Lyads/z25;->j:Lyads/zs2;

    iget-object v5, v5, Lyads/qt;->a:Lyads/kt;

    invoke-interface {v2, v5}, Lyads/zs2;->a(Lyads/sh5;)V

    :goto_5
    move/from16 v5, v16

    goto :goto_6

    :cond_d
    move/from16 v12, p1

    move-wide v7, v14

    move-wide v14, v5

    move/from16 v5, v16

    new-instance v6, Lyads/rh5;

    invoke-direct {v6, v7, v8, v14, v15}, Lyads/rh5;-><init>(JJ)V

    invoke-interface {v2, v6}, Lyads/zs2;->a(Lyads/sh5;)V

    goto :goto_6

    :cond_e
    move/from16 v12, p1

    move-wide v14, v5

    goto :goto_5

    :goto_6
    iget-object v2, v0, Lyads/z25;->i:Lyads/w25;

    if-eqz v2, :cond_f

    iget-object v6, v2, Lyads/qt;->c:Lyads/mt;

    if-eqz v6, :cond_f

    invoke-virtual {v2, v4, v1}, Lyads/qt;->a(Lyads/wk0;Lyads/qx4;)I

    move-result v0

    return v0

    :cond_f
    iput v3, v4, Lyads/wk0;->f:I

    if-eqz v13, :cond_10

    iget-wide v1, v4, Lyads/wk0;->d:J

    sub-long/2addr v9, v1

    goto :goto_7

    :cond_10
    move-wide/from16 v9, v17

    :goto_7
    cmp-long v1, v9, v17

    const/4 v2, -0x1

    if-eqz v1, :cond_11

    const-wide/16 v6, 0x4

    cmp-long v1, v9, v6

    if-gez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v4, v1, v3, v5, v11}, Lyads/wk0;->b([BIIZ)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->a()I

    move-result v1

    const/16 v6, 0x1b9

    if-ne v1, v6, :cond_13

    return v2

    :cond_13
    const/16 v2, 0x1ba

    if-ne v1, v2, :cond_14

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    const/16 v2, 0xa

    invoke-virtual {v4, v1, v3, v2, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lyads/os4;->e(I)V

    iget-object v0, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    invoke-virtual {v4, v0}, Lyads/wk0;->a(I)V

    return v3

    :cond_14
    const/16 v2, 0x1bb

    const/4 v6, 0x6

    const/4 v7, 0x2

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v4, v1, v3, v7, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v0, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, Lyads/wk0;->a(I)V

    return v3

    :cond_15
    and-int/lit16 v2, v1, -0x100

    shr-int/lit8 v2, v2, 0x8

    if-eq v2, v11, :cond_16

    invoke-virtual {v4, v11}, Lyads/wk0;->a(I)V

    return v3

    :cond_16
    and-int/lit16 v2, v1, 0xff

    iget-object v8, v0, Lyads/z25;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/y25;

    iget-boolean v9, v0, Lyads/z25;->e:Z

    if-nez v9, :cond_1c

    if-nez v8, :cond_1a

    const/16 v9, 0xbd

    const/4 v10, 0x0

    if-ne v2, v9, :cond_17

    new-instance v1, Lyads/e0;

    invoke-direct {v1, v10}, Lyads/e0;-><init>(Ljava/lang/String;)V

    iput-boolean v11, v0, Lyads/z25;->f:Z

    iget-wide v9, v4, Lyads/wk0;->d:J

    iput-wide v9, v0, Lyads/z25;->h:J

    :goto_8
    move-object v10, v1

    goto :goto_9

    :cond_17
    and-int/lit16 v9, v1, 0xe0

    const/16 v13, 0xc0

    if-ne v9, v13, :cond_18

    new-instance v1, Lyads/za4;

    invoke-direct {v1, v10}, Lyads/za4;-><init>(Ljava/lang/String;)V

    iput-boolean v11, v0, Lyads/z25;->f:Z

    iget-wide v9, v4, Lyads/wk0;->d:J

    iput-wide v9, v0, Lyads/z25;->h:J

    goto :goto_8

    :cond_18
    and-int/lit16 v1, v1, 0xf0

    const/16 v9, 0xe0

    if-ne v1, v9, :cond_19

    new-instance v1, Lyads/d83;

    invoke-direct {v1, v10}, Lyads/d83;-><init>(Lyads/s56;)V

    iput-boolean v11, v0, Lyads/z25;->g:Z

    iget-wide v9, v4, Lyads/wk0;->d:J

    iput-wide v9, v0, Lyads/z25;->h:J

    goto :goto_8

    :cond_19
    :goto_9
    if-eqz v10, :cond_1a

    new-instance v1, Lyads/t26;

    const/16 v8, 0x100

    const/high16 v9, -0x80000000

    invoke-direct {v1, v9, v2, v8}, Lyads/t26;-><init>(III)V

    iget-object v8, v0, Lyads/z25;->j:Lyads/zs2;

    invoke-interface {v10, v8, v1}, Lyads/zm2;->a(Lyads/zs2;Lyads/t26;)V

    new-instance v8, Lyads/y25;

    iget-object v1, v0, Lyads/z25;->a:Lyads/vx5;

    invoke-direct {v8, v10, v1}, Lyads/y25;-><init>(Lyads/zm2;Lyads/vx5;)V

    iget-object v1, v0, Lyads/z25;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    iget-boolean v1, v0, Lyads/z25;->f:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lyads/z25;->g:Z

    if-eqz v1, :cond_1b

    iget-wide v1, v0, Lyads/z25;->h:J

    const-wide/16 v9, 0x2000

    add-long/2addr v1, v9

    goto :goto_a

    :cond_1b
    const-wide/32 v1, 0x100000

    :goto_a
    iget-wide v9, v4, Lyads/wk0;->d:J

    cmp-long v1, v9, v1

    if-lez v1, :cond_1c

    iput-boolean v11, v0, Lyads/z25;->e:Z

    iget-object v1, v0, Lyads/z25;->j:Lyads/zs2;

    invoke-interface {v1}, Lyads/zs2;->a()V

    :cond_1c
    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {v4, v1, v3, v7, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->p()I

    move-result v1

    add-int/2addr v1, v6

    if-nez v8, :cond_1d

    invoke-virtual {v4, v1}, Lyads/wk0;->a(I)V

    goto/16 :goto_b

    :cond_1d
    iget-object v2, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v2, v1}, Lyads/os4;->c(I)V

    iget-object v2, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    invoke-virtual {v4, v2, v3, v1, v3}, Lyads/wk0;->a([BIIZ)Z

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    invoke-virtual {v1, v6}, Lyads/os4;->e(I)V

    iget-object v1, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    iget-object v2, v2, Lyads/ns4;->a:[B

    invoke-virtual {v1, v2, v3, v12}, Lyads/os4;->a([BII)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v3}, Lyads/ns4;->b(I)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    move/from16 v4, v19

    invoke-virtual {v2, v4}, Lyads/ns4;->c(I)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v2

    iput-boolean v2, v8, Lyads/y25;->d:Z

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2}, Lyads/ns4;->e()Z

    move-result v2

    iput-boolean v2, v8, Lyads/y25;->e:Z

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v6}, Lyads/ns4;->c(I)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v4}, Lyads/ns4;->a(I)I

    move-result v2

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    iget-object v4, v4, Lyads/ns4;->a:[B

    invoke-virtual {v1, v4, v3, v2}, Lyads/os4;->a([BII)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v3}, Lyads/ns4;->b(I)V

    iput-wide v14, v8, Lyads/y25;->g:J

    iget-boolean v2, v8, Lyads/y25;->d:Z

    if-eqz v2, :cond_1f

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v5}, Lyads/ns4;->c(I)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v12}, Lyads/ns4;->a(I)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x1e

    shl-long/2addr v6, v2

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v4, v11}, Lyads/ns4;->c(I)V

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    const/16 v9, 0xf

    invoke-virtual {v4, v9}, Lyads/ns4;->a(I)I

    move-result v4

    shl-int/2addr v4, v9

    int-to-long v13, v4

    or-long/2addr v6, v13

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v4, v11}, Lyads/ns4;->c(I)V

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v4, v9}, Lyads/ns4;->a(I)I

    move-result v4

    int-to-long v13, v4

    or-long/2addr v6, v13

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v4, v11}, Lyads/ns4;->c(I)V

    iget-boolean v4, v8, Lyads/y25;->f:Z

    if-nez v4, :cond_1e

    iget-boolean v4, v8, Lyads/y25;->e:Z

    if-eqz v4, :cond_1e

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v4, v5}, Lyads/ns4;->c(I)V

    iget-object v4, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v4, v12}, Lyads/ns4;->a(I)I

    move-result v4

    int-to-long v12, v4

    shl-long/2addr v12, v2

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v9}, Lyads/ns4;->a(I)I

    move-result v2

    shl-int/2addr v2, v9

    int-to-long v14, v2

    or-long/2addr v12, v14

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v9}, Lyads/ns4;->a(I)I

    move-result v2

    int-to-long v9, v2

    or-long/2addr v9, v12

    iget-object v2, v8, Lyads/y25;->c:Lyads/ns4;

    invoke-virtual {v2, v11}, Lyads/ns4;->c(I)V

    iget-object v2, v8, Lyads/y25;->b:Lyads/vx5;

    invoke-virtual {v2, v9, v10}, Lyads/vx5;->b(J)J

    iput-boolean v11, v8, Lyads/y25;->f:Z

    :cond_1e
    iget-object v2, v8, Lyads/y25;->b:Lyads/vx5;

    invoke-virtual {v2, v6, v7}, Lyads/vx5;->b(J)J

    move-result-wide v6

    iput-wide v6, v8, Lyads/y25;->g:J

    move-wide v14, v6

    :cond_1f
    iget-object v2, v8, Lyads/y25;->a:Lyads/zm2;

    invoke-interface {v2, v5, v14, v15}, Lyads/zm2;->a(IJ)V

    iget-object v2, v8, Lyads/y25;->a:Lyads/zm2;

    invoke-interface {v2, v1}, Lyads/zm2;->a(Lyads/os4;)V

    iget-object v1, v8, Lyads/y25;->a:Lyads/zm2;

    invoke-interface {v1}, Lyads/zm2;->b()V

    iget-object v0, v0, Lyads/z25;->c:Lyads/os4;

    iget-object v1, v0, Lyads/os4;->a:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lyads/os4;->d(I)V

    :goto_b
    return v3

    :cond_20
    invoke-static {}, Lud;->g()V

    return v3
.end method

.method public final a(JJ)V
    .locals 5

    .line 952
    iget-object p1, p0, Lyads/z25;->a:Lyads/vx5;

    monitor-enter p1

    .line 953
    :try_start_0
    iget-wide v0, p1, Lyads/vx5;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 954
    iget-object v0, p0, Lyads/z25;->a:Lyads/vx5;

    invoke-virtual {v0}, Lyads/vx5;->a()J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-eqz p1, :cond_1

    cmp-long p1, v3, p3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 955
    iget-object p1, p0, Lyads/z25;->a:Lyads/vx5;

    invoke-virtual {p1, p3, p4}, Lyads/vx5;->c(J)V

    .line 956
    :cond_3
    iget-object p1, p0, Lyads/z25;->i:Lyads/w25;

    if-eqz p1, :cond_4

    .line 957
    invoke-virtual {p1, p3, p4}, Lyads/qt;->a(J)V

    :cond_4
    move p1, v2

    .line 958
    :goto_2
    iget-object p2, p0, Lyads/z25;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 959
    iget-object p2, p0, Lyads/z25;->b:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/y25;

    .line 960
    iput-boolean v2, p2, Lyads/y25;->f:Z

    .line 961
    iget-object p2, p2, Lyads/y25;->a:Lyads/zm2;

    invoke-interface {p2}, Lyads/zm2;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 962
    monitor-exit p1

    throw p0
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lyads/z25;->j:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 8

    const/16 p0, 0xe

    .line 938
    new-array v0, p0, [B

    .line 939
    check-cast p1, Lyads/wk0;

    const/4 v1, 0x0

    .line 940
    invoke-virtual {p1, v0, v1, p0, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 941
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    .line 942
    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    return v1

    :cond_1
    const/4 v6, 0x6

    .line 943
    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_2

    return v1

    .line 944
    :cond_2
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3

    return v1

    :cond_3
    const/16 p0, 0x9

    .line 945
    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    return v1

    :cond_4
    const/16 p0, 0xc

    .line 946
    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_5

    return v1

    :cond_5
    const/16 p0, 0xd

    .line 947
    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    .line 948
    invoke-virtual {p1, p0, v1}, Lyads/wk0;->a(IZ)Z

    .line 949
    invoke-virtual {p1, v0, v1, v4, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 950
    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
