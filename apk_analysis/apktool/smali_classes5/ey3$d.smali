.class public final Ley3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvk3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final b:Lhy6;

.field public final c:Lbu0;

.field public final d:Lix3$b;

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lhy6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ley3$d;->b:Lhy6;

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iput-object p1, p0, Ley3$d;->c:Lbu0;

    new-instance v0, Lix3$b;

    invoke-direct {v0, p1}, Lix3$b;-><init>(Lbu0;)V

    iput-object v0, p0, Ley3$d;->d:Lix3$b;

    const/16 p1, 0x4000

    iput p1, p0, Ley3$d;->e:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized T(IJ)V
    .locals 3

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ley3$d;->f:Z

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Ley3$d;->a(IIBB)V

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lhy6;->writeInt(I)Lvu0;

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(IIBB)V
    .locals 2

    sget-object v0, Ley3;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Ley3$b;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Ley3$d;->e:I

    if-gt p2, v0, :cond_2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    ushr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    iget-object p0, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p0, v0}, Lhy6;->writeByte(I)Lvu0;

    ushr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lhy6;->writeByte(I)Lvu0;

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Lhy6;->writeByte(I)Lvu0;

    and-int/lit16 p2, p3, 0xff

    invoke-virtual {p0, p2}, Lhy6;->writeByte(I)Lvu0;

    and-int/lit16 p2, p4, 0xff

    invoke-virtual {p0, p2}, Lhy6;->writeByte(I)Lvu0;

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lhy6;->writeInt(I)Lvu0;

    return-void

    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p0, "reserved bit set: "

    invoke-static {p1, p0}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p0, "FRAME_SIZE_ERROR length > "

    const-string p1, ": "

    invoke-static {v0, p2, p0, p1}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final b(ILjava/util/List;Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Ley3$d;->f:Z

    if-nez v2, :cond_e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_9

    move-object/from16 v6, p2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzu3;

    iget-object v8, v7, Lzu3;->a:Lgx0;

    invoke-virtual {v8}, Lgx0;->v()Lgx0;

    move-result-object v8

    iget-object v9, v7, Lzu3;->b:Lgx0;

    sget-object v10, Lix3;->c:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const/4 v11, -0x1

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v12, v10, 0x1

    const/4 v13, 0x2

    if-lt v12, v13, :cond_1

    const/4 v13, 0x7

    if-gt v12, v13, :cond_1

    sget-object v13, Lix3;->b:[Lzu3;

    aget-object v14, v13, v10

    iget-object v14, v14, Lzu3;->b:Lgx0;

    invoke-virtual {v14, v9}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v10, v12

    goto :goto_1

    :cond_0
    aget-object v13, v13, v12

    iget-object v13, v13, Lzu3;->b:Lgx0;

    invoke-virtual {v13, v9}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    add-int/lit8 v10, v10, 0x2

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v16

    goto :goto_1

    :cond_1
    move v10, v12

    move v12, v11

    goto :goto_1

    :cond_2
    move v10, v11

    move v12, v10

    :goto_1
    iget-object v13, v0, Ley3$d;->d:Lix3$b;

    if-ne v12, v11, :cond_5

    iget v14, v13, Lix3$b;->d:I

    add-int/2addr v14, v5

    :goto_2
    iget-object v5, v13, Lix3$b;->b:[Lzu3;

    array-length v15, v5

    if-ge v14, v15, :cond_5

    aget-object v5, v5, v14

    iget-object v5, v5, Lzu3;->a:Lgx0;

    invoke-virtual {v5, v8}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v13, Lix3$b;->b:[Lzu3;

    aget-object v5, v5, v14

    iget-object v5, v5, Lzu3;->b:Lgx0;

    invoke-virtual {v5, v9}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v13, Lix3$b;->d:I

    sub-int/2addr v14, v5

    sget-object v5, Lix3;->b:[Lzu3;

    array-length v5, v5

    add-int v12, v14, v5

    goto :goto_3

    :cond_3
    if-ne v10, v11, :cond_4

    iget v5, v13, Lix3$b;->d:I

    sub-int v5, v14, v5

    sget-object v10, Lix3;->b:[Lzu3;

    array-length v10, v10

    add-int/2addr v5, v10

    move v10, v5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v12, v11, :cond_6

    const/16 v5, 0x7f

    const/16 v7, 0x80

    invoke-virtual {v13, v12, v5, v7}, Lix3$b;->c(III)V

    goto :goto_4

    :cond_6
    const/16 v5, 0x40

    if-ne v10, v11, :cond_7

    iget-object v10, v13, Lix3$b;->a:Lbu0;

    invoke-virtual {v10, v5}, Lbu0;->A0(I)V

    invoke-virtual {v13, v8}, Lix3$b;->b(Lgx0;)V

    invoke-virtual {v13, v9}, Lix3$b;->b(Lgx0;)V

    invoke-virtual {v13, v7}, Lix3$b;->a(Lzu3;)V

    goto :goto_4

    :cond_7
    sget-object v11, Lix3;->a:Lgx0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Lgx0;->f()I

    move-result v12

    invoke-virtual {v8, v3, v11, v12}, Lgx0;->s(ILgx0;I)Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lzu3;->h:Lgx0;

    invoke-virtual {v11, v8}, Lgx0;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const/16 v5, 0xf

    invoke-virtual {v13, v10, v5, v3}, Lix3$b;->c(III)V

    invoke-virtual {v13, v9}, Lix3$b;->b(Lgx0;)V

    goto :goto_4

    :cond_8
    const/16 v8, 0x3f

    invoke-virtual {v13, v10, v8, v5}, Lix3$b;->c(III)V

    invoke-virtual {v13, v9}, Lix3$b;->b(Lgx0;)V

    invoke-virtual {v13, v7}, Lix3$b;->a(Lzu3;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v2, v0, Ley3$d;->c:Lbu0;

    iget-wide v6, v2, Lbu0;->c:J

    iget v4, v0, Ley3$d;->e:I

    int-to-long v8, v4

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    int-to-long v8, v4

    cmp-long v10, v6, v8

    const/4 v11, 0x4

    if-nez v10, :cond_a

    move v12, v11

    goto :goto_5

    :cond_a
    move v12, v3

    :goto_5
    if-eqz p3, :cond_b

    or-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    :cond_b
    invoke-virtual {v0, v1, v4, v5, v12}, Ley3$d;->a(IIBB)V

    iget-object v4, v0, Ley3$d;->b:Lhy6;

    invoke-virtual {v4, v2, v8, v9}, Lhy6;->H(Lbu0;J)V

    if-lez v10, :cond_d

    sub-long/2addr v6, v8

    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_d

    iget v5, v0, Ley3$d;->e:I

    int-to-long v12, v5

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v5, v12

    int-to-long v12, v5

    sub-long/2addr v6, v12

    cmp-long v8, v6, v8

    if-nez v8, :cond_c

    move v8, v11

    goto :goto_7

    :cond_c
    move v8, v3

    :goto_7
    const/16 v9, 0x9

    invoke-virtual {v0, v1, v5, v9, v8}, Ley3$d;->a(IIBB)V

    invoke-virtual {v4, v2, v12, v13}, Lhy6;->H(Lbu0;J)V

    goto :goto_6

    :cond_d
    return-void

    :cond_e
    const-string v0, "closed"

    invoke-static {v0}, Lki0;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b0()I
    .locals 0

    iget p0, p0, Ley3$d;->e:I

    return p0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ley3$d;->f:Z

    iget-object v0, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {v0}, Lhy6;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {v0}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized g0(Lq03;[B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_2

    iget v0, p1, Lq03;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p2

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Ley3$d;->a(IIBB)V

    iget-object v0, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {v0, v2}, Lhy6;->writeInt(I)Lvu0;

    iget-object v0, p0, Ley3$d;->b:Lhy6;

    iget p1, p1, Lq03;->httpCode:I

    invoke-virtual {v0, p1}, Lhy6;->writeInt(I)Lvu0;

    array-length p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1, p2}, Lhy6;->write([B)Lvu0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "errorCode.httpCode == -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized h0(ILq03;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_1

    iget v0, p2, Lq03;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v0, v1}, Ley3$d;->a(IIBB)V

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    iget p2, p2, Lq03;->httpCode:I

    invoke-virtual {p1, p2}, Lhy6;->writeInt(I)Lvu0;

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized m0(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2, v0, p3}, Ley3$d;->a(IIBB)V

    iget-object p3, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p3, p1}, Lhy6;->writeInt(I)Lvu0;

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1, p2}, Lhy6;->writeInt(I)Lvu0;

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized p0(Lpr7;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Ley3$d;->e:I

    iget v1, p1, Lpr7;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object p1, p1, Lpr7;->b:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    :cond_0
    iput v0, p0, Ley3$d;->e:I

    const/4 p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, p1, v0}, Ley3$d;->a(IIBB)V

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized u()V
    .locals 4

    const-string v0, ">> CONNECTION "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ley3$d;->f:Z

    if-nez v1, :cond_1

    sget-object v1, Ley3;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ley3;->b:Lgx0;

    invoke-virtual {v2}, Lgx0;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Ley3$d;->b:Lhy6;

    sget-object v1, Ley3;->b:Lgx0;

    invoke-virtual {v1}, Lgx0;->w()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lhy6;->write([B)Lvu0;

    iget-object v0, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {v0}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized w(ZILbu0;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p4, v0, p1}, Ley3$d;->a(IIBB)V

    if-lez p4, :cond_0

    iget-object p1, p0, Ley3$d;->b:Lhy6;

    int-to-long v0, p4

    invoke-virtual {p1, p3, v0, v1}, Lhy6;->H(Lbu0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized x(ILjava/util/List;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ley3$d;->b(ILjava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized z(Lpr7;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ley3$d;->f:Z

    if-nez v0, :cond_5

    iget v0, p1, Lpr7;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2, v1}, Ley3$d;->a(IIBB)V

    move v0, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    const/4 v3, 0x1

    shl-int v4, v3, v0

    iget v5, p1, Lpr7;->a:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    iget-object v4, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {v4, v3}, Lhy6;->writeShort(I)Lvu0;

    iget-object v3, p0, Ley3$d;->b:Lhy6;

    iget-object v4, p1, Lpr7;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lhy6;->writeInt(I)Lvu0;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Ley3$d;->b:Lhy6;

    invoke-virtual {p1}, Lhy6;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
