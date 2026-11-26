.class public final Lyads/ay2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pt;


# instance fields
.field public final a:Lyads/ky2;

.field public final b:I

.field public final c:Lyads/dy2;


# direct methods
.method public constructor <init>(Lyads/ky2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ay2;->a:Lyads/ky2;

    iput p2, p0, Lyads/ay2;->b:I

    new-instance p1, Lyads/dy2;

    invoke-direct {p1}, Lyads/dy2;-><init>()V

    iput-object p1, p0, Lyads/ay2;->c:Lyads/dy2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wk0;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget-wide v2, v1, Lyads/wk0;->d:J

    iget v4, v1, Lyads/wk0;->f:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget-wide v4, v1, Lyads/wk0;->c:J

    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-gez v4, :cond_3

    iget-object v4, v0, Lyads/ay2;->a:Lyads/ky2;

    iget v8, v0, Lyads/ay2;->b:I

    iget-object v9, v0, Lyads/ay2;->c:Lyads/dy2;

    const/4 v10, 0x2

    new-array v11, v10, [B

    invoke-virtual {v1, v11, v5, v10, v5}, Lyads/wk0;->b([BIIZ)Z

    aget-byte v12, v11, v5

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    const/4 v13, 0x1

    aget-byte v14, v11, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    if-eq v12, v8, :cond_0

    iput v5, v1, Lyads/wk0;->f:I

    iget-wide v8, v1, Lyads/wk0;->d:J

    sub-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v1, v2, v5}, Lyads/wk0;->a(IZ)Z

    move v2, v5

    move-wide/from16 v16, v6

    goto :goto_3

    :cond_0
    new-instance v12, Lyads/os4;

    const/16 v14, 0x10

    invoke-direct {v12, v14}, Lyads/os4;-><init>(I)V

    iget-object v14, v12, Lyads/os4;->a:[B

    invoke-static {v11, v5, v14, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v12, Lyads/os4;->a:[B

    move v14, v5

    :goto_1
    const/16 v15, 0xe

    if-ge v14, v15, :cond_2

    add-int v15, v10, v14

    move-wide/from16 v16, v6

    rsub-int/lit8 v6, v14, 0xe

    invoke-virtual {v1, v11, v15, v6}, Lyads/wk0;->d([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v14, v6

    move-wide/from16 v6, v16

    goto :goto_1

    :cond_2
    move-wide/from16 v16, v6

    :goto_2
    invoke-virtual {v12, v14}, Lyads/os4;->d(I)V

    iput v5, v1, Lyads/wk0;->f:I

    iget-wide v6, v1, Lyads/wk0;->d:J

    sub-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v1, v2, v5}, Lyads/wk0;->a(IZ)Z

    invoke-static {v12, v4, v8, v9}, Lyads/ey2;->a(Lyads/os4;Lyads/ky2;ILyads/dy2;)Z

    move-result v2

    :goto_3
    if-nez v2, :cond_4

    invoke-virtual {v1, v13, v5}, Lyads/wk0;->a(IZ)Z

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v6

    :cond_4
    iget-wide v2, v1, Lyads/wk0;->d:J

    iget v4, v1, Lyads/wk0;->f:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    iget-wide v6, v1, Lyads/wk0;->c:J

    sub-long v8, v6, v16

    cmp-long v4, v2, v8

    if-ltz v4, :cond_5

    sub-long/2addr v6, v2

    long-to-int v2, v6

    invoke-virtual {v1, v2, v5}, Lyads/wk0;->a(IZ)Z

    iget-object v0, v0, Lyads/ay2;->a:Lyads/ky2;

    iget-wide v0, v0, Lyads/ky2;->j:J

    return-wide v0

    :cond_5
    iget-object v0, v0, Lyads/ay2;->c:Lyads/dy2;

    iget-wide v0, v0, Lyads/dy2;->a:J

    return-wide v0
.end method

.method public final a(Lyads/wk0;J)Lyads/ot;
    .locals 16

    move-object/from16 v0, p1

    .line 151
    iget-wide v4, v0, Lyads/wk0;->d:J

    .line 152
    invoke-virtual/range {p0 .. p1}, Lyads/ay2;->a(Lyads/wk0;)J

    move-result-wide v2

    .line 153
    iget-wide v6, v0, Lyads/wk0;->d:J

    iget v1, v0, Lyads/wk0;->f:I

    int-to-long v8, v1

    add-long v14, v6, v8

    move-object/from16 v1, p0

    .line 154
    iget-object v6, v1, Lyads/ay2;->a:Lyads/ky2;

    iget v6, v6, Lyads/ky2;->c:I

    const/4 v7, 0x6

    .line 155
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    .line 156
    invoke-virtual {v0, v6, v7}, Lyads/wk0;->a(IZ)Z

    .line 157
    invoke-virtual/range {p0 .. p1}, Lyads/ay2;->a(Lyads/wk0;)J

    move-result-wide v10

    .line 158
    iget-wide v6, v0, Lyads/wk0;->d:J

    iget v0, v0, Lyads/wk0;->f:I

    int-to-long v0, v0

    add-long v12, v6, v0

    cmp-long v0, v2, p2

    if-gtz v0, :cond_0

    cmp-long v0, v10, p2

    if-lez v0, :cond_0

    .line 159
    new-instance v10, Lyads/ot;

    const/4 v11, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v10 .. v15}, Lyads/ot;-><init>(IJJ)V

    return-object v10

    :cond_0
    cmp-long v0, v10, p2

    if-gtz v0, :cond_1

    .line 160
    new-instance v8, Lyads/ot;

    const/4 v9, -0x2

    invoke-direct/range {v8 .. v13}, Lyads/ot;-><init>(IJJ)V

    return-object v8

    .line 161
    :cond_1
    new-instance v0, Lyads/ot;

    const/4 v1, -0x1

    invoke-direct/range {v0 .. v5}, Lyads/ot;-><init>(IJJ)V

    return-object v0
.end method
