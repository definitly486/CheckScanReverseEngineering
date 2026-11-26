.class public final Lyads/dp5;
.super Lyads/vk5;
.source "SourceFile"


# instance fields
.field public final a:Lyads/os4;

.field public final b:Lyads/ns4;

.field public c:Lyads/vx5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyads/vk5;-><init>()V

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/dp5;->a:Lyads/os4;

    new-instance v0, Lyads/ns4;

    invoke-direct {v0}, Lyads/ns4;-><init>()V

    iput-object v0, p0, Lyads/dp5;->b:Lyads/ns4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/j84;Ljava/nio/ByteBuffer;)Lyads/h84;
    .locals 54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lyads/dp5;->c:Lyads/vx5;

    if-eqz v2, :cond_0

    iget-wide v3, v1, Lyads/j84;->i:J

    monitor-enter v2

    :try_start_0
    iget-wide v5, v2, Lyads/vx5;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :goto_0
    new-instance v2, Lyads/vx5;

    iget-wide v3, v1, Lyads/mi0;->f:J

    invoke-direct {v2, v3, v4}, Lyads/vx5;-><init>(J)V

    iput-object v2, v0, Lyads/dp5;->c:Lyads/vx5;

    iget-wide v3, v1, Lyads/mi0;->f:J

    iget-wide v5, v1, Lyads/j84;->i:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lyads/vx5;->a(J)J

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    iget-object v3, v0, Lyads/dp5;->a:Lyads/os4;

    iput-object v1, v3, Lyads/os4;->a:[B

    iput v2, v3, Lyads/os4;->c:I

    const/4 v4, 0x0

    iput v4, v3, Lyads/os4;->b:I

    iget-object v3, v0, Lyads/dp5;->b:Lyads/ns4;

    invoke-virtual {v3, v1, v2}, Lyads/ns4;->b([BI)V

    iget-object v1, v0, Lyads/dp5;->b:Lyads/ns4;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Lyads/ns4;->c(I)V

    iget-object v1, v0, Lyads/dp5;->b:Lyads/ns4;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lyads/ns4;->a(I)I

    move-result v1

    int-to-long v5, v1

    const/16 v1, 0x20

    shl-long/2addr v5, v1

    iget-object v3, v0, Lyads/dp5;->b:Lyads/ns4;

    invoke-virtual {v3, v1}, Lyads/ns4;->a(I)I

    move-result v3

    int-to-long v7, v3

    or-long v13, v5, v7

    iget-object v3, v0, Lyads/dp5;->b:Lyads/ns4;

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Lyads/ns4;->c(I)V

    iget-object v3, v0, Lyads/dp5;->b:Lyads/ns4;

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lyads/ns4;->a(I)I

    move-result v3

    iget-object v5, v0, Lyads/dp5;->b:Lyads/ns4;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lyads/ns4;->a(I)I

    move-result v5

    iget-object v6, v0, Lyads/dp5;->a:Lyads/os4;

    iget v7, v6, Lyads/os4;->b:I

    add-int/lit8 v7, v7, 0xe

    invoke-virtual {v6, v7}, Lyads/os4;->e(I)V

    if-eqz v5, :cond_1d

    const/16 v6, 0xff

    const/4 v7, 0x4

    if-eq v5, v6, :cond_1c

    const-wide/16 v15, 0x1

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x80

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v7, :cond_10

    const/4 v3, 0x5

    if-eq v5, v3, :cond_3

    const/4 v1, 0x6

    if-eq v5, v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    move v1, v4

    goto/16 :goto_1b

    :cond_2
    iget-object v1, v0, Lyads/dp5;->a:Lyads/os4;

    iget-object v0, v0, Lyads/dp5;->c:Lyads/vx5;

    invoke-static {v1, v13, v14}, Lyads/dx5;->a(Lyads/os4;J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lyads/vx5;->b(J)J

    move-result-wide v0

    new-instance v3, Lyads/dx5;

    invoke-direct {v3, v5, v6, v0, v1}, Lyads/dx5;-><init>(JJ)V

    move-object v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lyads/dp5;->a:Lyads/os4;

    iget-object v0, v0, Lyads/dp5;->c:Lyads/vx5;

    invoke-virtual {v3}, Lyads/os4;->l()J

    move-result-wide v24

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_4

    move/from16 v26, v2

    goto :goto_2

    :cond_4
    move/from16 v26, v4

    :goto_2
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-nez v26, :cond_f

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    and-int/lit8 v12, v6, 0x40

    if-eqz v12, :cond_6

    move v12, v2

    goto :goto_4

    :cond_6
    move v12, v4

    :goto_4
    and-int/lit8 v23, v6, 0x20

    if-eqz v23, :cond_7

    move/from16 v23, v2

    goto :goto_5

    :cond_7
    move/from16 v23, v4

    :goto_5
    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_8

    move v6, v2

    goto :goto_6

    :cond_8
    move v6, v4

    :goto_6
    if-eqz v12, :cond_9

    if-nez v6, :cond_9

    invoke-static {v3, v13, v14}, Lyads/dx5;->a(Lyads/os4;J)J

    move-result-wide v27

    goto :goto_7

    :cond_9
    move-wide/from16 v27, v21

    :goto_7
    if-nez v12, :cond_c

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v5

    move/from16 p1, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v4

    const-wide/16 v29, 0x5a

    :goto_8
    if-ge v8, v5, :cond_b

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v32

    if-nez v6, :cond_a

    invoke-static {v3, v13, v14}, Lyads/dx5;->a(Lyads/os4;J)J

    move-result-wide v33

    move-wide/from16 v10, v33

    :goto_9
    const-wide/16 v37, 0x3e8

    goto :goto_a

    :cond_a
    move-wide/from16 v10, v21

    goto :goto_9

    :goto_a
    new-instance v31, Lyads/fp5;

    invoke-virtual {v0, v10, v11}, Lyads/vx5;->b(J)J

    move-result-wide v35

    move-wide/from16 v33, v10

    invoke-direct/range {v31 .. v36}, Lyads/fp5;-><init>(IJJ)V

    move-object/from16 v9, v31

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_b
    move-object v5, v1

    :goto_b
    const-wide/16 v37, 0x3e8

    goto :goto_c

    :cond_c
    move/from16 p1, v1

    const-wide/16 v29, 0x5a

    goto :goto_b

    :goto_c
    if-eqz v23, :cond_e

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v1

    int-to-long v8, v1

    and-long v10, v8, v19

    cmp-long v1, v10, v17

    if-eqz v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    move v1, v4

    :goto_d
    and-long/2addr v8, v15

    shl-long v8, v8, p1

    invoke-virtual {v3}, Lyads/os4;->l()J

    move-result-wide v10

    or-long/2addr v8, v10

    mul-long v8, v8, v37

    div-long v21, v8, v29

    goto :goto_e

    :cond_e
    move v1, v4

    :goto_e
    invoke-virtual {v3}, Lyads/os4;->p()I

    move-result v8

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v9

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v3

    move/from16 v35, v1

    move/from16 v40, v3

    move-object/from16 v34, v5

    move/from16 v29, v6

    move/from16 v38, v8

    move/from16 v39, v9

    move-wide/from16 v36, v21

    move-wide/from16 v5, v27

    move/from16 v27, v7

    move/from16 v28, v12

    goto :goto_f

    :cond_f
    move/from16 v27, v4

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v35, v29

    move/from16 v38, v35

    move/from16 v39, v38

    move/from16 v40, v39

    move-object/from16 v34, v5

    move-wide/from16 v5, v21

    move-wide/from16 v36, v5

    :goto_f
    new-instance v23, Lyads/gp5;

    invoke-virtual {v0, v5, v6}, Lyads/vx5;->b(J)J

    move-result-wide v32

    move-wide/from16 v30, v5

    invoke-direct/range {v23 .. v40}, Lyads/gp5;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    move v1, v4

    move-object/from16 v0, v23

    goto/16 :goto_1b

    :cond_10
    move/from16 p1, v1

    const-wide/16 v29, 0x5a

    const-wide/16 v37, 0x3e8

    iget-object v0, v0, Lyads/dp5;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v4

    :goto_10
    if-ge v5, v1, :cond_1b

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v40

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_11

    move/from16 v42, v2

    goto :goto_11

    :cond_11
    move/from16 v42, v4

    :goto_11
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez v42, :cond_1a

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v7

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_12

    move v8, v2

    goto :goto_12

    :cond_12
    move v8, v4

    :goto_12
    and-int/lit8 v9, v7, 0x40

    if-eqz v9, :cond_13

    move v9, v2

    goto :goto_13

    :cond_13
    move v9, v4

    :goto_13
    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_14

    move v7, v2

    goto :goto_14

    :cond_14
    move v7, v4

    :goto_14
    if-eqz v9, :cond_15

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v10

    goto :goto_15

    :cond_15
    move-wide/from16 v10, v21

    :goto_15
    if-nez v9, :cond_17

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v4

    :goto_16
    if-ge v13, v6, :cond_16

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v14

    move/from16 v23, v5

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v4

    move-wide/from16 v24, v15

    new-instance v15, Lyads/kp5;

    invoke-direct {v15, v14, v4, v5}, Lyads/kp5;-><init>(IJ)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v23

    move-wide/from16 v15, v24

    const/4 v4, 0x0

    goto :goto_16

    :cond_16
    move-object v6, v12

    :cond_17
    move/from16 v23, v5

    move-wide/from16 v24, v15

    if-eqz v7, :cond_19

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v4

    int-to-long v4, v4

    and-long v12, v4, v19

    cmp-long v7, v12, v17

    if-eqz v7, :cond_18

    move v7, v2

    goto :goto_17

    :cond_18
    const/4 v7, 0x0

    :goto_17
    and-long v4, v4, v24

    shl-long v4, v4, p1

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v12

    or-long/2addr v4, v12

    mul-long v4, v4, v37

    div-long v4, v4, v29

    goto :goto_18

    :cond_19
    move-wide/from16 v4, v21

    const/4 v7, 0x0

    :goto_18
    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v12

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v13

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v14

    move-wide/from16 v49, v4

    move/from16 v48, v7

    move/from16 v43, v8

    move/from16 v44, v9

    move-wide/from16 v46, v10

    move/from16 v51, v12

    move/from16 v52, v13

    move/from16 v53, v14

    :goto_19
    move-object/from16 v45, v6

    goto :goto_1a

    :cond_1a
    move/from16 v23, v5

    move-wide/from16 v24, v15

    move-wide/from16 v46, v21

    move-wide/from16 v49, v46

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v48, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    goto :goto_19

    :goto_1a
    new-instance v39, Lyads/lp5;

    invoke-direct/range {v39 .. v53}, Lyads/lp5;-><init>(JZZZLjava/util/ArrayList;JZJIII)V

    move-object/from16 v4, v39

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v23, 0x1

    move-wide/from16 v15, v24

    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_1b
    new-instance v0, Lyads/mp5;

    invoke-direct {v0, v3}, Lyads/mp5;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    goto :goto_1b

    :cond_1c
    iget-object v0, v0, Lyads/dp5;->a:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v10

    sub-int/2addr v3, v7

    new-array v12, v3, [B

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1, v3}, Lyads/os4;->a([BII)V

    new-instance v9, Lyads/q05;

    invoke-direct/range {v9 .. v14}, Lyads/q05;-><init>(J[BJ)V

    move-object v0, v9

    goto :goto_1b

    :cond_1d
    move v1, v4

    new-instance v0, Lyads/ip5;

    invoke-direct {v0}, Lyads/ip5;-><init>()V

    :goto_1b
    if-nez v0, :cond_1e

    new-instance v0, Lyads/h84;

    new-array v1, v1, [Lyads/g84;

    invoke-direct {v0, v1}, Lyads/h84;-><init>([Lyads/g84;)V

    return-object v0

    :cond_1e
    new-instance v3, Lyads/h84;

    new-array v2, v2, [Lyads/g84;

    aput-object v0, v2, v1

    invoke-direct {v3, v2}, Lyads/h84;-><init>([Lyads/g84;)V

    return-object v3
.end method
