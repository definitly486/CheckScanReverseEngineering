.class public final Lyads/ic5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/aj0;

.field public final b:Lyads/os4;

.field public c:Lyads/hc5;

.field public d:Lyads/hc5;

.field public e:Lyads/hc5;

.field public f:J


# direct methods
.method public constructor <init>(Lyads/aj0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ic5;->a:Lyads/aj0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/os4;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/ic5;->b:Lyads/os4;

    new-instance p1, Lyads/hc5;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lyads/hc5;-><init>(J)V

    iput-object p1, p0, Lyads/ic5;->c:Lyads/hc5;

    iput-object p1, p0, Lyads/ic5;->d:Lyads/hc5;

    iput-object p1, p0, Lyads/ic5;->e:Lyads/hc5;

    return-void
.end method

.method public static a(Lyads/hc5;JLjava/nio/ByteBuffer;I)Lyads/hc5;
    .locals 5

    .line 334
    :goto_0
    iget-wide v0, p0, Lyads/hc5;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 335
    iget-object p0, p0, Lyads/hc5;->d:Lyads/hc5;

    goto :goto_0

    :cond_0
    :goto_1
    if-lez p4, :cond_1

    .line 336
    iget-wide v0, p0, Lyads/hc5;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 337
    iget-object v1, p0, Lyads/hc5;->c:Lyads/ee;

    .line 338
    iget-object v2, v1, Lyads/ee;->a:[B

    .line 339
    iget-wide v3, p0, Lyads/hc5;->a:J

    sub-long v3, p1, v3

    long-to-int v3, v3

    iget v1, v1, Lyads/ee;->b:I

    add-int/2addr v3, v1

    .line 340
    invoke-virtual {p3, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 341
    iget-wide v0, p0, Lyads/hc5;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 342
    iget-object p0, p0, Lyads/hc5;->d:Lyads/hc5;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public static a(Lyads/hc5;J[BI)Lyads/hc5;
    .locals 6

    .line 343
    :goto_0
    iget-wide v0, p0, Lyads/hc5;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 344
    iget-object p0, p0, Lyads/hc5;->d:Lyads/hc5;

    goto :goto_0

    :cond_0
    move v0, p4

    :cond_1
    :goto_1
    if-lez v0, :cond_2

    .line 345
    iget-wide v1, p0, Lyads/hc5;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 346
    iget-object v2, p0, Lyads/hc5;->c:Lyads/ee;

    .line 347
    iget-object v3, v2, Lyads/ee;->a:[B

    .line 348
    iget-wide v4, p0, Lyads/hc5;->a:J

    sub-long v4, p1, v4

    long-to-int v4, v4

    iget v2, v2, Lyads/ee;->b:I

    add-int/2addr v4, v2

    sub-int v2, p4, v0

    .line 349
    invoke-static {v3, v4, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 350
    iget-wide v1, p0, Lyads/hc5;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 351
    iget-object p0, p0, Lyads/hc5;->d:Lyads/hc5;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static a(Lyads/hc5;Lyads/mi0;Lyads/jc5;Lyads/os4;)Lyads/hc5;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Lyads/ev;->b(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-wide v3, v1, Lyads/jc5;->b:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lyads/os4;->c(I)V

    iget-object v6, v2, Lyads/os4;->a:[B

    move-object/from16 v7, p0

    invoke-static {v7, v3, v4, v6, v5}, Lyads/ic5;->a(Lyads/hc5;J[BI)Lyads/hc5;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iget-object v7, v2, Lyads/os4;->a:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    if-eqz v9, :cond_0

    move v9, v5

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lyads/mi0;->c:Lyads/ca0;

    iget-object v11, v10, Lyads/ca0;->a:[B

    if-nez v11, :cond_1

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lyads/ca0;->a:[B

    goto :goto_1

    :cond_1
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    iget-object v11, v10, Lyads/ca0;->a:[B

    invoke-static {v6, v3, v4, v11, v7}, Lyads/ic5;->a(Lyads/hc5;J[BI)Lyads/hc5;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v3, v11

    if-eqz v9, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lyads/os4;->c(I)V

    iget-object v7, v2, Lyads/os4;->a:[B

    invoke-static {v6, v3, v4, v7, v5}, Lyads/ic5;->a(Lyads/hc5;J[BI)Lyads/hc5;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v5

    :cond_2
    move v11, v5

    iget-object v5, v10, Lyads/ca0;->d:[I

    if-eqz v5, :cond_4

    array-length v7, v5

    if-ge v7, v11, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v12, v5

    goto :goto_4

    :cond_4
    :goto_3
    new-array v5, v11, [I

    goto :goto_2

    :goto_4
    iget-object v5, v10, Lyads/ca0;->e:[I

    if-eqz v5, :cond_6

    array-length v7, v5

    if-ge v7, v11, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object v13, v5

    goto :goto_7

    :cond_6
    :goto_6
    new-array v5, v11, [I

    goto :goto_5

    :goto_7
    if-eqz v9, :cond_7

    mul-int/lit8 v5, v11, 0x6

    invoke-virtual {v2, v5}, Lyads/os4;->c(I)V

    iget-object v7, v2, Lyads/os4;->a:[B

    invoke-static {v6, v3, v4, v7, v5}, Lyads/ic5;->a(Lyads/hc5;J[BI)Lyads/hc5;

    move-result-object v6

    int-to-long v14, v5

    add-long/2addr v3, v14

    invoke-virtual {v2, v8}, Lyads/os4;->e(I)V

    :goto_8
    if-ge v8, v11, :cond_8

    invoke-virtual {v2}, Lyads/os4;->p()I

    move-result v5

    aput v5, v12, v8

    invoke-virtual {v2}, Lyads/os4;->n()I

    move-result v5

    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_7
    aput v8, v12, v8

    iget v5, v1, Lyads/jc5;->a:I

    iget-wide v14, v1, Lyads/jc5;->b:J

    sub-long v14, v3, v14

    long-to-int v7, v14

    sub-int/2addr v5, v7

    aput v5, v13, v8

    :cond_8
    iget-object v5, v1, Lyads/jc5;->c:Lyads/j06;

    sget v7, Lyads/u56;->a:I

    iget-object v14, v5, Lyads/j06;->b:[B

    iget-object v15, v10, Lyads/ca0;->a:[B

    iget v7, v5, Lyads/j06;->a:I

    iget v8, v5, Lyads/j06;->c:I

    iget v5, v5, Lyads/j06;->d:I

    move/from16 v18, v5

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v10 .. v18}, Lyads/ca0;->a(I[I[I[B[BIII)V

    iget-wide v7, v1, Lyads/jc5;->b:J

    sub-long/2addr v3, v7

    long-to-int v3, v3

    int-to-long v4, v3

    add-long/2addr v7, v4

    iput-wide v7, v1, Lyads/jc5;->b:J

    iget v4, v1, Lyads/jc5;->a:I

    sub-int/2addr v4, v3

    iput v4, v1, Lyads/jc5;->a:I

    goto :goto_9

    :cond_9
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_9
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Lyads/ev;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lyads/os4;->c(I)V

    iget-wide v4, v1, Lyads/jc5;->b:J

    iget-object v7, v2, Lyads/os4;->a:[B

    invoke-static {v6, v4, v5, v7, v3}, Lyads/ic5;->a(Lyads/hc5;J[BI)Lyads/hc5;

    move-result-object v4

    invoke-virtual {v2}, Lyads/os4;->n()I

    move-result v2

    iget-wide v5, v1, Lyads/jc5;->b:J

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    iput-wide v5, v1, Lyads/jc5;->b:J

    iget v5, v1, Lyads/jc5;->a:I

    sub-int/2addr v5, v3

    iput v5, v1, Lyads/jc5;->a:I

    invoke-virtual {v0, v2}, Lyads/mi0;->c(I)V

    iget-wide v5, v1, Lyads/jc5;->b:J

    iget-object v3, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-static {v4, v5, v6, v3, v2}, Lyads/ic5;->a(Lyads/hc5;JLjava/nio/ByteBuffer;I)Lyads/hc5;

    move-result-object v3

    iget-wide v4, v1, Lyads/jc5;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lyads/jc5;->b:J

    iget v4, v1, Lyads/jc5;->a:I

    sub-int/2addr v4, v2

    iput v4, v1, Lyads/jc5;->a:I

    iget-object v2, v0, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_a

    goto :goto_a

    :cond_a
    iget-object v2, v0, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_b

    :cond_b
    :goto_a
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    :goto_b
    iget-wide v4, v1, Lyads/jc5;->b:J

    iget-object v0, v0, Lyads/mi0;->g:Ljava/nio/ByteBuffer;

    iget v1, v1, Lyads/jc5;->a:I

    invoke-static {v3, v4, v5, v0, v1}, Lyads/ic5;->a(Lyads/hc5;JLjava/nio/ByteBuffer;I)Lyads/hc5;

    move-result-object v0

    return-object v0

    :cond_c
    iget v2, v1, Lyads/jc5;->a:I

    invoke-virtual {v0, v2}, Lyads/mi0;->c(I)V

    iget-wide v2, v1, Lyads/jc5;->b:J

    iget-object v0, v0, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    iget v1, v1, Lyads/jc5;->a:I

    invoke-static {v6, v2, v3, v0, v1}, Lyads/ic5;->a(Lyads/hc5;JLjava/nio/ByteBuffer;I)Lyads/hc5;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/ic5;->c:Lyads/hc5;

    iget-wide v1, v0, Lyads/hc5;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    .line 311
    iget-object v1, p0, Lyads/ic5;->a:Lyads/aj0;

    iget-object v0, v0, Lyads/hc5;->c:Lyads/ee;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v2, v1, Lyads/aj0;->d:[Lyads/ee;

    iget v3, v1, Lyads/aj0;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lyads/aj0;->c:I

    aput-object v0, v2, v3

    .line 313
    iget v0, v1, Lyads/aj0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lyads/aj0;->b:I

    .line 314
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 315
    iget-object v0, p0, Lyads/ic5;->c:Lyads/hc5;

    const/4 v1, 0x0

    .line 316
    iput-object v1, v0, Lyads/hc5;->c:Lyads/ee;

    .line 317
    iget-object v2, v0, Lyads/hc5;->d:Lyads/hc5;

    .line 318
    iput-object v1, v0, Lyads/hc5;->d:Lyads/hc5;

    .line 319
    iput-object v2, p0, Lyads/ic5;->c:Lyads/hc5;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    .line 320
    :cond_1
    iget-object p1, p0, Lyads/ic5;->d:Lyads/hc5;

    iget-wide p1, p1, Lyads/hc5;->a:J

    iget-wide v1, v0, Lyads/hc5;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    .line 321
    iput-object v0, p0, Lyads/ic5;->d:Lyads/hc5;

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lyads/hc5;)V
    .locals 5

    .line 322
    iget-object v0, p1, Lyads/hc5;->c:Lyads/ee;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object p0, p0, Lyads/ic5;->a:Lyads/aj0;

    monitor-enter p0

    move-object v0, p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 324
    :try_start_0
    iget-object v2, p0, Lyads/aj0;->d:[Lyads/ee;

    iget v3, p0, Lyads/aj0;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lyads/aj0;->c:I

    .line 325
    iget-object v4, v0, Lyads/hc5;->c:Lyads/ee;

    .line 326
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    aput-object v4, v2, v3

    .line 328
    iget v2, p0, Lyads/aj0;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lyads/aj0;->b:I

    .line 329
    iget-object v0, v0, Lyads/hc5;->d:Lyads/hc5;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lyads/hc5;->c:Lyads/ee;

    if-nez v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 331
    iput-object v1, p1, Lyads/hc5;->c:Lyads/ee;

    .line 332
    iput-object v1, p1, Lyads/hc5;->d:Lyads/hc5;

    return-void

    .line 333
    :goto_2
    monitor-exit p0

    throw p1
.end method
