.class public abstract Lyads/tw3;
.super Lyads/p06;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/p06;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Lyads/gs;Lyads/g06;Lyads/h14;Lyads/kx5;)Lyads/q06;
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lyads/f06;

    array-length v6, v0

    add-int/2addr v6, v3

    new-array v11, v6, [[[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    iget v8, v1, Lyads/g06;->b:I

    new-array v9, v8, [Lyads/f06;

    aput-object v9, v5, v7

    new-array v8, v8, [[I

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    array-length v4, v0

    new-array v10, v4, [I

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    aget-object v8, v0, v7

    invoke-virtual {v8}, Lyads/gs;->k()I

    move-result v8

    aput v8, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iget v7, v1, Lyads/g06;->b:I

    if-ge v4, v7, :cond_a

    invoke-virtual {v1, v4}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v7

    iget v8, v7, Lyads/f06;->d:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    array-length v9, v0

    move v14, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    array-length v15, v0

    if-ge v12, v15, :cond_7

    aget-object v15, v0, v12

    move/from16 p4, v3

    const/16 p3, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_5
    iget v1, v7, Lyads/f06;->b:I

    if-ge v6, v1, :cond_3

    iget-object v1, v7, Lyads/f06;->e:[Lyads/vz2;

    aget-object v1, v1, v6

    invoke-virtual {v15, v1}, Lyads/gs;->a(Lyads/vz2;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_3
    aget v1, v2, v12

    if-nez v1, :cond_4

    move/from16 v1, p4

    goto :goto_6

    :cond_4
    move/from16 v1, p3

    :goto_6
    if-gt v3, v13, :cond_5

    if-ne v3, v13, :cond_6

    if-eqz v8, :cond_6

    if-nez v14, :cond_6

    if-eqz v1, :cond_6

    :cond_5
    move v14, v1

    move v13, v3

    move v9, v12

    :cond_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p2

    move/from16 v3, p4

    goto :goto_4

    :cond_7
    move/from16 p4, v3

    const/16 p3, 0x0

    array-length v1, v0

    if-ne v9, v1, :cond_8

    iget v1, v7, Lyads/f06;->b:I

    new-array v1, v1, [I

    goto :goto_8

    :cond_8
    aget-object v1, v0, v9

    iget v3, v7, Lyads/f06;->b:I

    new-array v3, v3, [I

    move/from16 v6, p3

    :goto_7
    iget v8, v7, Lyads/f06;->b:I

    if-ge v6, v8, :cond_9

    iget-object v8, v7, Lyads/f06;->e:[Lyads/vz2;

    aget-object v8, v8, v6

    invoke-virtual {v1, v8}, Lyads/gs;->a(Lyads/vz2;)I

    move-result v8

    aput v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    move-object v1, v3

    :goto_8
    aget v3, v2, v9

    aget-object v6, v5, v9

    aput-object v7, v6, v3

    aget-object v6, v11, v9

    aput-object v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v9

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    move/from16 v3, p4

    goto/16 :goto_2

    :cond_a
    move/from16 p4, v3

    const/16 p3, 0x0

    array-length v1, v0

    new-array v9, v1, [Lyads/g06;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, v0

    new-array v8, v3, [I

    move/from16 v3, p3

    :goto_9
    array-length v4, v0

    if-ge v3, v4, :cond_b

    aget v4, v2, v3

    new-instance v6, Lyads/g06;

    aget-object v7, v5, v3

    invoke-static {v4, v7}, Lyads/u56;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lyads/f06;

    invoke-direct {v6, v7}, Lyads/g06;-><init>([Lyads/f06;)V

    aput-object v6, v9, v3

    aget-object v6, v11, v3

    invoke-static {v4, v6}, Lyads/u56;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    aput-object v4, v11, v3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lyads/gs;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v4, v0, v3

    iget v4, v4, Lyads/gs;->b:I

    aput v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    array-length v1, v0

    aget v1, v2, v1

    new-instance v12, Lyads/g06;

    array-length v0, v0

    aget-object v0, v5, v0

    invoke-static {v1, v0}, Lyads/u56;->a(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/f06;

    invoke-direct {v12, v0}, Lyads/g06;-><init>([Lyads/f06;)V

    new-instance v7, Lyads/sw3;

    invoke-direct/range {v7 .. v12}, Lyads/sw3;-><init>([I[Lyads/g06;[I[[[ILyads/g06;)V

    move-object/from16 v0, p0

    check-cast v0, Lyads/um0;

    iget-object v1, v0, Lyads/um0;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lyads/um0;->f:Lyads/mm0;

    iget-boolean v3, v2, Lyads/mm0;->L:Z

    const/16 v4, 0x20

    if-eqz v3, :cond_d

    sget v3, Lyads/u56;->a:I

    if-lt v3, v4, :cond_d

    iget-object v3, v0, Lyads/um0;->g:Lyads/pm0;

    if-eqz v3, :cond_d

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v3, v0, v5}, Lyads/pm0;->a(Lyads/um0;Landroid/os/Looper;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_48

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_d
    :goto_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v7, Lyads/sw3;->a:I

    new-array v3, v1, [Lyads/dr2;

    invoke-static {v7, v11, v10, v2}, Lyads/um0;->a(Lyads/sw3;[[[I[ILyads/mm0;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lyads/dr2;

    aput-object v5, v3, v6

    :cond_e
    invoke-virtual {v0, v7, v11, v2}, Lyads/um0;->a(Lyads/sw3;[[[ILyads/mm0;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lyads/dr2;

    aput-object v8, v3, v6

    :cond_f
    if-nez v5, :cond_10

    const/4 v5, 0x0

    goto :goto_b

    :cond_10
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lyads/dr2;

    iget-object v8, v5, Lyads/dr2;->a:Lyads/f06;

    iget-object v5, v5, Lyads/dr2;->b:[I

    aget v5, v5, p3

    iget-object v8, v8, Lyads/f06;->e:[Lyads/vz2;

    aget-object v5, v8, v5

    iget-object v5, v5, Lyads/vz2;->d:Ljava/lang/String;

    :goto_b
    invoke-static {v7, v11, v2, v5}, Lyads/um0;->a(Lyads/sw3;[[[ILyads/mm0;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lyads/dr2;

    aput-object v5, v3, v8

    :cond_11
    move/from16 v5, p3

    :goto_c
    const/4 v8, 0x2

    if-ge v5, v1, :cond_19

    iget-object v9, v7, Lyads/sw3;->b:[I

    aget v9, v9, v5

    if-eq v9, v8, :cond_18

    move/from16 v8, p4

    if-eq v9, v8, :cond_18

    const/4 v8, 0x3

    if-eq v9, v8, :cond_18

    iget-object v8, v7, Lyads/sw3;->c:[Lyads/g06;

    aget-object v8, v8, v5

    aget-object v9, v11, v5

    move/from16 v10, p3

    move v12, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_d
    iget v15, v8, Lyads/g06;->b:I

    if-ge v10, v15, :cond_16

    invoke-virtual {v8, v10}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v15

    aget-object v16, v9, v10

    move/from16 p0, v4

    move-object v4, v14

    const/16 p1, 0x0

    move-object v14, v13

    move v13, v12

    move/from16 v12, p3

    :goto_e
    iget v6, v15, Lyads/f06;->b:I

    if-ge v12, v6, :cond_15

    aget v6, v16, v12

    move-object/from16 p2, v3

    iget-boolean v3, v2, Lyads/mm0;->M:Z

    invoke-static {v6, v3}, Lyads/um0;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v15, Lyads/f06;->e:[Lyads/vz2;

    aget-object v3, v3, v12

    new-instance v6, Lyads/km0;

    move/from16 v17, v5

    aget v5, v16, v12

    invoke-direct {v6, v3, v5}, Lyads/km0;-><init>(Lyads/vz2;I)V

    if-eqz v4, :cond_12

    iget-boolean v3, v6, Lyads/km0;->c:Z

    iget-boolean v5, v4, Lyads/km0;->c:Z

    invoke-static {v3, v5}, Lyads/xu;->a(ZZ)I

    move-result v3

    invoke-static {v3}, Lyads/q40;->a(I)Lyads/s40;

    move-result-object v3

    iget-boolean v5, v6, Lyads/km0;->b:Z

    move-object/from16 v18, v6

    iget-boolean v6, v4, Lyads/km0;->b:Z

    invoke-virtual {v3, v5, v6}, Lyads/s40;->a(ZZ)Lyads/s40;

    move-result-object v3

    invoke-virtual {v3}, Lyads/s40;->a()I

    move-result v3

    if-lez v3, :cond_14

    goto :goto_f

    :cond_12
    move-object/from16 v18, v6

    :goto_f
    move v13, v12

    move-object v14, v15

    move-object/from16 v4, v18

    goto :goto_10

    :cond_13
    move/from16 v17, v5

    :cond_14
    :goto_10
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p2

    move/from16 v5, v17

    goto :goto_e

    :cond_15
    move-object/from16 p2, v3

    move/from16 v17, v5

    add-int/lit8 v10, v10, 0x1

    move v12, v13

    move-object v13, v14

    move-object v14, v4

    move/from16 v4, p0

    goto :goto_d

    :cond_16
    move-object/from16 p2, v3

    move/from16 p0, v4

    move/from16 v17, v5

    const/16 p1, 0x0

    if-nez v13, :cond_17

    move-object/from16 v3, p1

    goto :goto_11

    :cond_17
    new-instance v3, Lyads/dr2;

    filled-new-array {v12}, [I

    move-result-object v4

    move/from16 v5, p3

    invoke-direct {v3, v5, v13, v4}, Lyads/dr2;-><init>(ILyads/f06;[I)V

    :goto_11
    aput-object v3, p2, v17

    goto :goto_12

    :cond_18
    move-object/from16 p2, v3

    move/from16 p0, v4

    move/from16 v17, v5

    const/16 p1, 0x0

    :goto_12
    add-int/lit8 v5, v17, 0x1

    move/from16 v4, p0

    move-object/from16 v3, p2

    const/16 p3, 0x0

    const/16 p4, 0x1

    goto/16 :goto_c

    :cond_19
    move-object/from16 p2, v3

    move/from16 p0, v4

    const/16 p1, 0x0

    iget v3, v7, Lyads/sw3;->a:I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :goto_13
    if-ge v5, v3, :cond_1a

    iget-object v6, v7, Lyads/sw3;->c:[Lyads/g06;

    aget-object v6, v6, v5

    invoke-static {v6, v2, v4}, Lyads/um0;->a(Lyads/g06;Lyads/mm0;Ljava/util/HashMap;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1a
    iget-object v5, v7, Lyads/sw3;->f:Lyads/g06;

    invoke-static {v5, v2, v4}, Lyads/um0;->a(Lyads/g06;Lyads/mm0;Ljava/util/HashMap;)V

    const/4 v5, 0x0

    :goto_14
    const/4 v6, -0x1

    if-ge v5, v3, :cond_1e

    iget-object v9, v7, Lyads/sw3;->b:[I

    aget v9, v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/m06;

    if-nez v9, :cond_1b

    goto :goto_17

    :cond_1b
    iget-object v10, v9, Lyads/m06;->c:Lyads/oe3;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1d

    iget-object v10, v7, Lyads/sw3;->c:[Lyads/g06;

    aget-object v10, v10, v5

    iget-object v12, v9, Lyads/m06;->b:Lyads/f06;

    iget-object v10, v10, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v10, v12}, Lyads/oe3;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_1c

    goto :goto_15

    :cond_1c
    move v10, v6

    :goto_15
    if-eq v10, v6, :cond_1d

    new-instance v6, Lyads/dr2;

    iget-object v10, v9, Lyads/m06;->b:Lyads/f06;

    iget-object v9, v9, Lyads/m06;->c:Lyads/oe3;

    invoke-static {v9}, Lyads/bq3;->a(Ljava/util/Collection;)[I

    move-result-object v9

    const/4 v12, 0x0

    invoke-direct {v6, v12, v10, v9}, Lyads/dr2;-><init>(ILyads/f06;[I)V

    goto :goto_16

    :cond_1d
    move-object/from16 v6, p1

    :goto_16
    aput-object v6, p2, v5

    :goto_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_1e
    iget v3, v7, Lyads/sw3;->a:I

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_22

    iget-object v5, v7, Lyads/sw3;->c:[Lyads/g06;

    aget-object v5, v5, v4

    iget-object v9, v2, Lyads/mm0;->P:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_21

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    iget-object v9, v2, Lyads/mm0;->P:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_1f

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/nm0;

    goto :goto_19

    :cond_1f
    move-object/from16 v9, p1

    :goto_19
    if-eqz v9, :cond_20

    iget-object v10, v9, Lyads/nm0;->c:[I

    array-length v10, v10

    if-eqz v10, :cond_20

    new-instance v10, Lyads/dr2;

    iget v12, v9, Lyads/nm0;->b:I

    invoke-virtual {v5, v12}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v5

    iget-object v12, v9, Lyads/nm0;->c:[I

    iget v9, v9, Lyads/nm0;->d:I

    invoke-direct {v10, v9, v5, v12}, Lyads/dr2;-><init>(ILyads/f06;[I)V

    goto :goto_1a

    :cond_20
    move-object/from16 v10, p1

    :goto_1a
    aput-object v10, p2, v4

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_22
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_25

    iget-object v4, v7, Lyads/sw3;->b:[I

    aget v4, v4, v3

    iget-object v5, v2, Lyads/mm0;->Q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v2, Lyads/o06;->A:Lyads/te3;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lyads/ie3;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    aput-object p1, p2, v3

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_25
    iget-object v3, v0, Lyads/um0;->d:Lyads/nb;

    iget-object v15, v0, Lyads/p06;->b:Lyads/vn;

    if-eqz v15, :cond_59

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_1c
    const-wide/16 v4, 0x0

    if-ge v3, v1, :cond_27

    aget-object v9, p2, v3

    if-eqz v9, :cond_26

    iget-object v9, v9, Lyads/dr2;->b:[I

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_26

    invoke-static {}, Lyads/oe3;->f()Lyads/ke3;

    move-result-object v9

    new-instance v10, Lyads/mb;

    invoke-direct {v10, v4, v5, v4, v5}, Lyads/mb;-><init>(JJ)V

    invoke-virtual {v9, v10}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_26
    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v3, v3, 0x1

    const/16 p1, 0x0

    goto :goto_1c

    :cond_27
    new-array v3, v1, [[J

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v1, :cond_2a

    aget-object v10, p2, v9

    if-nez v10, :cond_28

    const/4 v12, 0x0

    new-array v10, v12, [J

    aput-object v10, v3, v9

    goto :goto_20

    :cond_28
    iget-object v12, v10, Lyads/dr2;->b:[I

    array-length v12, v12

    new-array v12, v12, [J

    aput-object v12, v3, v9

    const/4 v12, 0x0

    :goto_1f
    iget-object v13, v10, Lyads/dr2;->b:[I

    array-length v14, v13

    if-ge v12, v14, :cond_29

    aget-object v14, v3, v9

    iget-object v4, v10, Lyads/dr2;->a:Lyads/f06;

    aget v5, v13, v12

    iget-object v4, v4, Lyads/f06;->e:[Lyads/vz2;

    aget-object v4, v4, v5

    iget v4, v4, Lyads/vz2;->i:I

    int-to-long v4, v4

    aput-wide v4, v14, v12

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v4, 0x0

    goto :goto_1f

    :cond_29
    aget-object v4, v3, v9

    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    :goto_20
    add-int/lit8 v9, v9, 0x1

    const-wide/16 v4, 0x0

    goto :goto_1e

    :cond_2a
    new-array v4, v1, [I

    new-array v5, v1, [J

    const/4 v9, 0x0

    :goto_21
    if-ge v9, v1, :cond_2c

    aget-object v10, v3, v9

    array-length v12, v10

    if-nez v12, :cond_2b

    const-wide/16 v13, 0x0

    goto :goto_22

    :cond_2b
    const/4 v12, 0x0

    aget-wide v13, v10, v12

    :goto_22
    aput-wide v13, v5, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_21

    :cond_2c
    invoke-static {v0, v5}, Lyads/ob;->a(Ljava/util/ArrayList;[J)V

    sget-object v9, Lyads/xm4;->b:Lyads/xm4;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lyads/cd4;

    invoke-direct {v10, v9}, Lyads/cd4;-><init>(Lyads/xm4;)V

    invoke-virtual {v10}, Lyads/fd4;->a()Lyads/ed4;

    move-result-object v9

    invoke-virtual {v9}, Lyads/ed4;->a()Lyads/gd4;

    move-result-object v9

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v1, :cond_35

    aget-object v12, v3, v10

    array-length v13, v12

    const/4 v14, 0x1

    if-gt v13, v14, :cond_2d

    move-object v8, v3

    move-object/from16 v18, v4

    goto/16 :goto_2a

    :cond_2d
    array-length v12, v12

    new-array v13, v12, [D

    const/4 v14, 0x0

    :goto_24
    aget-object v6, v3, v10

    array-length v8, v6

    const-wide/16 v16, 0x0

    if-ge v14, v8, :cond_2f

    move-object v8, v3

    move-object/from16 v18, v4

    aget-wide v3, v6, v14

    const-wide/16 v19, -0x1

    cmp-long v6, v3, v19

    if-nez v6, :cond_2e

    goto :goto_25

    :cond_2e
    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    :goto_25
    aput-wide v16, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object v3, v8

    move-object/from16 v4, v18

    const/4 v8, 0x2

    goto :goto_24

    :cond_2f
    move-object v8, v3

    move-object/from16 v18, v4

    add-int/lit8 v12, v12, -0x1

    aget-wide v3, v13, v12

    const/4 v6, 0x0

    aget-wide v19, v13, v6

    sub-double v3, v3, v19

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v12, :cond_34

    aget-wide v19, v13, v6

    add-int/lit8 v6, v6, 0x1

    aget-wide v21, v13, v6

    add-double v19, v19, v21

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v19, v19, v21

    cmpl-double v14, v3, v16

    if-nez v14, :cond_30

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    goto :goto_27

    :cond_30
    const/4 v14, 0x0

    aget-wide v21, v13, v14

    sub-double v19, v19, v21

    div-double v19, v19, v3

    :goto_27
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-wide/from16 v19, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v9, Lyads/z;->e:Ljava/util/Map;

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-nez v4, :cond_32

    iget-object v4, v9, Lyads/gd4;->g:Lyads/ut5;

    invoke-interface {v4}, Lyads/ut5;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    iget v3, v9, Lyads/z;->f:I

    const/16 v21, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lyads/z;->f:I

    iget-object v3, v9, Lyads/z;->e:Ljava/util/Map;

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_31
    const-string v0, "New Collection violated the Collection spec"

    invoke-static {v0}, Lxg;->d(Ljava/lang/Object;)V

    :goto_28
    const/4 v4, 0x0

    return-object v4

    :cond_32
    const/16 v21, 0x1

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget v3, v9, Lyads/z;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v9, Lyads/z;->f:I

    :cond_33
    :goto_29
    move-wide/from16 v3, v19

    goto :goto_26

    :cond_34
    :goto_2a
    add-int/lit8 v10, v10, 0x1

    move-object v3, v8

    move-object/from16 v4, v18

    const/4 v6, -0x1

    const/4 v8, 0x2

    goto/16 :goto_23

    :cond_35
    move-object v8, v3

    move-object/from16 v18, v4

    iget-object v3, v9, Lyads/c0;->c:Lyads/b0;

    if-nez v3, :cond_36

    new-instance v3, Lyads/b0;

    invoke-direct {v3, v9}, Lyads/b0;-><init>(Lyads/gd4;)V

    iput-object v3, v9, Lyads/c0;->c:Lyads/b0;

    :cond_36
    invoke-static {v3}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2b
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v4, v6, :cond_37

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v9, v18, v6

    const/4 v14, 0x1

    add-int/2addr v9, v14

    aput v9, v18, v6

    aget-object v10, v8, v6

    aget-wide v9, v10, v9

    aput-wide v9, v5, v6

    invoke-static {v0, v5}, Lyads/ob;->a(Ljava/util/ArrayList;[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_37
    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v1, :cond_39

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    aget-wide v8, v5, v3

    const-wide/16 v12, 0x2

    mul-long/2addr v8, v12

    aput-wide v8, v5, v3

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_39
    invoke-static {v0, v5}, Lyads/ob;->a(Ljava/util/ArrayList;[J)V

    invoke-static {}, Lyads/oe3;->f()Lyads/ke3;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/ke3;

    if-nez v5, :cond_3a

    sget-object v5, Lyads/k55;->f:Lyads/k55;

    goto :goto_2e

    :cond_3a
    invoke-virtual {v5}, Lyads/ke3;->a()Lyads/k55;

    move-result-object v5

    :goto_2e
    invoke-virtual {v3, v5}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3b
    invoke-virtual {v3}, Lyads/ke3;->a()Lyads/k55;

    move-result-object v0

    new-array v3, v1, [Lyads/er2;

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v1, :cond_3f

    aget-object v4, p2, v5

    if-eqz v4, :cond_3e

    iget-object v14, v4, Lyads/dr2;->b:[I

    array-length v6, v14

    if-nez v6, :cond_3c

    goto :goto_31

    :cond_3c
    array-length v6, v14

    iget-object v13, v4, Lyads/dr2;->a:Lyads/f06;

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3d

    new-instance v4, Lyads/zx2;

    const/4 v12, 0x0

    aget v6, v14, v12

    invoke-direct {v4, v13, v6}, Lyads/zx2;-><init>(Lyads/f06;I)V

    goto :goto_30

    :cond_3d
    invoke-virtual {v0, v5}, Lyads/k55;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Lyads/oe3;

    new-instance v12, Lyads/ob;

    const-wide/16 v16, 0x2710

    const-wide/16 v18, 0x61a8

    move-wide/from16 v20, v18

    invoke-direct/range {v12 .. v22}, Lyads/ob;-><init>(Lyads/f06;[ILyads/vn;JJJLyads/oe3;)V

    move-object v4, v12

    :goto_30
    aput-object v4, v3, v5

    :cond_3e
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_3f
    new-array v0, v1, [Lyads/n65;

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v1, :cond_43

    iget-object v4, v7, Lyads/sw3;->b:[I

    aget v4, v4, v5

    iget-object v6, v2, Lyads/mm0;->Q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, v2, Lyads/o06;->A:Lyads/te3;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lyads/ie3;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_33

    :cond_40
    iget-object v4, v7, Lyads/sw3;->b:[I

    aget v4, v4, v5

    const/4 v6, -0x2

    if-eq v4, v6, :cond_41

    aget-object v4, v3, v5

    if-eqz v4, :cond_42

    :cond_41
    sget-object v4, Lyads/n65;->b:Lyads/n65;

    goto :goto_34

    :cond_42
    :goto_33
    const/4 v4, 0x0

    :goto_34
    aput-object v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_43
    iget-boolean v1, v2, Lyads/mm0;->N:Z

    if-eqz v1, :cond_4e

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    :goto_35
    iget v4, v7, Lyads/sw3;->a:I

    if-ge v5, v4, :cond_4c

    iget-object v4, v7, Lyads/sw3;->b:[I

    aget v4, v4, v5

    aget-object v6, v3, v5

    const/4 v14, 0x1

    const/4 v8, 0x2

    if-eq v4, v14, :cond_45

    if-ne v4, v8, :cond_44

    goto :goto_37

    :cond_44
    move/from16 v14, p0

    :goto_36
    const/4 v4, -0x1

    goto :goto_3b

    :cond_45
    :goto_37
    if-eqz v6, :cond_44

    aget-object v9, v11, v5

    iget-object v10, v7, Lyads/sw3;->c:[Lyads/g06;

    aget-object v10, v10, v5

    invoke-interface {v6}, Lyads/er2;->c()Lyads/f06;

    move-result-object v12

    iget-object v10, v10, Lyads/g06;->c:Lyads/k55;

    invoke-virtual {v10, v12}, Lyads/oe3;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_46

    goto :goto_38

    :cond_46
    const/4 v10, -0x1

    :goto_38
    const/4 v12, 0x0

    :goto_39
    invoke-interface {v6}, Lyads/er2;->length()I

    move-result v13

    if-ge v12, v13, :cond_48

    aget-object v13, v9, v10

    invoke-interface {v6, v12}, Lyads/er2;->b(I)I

    move-result v14

    aget v13, v13, v14

    and-int/lit8 v13, v13, 0x20

    move/from16 v14, p0

    if-eq v13, v14, :cond_47

    goto :goto_36

    :cond_47
    add-int/lit8 v12, v12, 0x1

    move/from16 p0, v14

    goto :goto_39

    :cond_48
    move/from16 v14, p0

    const/4 v12, 0x1

    if-ne v4, v12, :cond_4a

    const/4 v4, -0x1

    if-eq v1, v4, :cond_49

    goto :goto_3a

    :cond_49
    move v1, v5

    goto :goto_3b

    :cond_4a
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4b

    :goto_3a
    const/4 v8, 0x0

    goto :goto_3c

    :cond_4b
    move v2, v5

    :goto_3b
    add-int/lit8 v5, v5, 0x1

    move/from16 p0, v14

    goto :goto_35

    :cond_4c
    const/4 v4, -0x1

    const/4 v8, 0x1

    :goto_3c
    if-eq v1, v4, :cond_4d

    if-eq v2, v4, :cond_4d

    const/4 v4, 0x1

    goto :goto_3d

    :cond_4d
    const/4 v4, 0x0

    :goto_3d
    and-int/2addr v4, v8

    if-eqz v4, :cond_4e

    new-instance v4, Lyads/n65;

    const/4 v14, 0x1

    invoke-direct {v4, v14}, Lyads/n65;-><init>(Z)V

    aput-object v4, v0, v1

    aput-object v4, v0, v2

    goto :goto_3e

    :cond_4e
    const/4 v14, 0x1

    :goto_3e
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lyads/er2;

    array-length v2, v1

    new-array v2, v2, [Ljava/util/List;

    const/4 v5, 0x0

    :goto_3f
    array-length v3, v1

    if-ge v5, v3, :cond_50

    aget-object v3, v1, v5

    if-eqz v3, :cond_4f

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v3

    goto :goto_40

    :cond_4f
    sget-object v3, Lyads/oe3;->c:Lyads/le3;

    sget-object v3, Lyads/k55;->f:Lyads/k55;

    :goto_40
    aput-object v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_50
    new-instance v1, Lyads/ke3;

    invoke-direct {v1}, Lyads/ke3;-><init>()V

    const/4 v5, 0x0

    :goto_41
    iget v3, v7, Lyads/sw3;->a:I

    if-ge v5, v3, :cond_57

    iget-object v3, v7, Lyads/sw3;->c:[Lyads/g06;

    aget-object v3, v3, v5

    aget-object v4, v2, v5

    const/4 v6, 0x0

    :goto_42
    iget v8, v3, Lyads/g06;->b:I

    if-ge v6, v8, :cond_56

    invoke-virtual {v3, v6}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v8

    invoke-virtual {v7, v5, v6}, Lyads/sw3;->a(II)I

    move-result v9

    if-eqz v9, :cond_51

    move v9, v14

    goto :goto_43

    :cond_51
    const/4 v9, 0x0

    :goto_43
    iget v10, v8, Lyads/f06;->b:I

    new-array v11, v10, [I

    new-array v10, v10, [Z

    const/4 v12, 0x0

    :goto_44
    iget v13, v8, Lyads/f06;->b:I

    if-ge v12, v13, :cond_55

    iget-object v13, v7, Lyads/sw3;->e:[[[I

    aget-object v13, v13, v5

    aget-object v13, v13, v6

    aget v13, v13, v12

    and-int/lit8 v13, v13, 0x7

    aput v13, v11, v12

    const/4 v13, 0x0

    :goto_45
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_54

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lyads/er2;

    invoke-interface {v15}, Lyads/er2;->c()Lyads/f06;

    move-result-object v14

    invoke-virtual {v14, v8}, Lyads/f06;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_52

    invoke-interface {v15, v12}, Lyads/er2;->c(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_53

    const/4 v13, 0x1

    goto :goto_46

    :cond_52
    const/4 v15, -0x1

    :cond_53
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_45

    :cond_54
    const/4 v15, -0x1

    const/4 v13, 0x0

    :goto_46
    aput-boolean v13, v10, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    goto :goto_44

    :cond_55
    const/4 v15, -0x1

    new-instance v12, Lyads/l16;

    invoke-direct {v12, v8, v9, v11, v10}, Lyads/l16;-><init>(Lyads/f06;Z[I[Z)V

    invoke-virtual {v1, v12}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x1

    goto :goto_42

    :cond_56
    const/4 v15, -0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x1

    goto :goto_41

    :cond_57
    iget-object v2, v7, Lyads/sw3;->f:Lyads/g06;

    const/4 v5, 0x0

    :goto_47
    iget v3, v2, Lyads/g06;->b:I

    if-ge v5, v3, :cond_58

    invoke-virtual {v2, v5}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v3

    iget v4, v3, Lyads/f06;->b:I

    new-array v4, v4, [I

    const/4 v12, 0x0

    invoke-static {v4, v12}, Ljava/util/Arrays;->fill([II)V

    iget v6, v3, Lyads/f06;->b:I

    new-array v6, v6, [Z

    new-instance v8, Lyads/l16;

    invoke-direct {v8, v3, v12, v4, v6}, Lyads/l16;-><init>(Lyads/f06;Z[I[Z)V

    invoke-virtual {v1, v8}, Lyads/ke3;->a(Ljava/lang/Object;)Lyads/ke3;

    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_58
    new-instance v2, Lyads/m16;

    invoke-virtual {v1}, Lyads/ke3;->a()Lyads/k55;

    move-result-object v1

    invoke-direct {v2, v1}, Lyads/m16;-><init>(Lyads/oe3;)V

    new-instance v1, Lyads/q06;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [Lyads/n65;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Lyads/er2;

    invoke-direct {v1, v3, v0, v2, v7}, Lyads/q06;-><init>([Lyads/n65;[Lyads/er2;Lyads/m16;Lyads/sw3;)V

    return-object v1

    :cond_59
    invoke-static {}, Lud;->g()V

    goto/16 :goto_28

    :goto_48
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
