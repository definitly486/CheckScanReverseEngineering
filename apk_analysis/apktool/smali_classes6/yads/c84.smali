.class public final Lyads/c84;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/z04;
.implements Lyads/y04;


# instance fields
.field public final b:[Lyads/z04;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lyads/dk0;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/HashMap;

.field public g:Lyads/y04;

.field public h:Lyads/g06;

.field public i:[Lyads/z04;

.field public j:Lyads/i50;


# direct methods
.method public varargs constructor <init>(Lyads/dk0;[J[Lyads/z04;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/c84;->d:Lyads/dk0;

    iput-object p3, p0, Lyads/c84;->b:[Lyads/z04;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyads/c84;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v1, v0, [Lyads/ui5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lyads/i50;

    invoke-direct {p1, v1}, Lyads/i50;-><init>([Lyads/ui5;)V

    iput-object p1, p0, Lyads/c84;->j:Lyads/i50;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lyads/c84;->c:Ljava/util/IdentityHashMap;

    new-array p1, v0, [Lyads/z04;

    iput-object p1, p0, Lyads/c84;->i:[Lyads/z04;

    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_1

    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/c84;->b:[Lyads/z04;

    new-instance v3, Lyads/a84;

    aget-object v4, p3, v0

    invoke-direct {v3, v4, v1, v2}, Lyads/a84;-><init>(Lyads/z04;J)V

    aput-object v3, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(JLyads/th5;)J
    .locals 3

    .line 310
    iget-object v0, p0, Lyads/c84;->i:[Lyads/z04;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    aget-object p0, v0, v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lyads/c84;->b:[Lyads/z04;

    aget-object p0, p0, v2

    .line 311
    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lyads/z04;->a(JLyads/th5;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_5

    aget-object v7, v2, v6

    if-nez v7, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    iget-object v8, v0, Lyads/c84;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_1
    const/4 v7, -0x1

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_2
    aput v8, v3, v6

    aput v7, v4, v6

    aget-object v8, v1, v6

    if-eqz v8, :cond_4

    invoke-interface {v8}, Lyads/er2;->c()Lyads/f06;

    move-result-object v8

    iget-object v9, v0, Lyads/c84;->f:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/f06;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    :goto_3
    iget-object v10, v0, Lyads/c84;->b:[Lyads/z04;

    array-length v11, v10

    if-ge v9, v11, :cond_4

    aget-object v10, v10, v9

    invoke-interface {v10}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object v10

    iget-object v10, v10, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v10, v8}, Lyads/oe3;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    goto :goto_4

    :cond_2
    move v10, v7

    :goto_4
    if-eq v10, v7, :cond_3

    aput v9, v4, v6

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    iget-object v6, v0, Lyads/c84;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v7, v6, [Lyads/mc5;

    array-length v9, v1

    new-array v13, v9, [Lyads/mc5;

    array-length v9, v1

    new-array v11, v9, [Lyads/er2;

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, v0, Lyads/c84;->b:[Lyads/z04;

    array-length v10, v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v15, p5

    const/4 v10, 0x0

    :goto_6
    iget-object v12, v0, Lyads/c84;->b:[Lyads/z04;

    array-length v12, v12

    if-ge v10, v12, :cond_10

    const/4 v12, 0x0

    :goto_7
    array-length v14, v1

    if-ge v12, v14, :cond_8

    aget v14, v3, v12

    if-ne v14, v10, :cond_6

    aget-object v14, v2, v12

    goto :goto_8

    :cond_6
    const/4 v14, 0x0

    :goto_8
    aput-object v14, v13, v12

    aget v14, v4, v12

    if-ne v14, v10, :cond_7

    aget-object v14, v1, v12

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v17, 0x0

    invoke-interface {v14}, Lyads/er2;->c()Lyads/f06;

    move-result-object v8

    iget-object v5, v0, Lyads/c84;->f:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/f06;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lyads/z74;

    invoke-direct {v8, v14, v5}, Lyads/z74;-><init>(Lyads/er2;Lyads/f06;)V

    aput-object v8, v11, v12

    goto :goto_9

    :cond_7
    const/16 v17, 0x0

    aput-object v17, v11, v12

    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_8
    const/16 v17, 0x0

    iget-object v5, v0, Lyads/c84;->b:[Lyads/z04;

    aget-object v5, v5, v10

    move v12, v10

    move-object v10, v5

    move v5, v12

    move-object/from16 v12, p2

    move-object/from16 v14, p4

    invoke-interface/range {v10 .. v16}, Lyads/z04;->a([Lyads/er2;[Z[Lyads/mc5;[ZJ)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    if-nez v5, :cond_9

    move-wide/from16 v15, v18

    goto :goto_a

    :cond_9
    cmp-long v8, v18, v15

    if-nez v8, :cond_f

    :goto_a
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_b
    array-length v12, v1

    if-ge v8, v12, :cond_d

    aget v12, v4, v8

    if-ne v12, v5, :cond_a

    aget-object v10, v13, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v12, v13, v8

    aput-object v12, v7, v8

    iget-object v12, v0, Lyads/c84;->c:Ljava/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v10, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_c

    :cond_a
    aget v12, v3, v8

    if-ne v12, v5, :cond_c

    aget-object v12, v13, v8

    if-nez v12, :cond_b

    goto :goto_c

    :cond_b
    invoke-static {}, Lud;->g()V

    return-wide v20

    :cond_c
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_d
    if-eqz v10, :cond_e

    iget-object v8, v0, Lyads/c84;->b:[Lyads/z04;

    aget-object v8, v8, v5

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v10, v5, 0x1

    goto/16 :goto_6

    :cond_f
    const-string v0, "Children enabled at different positions."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-wide v20

    :cond_10
    const/4 v1, 0x0

    invoke-static {v7, v1, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lyads/z04;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lyads/z04;

    iput-object v1, v0, Lyads/c84;->i:[Lyads/z04;

    iget-object v2, v0, Lyads/c84;->d:Lyads/dk0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lyads/i50;

    invoke-direct {v2, v1}, Lyads/i50;-><init>([Lyads/ui5;)V

    iput-object v2, v0, Lyads/c84;->j:Lyads/i50;

    return-wide v15
.end method

.method public final a(J)V
    .locals 3

    .line 308
    iget-object p0, p0, Lyads/c84;->i:[Lyads/z04;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 309
    invoke-interface {v2, p1, p2}, Lyads/z04;->a(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lyads/ui5;)V
    .locals 0

    .line 304
    check-cast p1, Lyads/z04;

    .line 305
    iget-object p1, p0, Lyads/c84;->g:Lyads/y04;

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    invoke-interface {p1, p0}, Lyads/ti5;->a(Lyads/ui5;)V

    return-void
.end method

.method public final a(Lyads/y04;J)V
    .locals 3

    .line 300
    iput-object p1, p0, Lyads/c84;->g:Lyads/y04;

    .line 301
    iget-object p1, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lyads/c84;->b:[Lyads/z04;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 302
    iget-object p1, p0, Lyads/c84;->b:[Lyads/z04;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 303
    invoke-interface {v2, p0, p2, p3}, Lyads/z04;->a(Lyads/y04;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 10

    .line 312
    iget-object v0, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object p1, p0, Lyads/c84;->b:[Lyads/z04;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 315
    invoke-interface {v4}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object v4

    iget v4, v4, Lyads/g06;->b:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_1
    new-array p1, v3, [Lyads/f06;

    move v0, v1

    move v2, v0

    .line 317
    :goto_1
    iget-object v3, p0, Lyads/c84;->b:[Lyads/z04;

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 318
    aget-object v3, v3, v0

    invoke-interface {v3}, Lyads/z04;->getTrackGroups()Lyads/g06;

    move-result-object v3

    .line 319
    iget v4, v3, Lyads/g06;->b:I

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    .line 320
    invoke-virtual {v3, v5}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v6

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lyads/f06;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    new-instance v8, Lyads/f06;

    iget-object v9, v6, Lyads/f06;->e:[Lyads/vz2;

    invoke-direct {v8, v7, v9}, Lyads/f06;-><init>(Ljava/lang/String;[Lyads/vz2;)V

    .line 323
    iget-object v7, p0, Lyads/c84;->f:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    .line 324
    aput-object v8, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_3
    new-instance v0, Lyads/g06;

    invoke-direct {v0, p1}, Lyads/g06;-><init>([Lyads/f06;)V

    iput-object v0, p0, Lyads/c84;->h:Lyads/g06;

    .line 326
    iget-object p1, p0, Lyads/c84;->g:Lyads/y04;

    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    invoke-interface {p1, p0}, Lyads/y04;->a(Lyads/z04;)V

    return-void
.end method

.method public final c(J)Z
    .locals 4

    iget-object v0, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lyads/c84;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/z04;

    invoke-interface {v3, p1, p2}, Lyads/ui5;->c(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lyads/c84;->j:Lyads/i50;

    invoke-virtual {p0, p1, p2}, Lyads/i50;->c(J)Z

    move-result p0

    return p0
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lyads/c84;->j:Lyads/i50;

    invoke-virtual {p0}, Lyads/i50;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lyads/c84;->j:Lyads/i50;

    invoke-virtual {p0}, Lyads/i50;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackGroups()Lyads/g06;
    .locals 0

    iget-object p0, p0, Lyads/c84;->h:Lyads/g06;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final isLoading()Z
    .locals 0

    iget-object p0, p0, Lyads/c84;->j:Lyads/i50;

    invoke-virtual {p0}, Lyads/i50;->isLoading()Z

    move-result p0

    return p0
.end method

.method public final maybeThrowPrepareError()V
    .locals 3

    iget-object p0, p0, Lyads/c84;->b:[Lyads/z04;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lyads/z04;->maybeThrowPrepareError()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/c84;->i:[Lyads/z04;

    array-length v2, v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-wide v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_8

    aget-object v9, v1, v6

    invoke-interface {v9}, Lyads/z04;->readDiscontinuity()J

    move-result-wide v10

    cmp-long v12, v10, v3

    const-wide/16 v13, 0x0

    const-string v15, "Unexpected child seekToUs result."

    if-eqz v12, :cond_5

    cmp-long v12, v7, v3

    if-nez v12, :cond_3

    iget-object v7, v0, Lyads/c84;->i:[Lyads/z04;

    array-length v8, v7

    move v12, v5

    :goto_1
    move-wide/from16 v16, v3

    if-ge v12, v8, :cond_2

    aget-object v3, v7, v12

    if-ne v3, v9, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v3, v10, v11}, Lyads/z04;->seekToUs(J)J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-nez v3, :cond_1

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v16

    goto :goto_1

    :cond_1
    invoke-static {v15}, Lah;->f(Ljava/lang/String;)V

    return-wide v13

    :cond_2
    :goto_2
    move-wide v7, v10

    goto :goto_3

    :cond_3
    move-wide/from16 v16, v3

    cmp-long v3, v10, v7

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "Conflicting discontinuities."

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-wide v13

    :cond_5
    move-wide/from16 v16, v3

    cmp-long v3, v7, v16

    if-eqz v3, :cond_7

    invoke-interface {v9, v7, v8}, Lyads/z04;->seekToUs(J)J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v15}, Lah;->f(Ljava/lang/String;)V

    return-wide v13

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v3, v16

    goto :goto_0

    :cond_8
    return-wide v7
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lyads/c84;->j:Lyads/i50;

    invoke-virtual {p0, p1, p2}, Lyads/i50;->reevaluateBuffer(J)V

    return-void
.end method

.method public final seekToUs(J)J
    .locals 3

    iget-object v0, p0, Lyads/c84;->i:[Lyads/z04;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lyads/z04;->seekToUs(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lyads/c84;->i:[Lyads/z04;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lyads/z04;->seekToUs(J)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "Unexpected child seekToUs result."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    return-wide p1
.end method
