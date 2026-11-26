.class public final Luu6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[Lw57;


# instance fields
.field public final a:Lkl2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lw57;

    sput-object v0, Luu6;->b:[Lw57;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkl2;

    invoke-direct {v0}, Lkl2;-><init>()V

    iput-object v0, p0, Luu6;->a:Lkl2;

    return-void
.end method


# virtual methods
.method public final a(Loi0;Ljava/util/Map;)Ln57;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loi0;",
            "Ljava/util/Map<",
            "Lnd2;",
            "*>;)",
            "Ln57;"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x3

    move-object/from16 v3, p0

    iget-object v3, v3, Luu6;->a:Lkl2;

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_16

    sget-object v9, Lnd2;->PURE_BARCODE:Lnd2;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual/range {p1 .. p1}, Loi0;->a()Lqi0;

    move-result-object v9

    iget-object v10, v9, Lqi0;->e:[I

    move v11, v8

    :goto_0
    iget v12, v9, Lqi0;->d:I

    array-length v13, v10

    if-ge v11, v13, :cond_0

    aget v13, v10, v11

    if-nez v13, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    array-length v13, v10

    if-ne v11, v13, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    div-int v13, v11, v12

    rem-int v14, v11, v12

    mul-int/lit8 v14, v14, 0x20

    aget v11, v10, v11

    move v15, v8

    :goto_1
    rsub-int/lit8 v16, v15, 0x1f

    shl-int v16, v11, v16

    if-nez v16, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v14, v15

    filled-new-array {v14, v13}, [I

    move-result-object v11

    :goto_2
    array-length v13, v10

    sub-int/2addr v13, v6

    :goto_3
    if-ltz v13, :cond_3

    aget v14, v10, v13

    if-nez v14, :cond_3

    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_3
    if-gez v13, :cond_4

    const/4 v7, 0x0

    goto :goto_5

    :cond_4
    div-int v7, v13, v12

    rem-int v12, v13, v12

    mul-int/lit8 v12, v12, 0x20

    aget v10, v10, v13

    const/16 v13, 0x1f

    :goto_4
    ushr-int v14, v10, v13

    if-nez v14, :cond_5

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_5
    add-int/2addr v12, v13

    filled-new-array {v12, v7}, [I

    move-result-object v7

    :goto_5
    if-eqz v11, :cond_15

    if-eqz v7, :cond_15

    iget v10, v9, Lqi0;->c:I

    iget v12, v9, Lqi0;->b:I

    aget v13, v11, v8

    aget v14, v11, v6

    move v15, v6

    move/from16 v16, v8

    :goto_6
    if-ge v13, v12, :cond_8

    if-ge v14, v10, :cond_8

    const/high16 p0, 0x40000000    # 2.0f

    invoke-virtual {v9, v13, v14}, Lqi0;->c(II)Z

    move-result v4

    if-eq v15, v4, :cond_7

    add-int/lit8 v4, v16, 0x1

    if-ne v4, v5, :cond_6

    goto :goto_7

    :cond_6
    xor-int/lit8 v15, v15, 0x1

    move/from16 v16, v4

    :cond_7
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_8
    const/high16 p0, 0x40000000    # 2.0f

    :goto_7
    if-eq v13, v12, :cond_14

    if-eq v14, v10, :cond_14

    aget v4, v11, v8

    sub-int/2addr v13, v4

    int-to-float v5, v13

    const/high16 v10, 0x40e00000    # 7.0f

    div-float/2addr v5, v10

    aget v10, v11, v6

    aget v11, v7, v6

    aget v7, v7, v8

    if-ge v4, v7, :cond_13

    if-ge v10, v11, :cond_13

    sub-int v12, v11, v10

    sub-int v13, v7, v4

    if-eq v12, v13, :cond_9

    add-int v7, v4, v12

    :cond_9
    sub-int v13, v7, v4

    add-int/2addr v13, v6

    int-to-float v13, v13

    div-float/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    add-int/2addr v12, v6

    int-to-float v6, v12

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v13, :cond_12

    if-lez v6, :cond_12

    if-ne v6, v13, :cond_11

    div-float v12, v5, p0

    float-to-int v12, v12

    add-int/2addr v10, v12

    add-int/2addr v4, v12

    add-int/lit8 v14, v13, -0x1

    int-to-float v14, v14

    mul-float/2addr v14, v5

    float-to-int v14, v14

    add-int/2addr v14, v4

    sub-int/2addr v14, v7

    if-lez v14, :cond_b

    if-gt v14, v12, :cond_a

    sub-int/2addr v4, v14

    goto :goto_8

    :cond_a
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_b
    :goto_8
    add-int/lit8 v7, v6, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    add-int/2addr v7, v10

    sub-int/2addr v7, v11

    if-lez v7, :cond_d

    if-gt v7, v12, :cond_c

    sub-int/2addr v10, v7

    goto :goto_9

    :cond_c
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_d
    :goto_9
    new-instance v7, Lqi0;

    invoke-direct {v7, v13, v6}, Lqi0;-><init>(II)V

    move v11, v8

    :goto_a
    if-ge v11, v6, :cond_10

    int-to-float v12, v11

    mul-float/2addr v12, v5

    float-to-int v12, v12

    add-int/2addr v12, v10

    move v14, v8

    :goto_b
    if-ge v14, v13, :cond_f

    int-to-float v15, v14

    mul-float/2addr v15, v5

    float-to-int v15, v15

    add-int/2addr v15, v4

    invoke-virtual {v9, v15, v12}, Lqi0;->c(II)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v7, v14, v11}, Lqi0;->d(II)V

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_10
    invoke-virtual {v3, v7, v0}, Lkl2;->a(Lqi0;Ljava/util/Map;)Lvd2;

    move-result-object v0

    sget-object v3, Luu6;->b:[Lw57;

    move v1, v2

    goto/16 :goto_35

    :cond_11
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_12
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_13
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_14
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_15
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_16
    const/high16 p0, 0x40000000    # 2.0f

    new-instance v4, Lbm2;

    invoke-virtual/range {p1 .. p1}, Loi0;->a()Lqi0;

    move-result-object v9

    iget v10, v9, Lqi0;->c:I

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v9, v4, Lbm2;->a:Ljava/lang/Object;

    if-nez v0, :cond_17

    const/4 v11, 0x0

    goto :goto_c

    :cond_17
    sget-object v11, Lnd2;->NEED_RESULT_POINT_CALLBACK:Lnd2;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lx57;

    :goto_c
    iput-object v11, v4, Lbm2;->b:Ljava/lang/Object;

    new-instance v12, Lta3;

    invoke-direct {v12, v9, v11}, Lta3;-><init>(Lqi0;Lx57;)V

    if-eqz v0, :cond_18

    sget-object v11, Lnd2;->TRY_HARDER:Lnd2;

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    move v11, v6

    goto :goto_d

    :cond_18
    move v11, v8

    :goto_d
    if-eqz v0, :cond_19

    sget-object v13, Lnd2;->PURE_BARCODE:Lnd2;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    move v13, v6

    goto :goto_e

    :cond_19
    move v13, v8

    :goto_e
    iget v14, v9, Lqi0;->b:I

    mul-int/lit8 v15, v10, 0x3

    div-int/lit16 v15, v15, 0xe4

    if-lt v15, v2, :cond_1a

    if-eqz v11, :cond_1b

    :cond_1a
    move v15, v2

    :cond_1b
    new-array v5, v5, [I

    add-int/lit8 v11, v15, -0x1

    move/from16 v16, v8

    :goto_f
    const/4 v7, 0x4

    move/from16 v18, v8

    iget-object v8, v12, Lta3;->b:Ljava/util/ArrayList;

    if-ge v11, v10, :cond_2b

    if-nez v16, :cond_2b

    aput v18, v5, v18

    aput v18, v5, v6

    aput v18, v5, v1

    aput v18, v5, v2

    aput v18, v5, v7

    move/from16 v19, v2

    move/from16 v1, v18

    move v2, v1

    :goto_10
    if-ge v2, v14, :cond_28

    invoke-virtual {v9, v2, v11}, Lqi0;->c(II)Z

    move-result v21

    if-eqz v21, :cond_1d

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v6, :cond_1c

    add-int/lit8 v1, v1, 0x1

    :cond_1c
    aget v7, v5, v1

    add-int/2addr v7, v6

    aput v7, v5, v1

    move/from16 v21, v6

    goto/16 :goto_16

    :cond_1d
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_27

    const/4 v7, 0x4

    if-ne v1, v7, :cond_26

    invoke-static {v5}, Lta3;->b([I)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v12, v5, v11, v2, v13}, Lta3;->d([IIIZ)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, v12, Lta3;->c:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v12}, Lta3;->e()Z

    move-result v16

    const/16 v20, 0x2

    goto :goto_14

    :cond_1e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v6, :cond_1f

    move/from16 v1, v18

    const/16 v20, 0x2

    goto :goto_13

    :cond_1f
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v7, 0x0

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsa3;

    iget v6, v15, Lsa3;->d:I

    move-object/from16 v22, v1

    const/4 v1, 0x2

    if-lt v6, v1, :cond_21

    if-nez v7, :cond_20

    move-object v7, v15

    const/16 v20, 0x2

    goto :goto_12

    :cond_20
    const/4 v1, 0x1

    iput-boolean v1, v12, Lta3;->c:Z

    iget v1, v7, Lw57;->a:F

    iget v6, v15, Lw57;->a:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v6, v7, Lw57;->b:F

    iget v7, v15, Lw57;->b:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v1, v6

    float-to-int v1, v1

    const/16 v20, 0x2

    div-int/lit8 v1, v1, 0x2

    goto :goto_13

    :cond_21
    move/from16 v20, v1

    :goto_12
    move-object/from16 v1, v22

    const/4 v6, 0x1

    goto :goto_11

    :cond_22
    const/16 v20, 0x2

    move/from16 v1, v18

    :goto_13
    aget v6, v5, v20

    if-le v1, v6, :cond_23

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v11, v1

    add-int/lit8 v2, v14, -0x1

    :cond_23
    :goto_14
    aput v18, v5, v18

    const/16 v21, 0x1

    aput v18, v5, v21

    aput v18, v5, v20

    aput v18, v5, v19

    const/4 v7, 0x4

    aput v18, v5, v7

    move/from16 v1, v18

    move/from16 v15, v20

    goto :goto_16

    :cond_24
    move/from16 v21, v6

    const/4 v7, 0x4

    const/16 v20, 0x2

    aget v1, v5, v20

    aput v1, v5, v18

    aget v1, v5, v19

    aput v1, v5, v21

    aget v1, v5, v7

    aput v1, v5, v20

    aput v21, v5, v19

    aput v18, v5, v7

    :goto_15
    move/from16 v1, v19

    goto :goto_16

    :cond_25
    move/from16 v21, v6

    const/4 v7, 0x4

    const/16 v20, 0x2

    aget v1, v5, v20

    aput v1, v5, v18

    aget v1, v5, v19

    aput v1, v5, v21

    aget v1, v5, v7

    aput v1, v5, v20

    aput v21, v5, v19

    aput v18, v5, v7

    goto :goto_15

    :cond_26
    move/from16 v21, v6

    add-int/lit8 v1, v1, 0x1

    aget v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v1

    goto :goto_16

    :cond_27
    move/from16 v21, v6

    aget v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v1

    :goto_16
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x4

    goto/16 :goto_10

    :cond_28
    invoke-static {v5}, Lta3;->b([I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v12, v5, v11, v14, v13}, Lta3;->d([IIIZ)Z

    move-result v1

    if-eqz v1, :cond_2a

    aget v1, v5, v18

    iget-boolean v2, v12, Lta3;->c:Z

    if-eqz v2, :cond_29

    invoke-virtual {v12}, Lta3;->e()Z

    move-result v2

    move v15, v1

    move/from16 v16, v2

    goto :goto_17

    :cond_29
    move v15, v1

    :cond_2a
    :goto_17
    add-int/2addr v11, v15

    move/from16 v8, v18

    move/from16 v2, v19

    const/4 v1, 0x2

    const/4 v6, 0x1

    goto/16 :goto_f

    :cond_2b
    move/from16 v19, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v2, v19

    if-lt v1, v2, :cond_56

    const/4 v5, 0x0

    if-le v1, v2, :cond_2e

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v6, v5

    move v7, v6

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsa3;

    iget v11, v11, Lsa3;->c:F

    add-float/2addr v6, v11

    mul-float/2addr v11, v11

    add-float/2addr v7, v11

    goto :goto_18

    :cond_2c
    int-to-float v1, v1

    div-float/2addr v6, v1

    div-float/2addr v7, v1

    mul-float v1, v6, v6

    sub-float/2addr v7, v1

    float-to-double v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v2, Lta3$b;

    invoke-direct {v2, v6}, Lta3$b;-><init>(F)V

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move/from16 v2, v18

    :goto_19
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x3

    if-le v7, v11, :cond_2e

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsa3;

    iget v7, v7, Lsa3;->c:F

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v1

    if-lez v7, :cond_2d

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_2d
    const/16 v21, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_30

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsa3;

    iget v6, v6, Lsa3;->c:F

    add-float/2addr v2, v6

    goto :goto_1a

    :cond_2f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    new-instance v1, Lta3$a;

    invoke-direct {v1, v2}, Lta3$a;-><init>(F)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v8, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_30
    move/from16 v1, v18

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsa3;

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsa3;

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsa3;

    filled-new-array {v2, v7, v8}, [Lsa3;

    move-result-object v2

    aget-object v7, v2, v1

    aget-object v8, v2, v6

    invoke-static {v7, v8}, Lw57;->a(Lw57;Lw57;)F

    move-result v7

    aget-object v8, v2, v6

    aget-object v12, v2, v11

    invoke-static {v8, v12}, Lw57;->a(Lw57;Lw57;)F

    move-result v8

    aget-object v12, v2, v1

    aget-object v13, v2, v11

    invoke-static {v12, v13}, Lw57;->a(Lw57;Lw57;)F

    move-result v12

    cmpl-float v13, v8, v7

    if-ltz v13, :cond_31

    cmpl-float v13, v8, v12

    if-ltz v13, :cond_31

    aget-object v7, v2, v1

    aget-object v8, v2, v6

    aget-object v12, v2, v11

    goto :goto_1b

    :cond_31
    cmpl-float v8, v12, v8

    if-ltz v8, :cond_32

    cmpl-float v7, v12, v7

    if-ltz v7, :cond_32

    aget-object v7, v2, v6

    aget-object v8, v2, v1

    aget-object v12, v2, v11

    goto :goto_1b

    :cond_32
    aget-object v7, v2, v11

    aget-object v8, v2, v1

    aget-object v12, v2, v6

    :goto_1b
    iget v1, v7, Lw57;->a:F

    iget v6, v7, Lw57;->b:F

    iget v11, v12, Lw57;->a:F

    sub-float/2addr v11, v1

    iget v13, v8, Lw57;->b:F

    sub-float/2addr v13, v6

    mul-float/2addr v13, v11

    iget v11, v12, Lw57;->b:F

    sub-float/2addr v11, v6

    iget v15, v8, Lw57;->a:F

    sub-float/2addr v15, v1

    mul-float/2addr v15, v11

    sub-float/2addr v13, v15

    cmpg-float v1, v13, v5

    if-gez v1, :cond_33

    move-object/from16 v18, v12

    move-object v12, v8

    move-object/from16 v8, v18

    :cond_33
    const/16 v18, 0x0

    aput-object v8, v2, v18

    const/16 v21, 0x1

    aput-object v7, v2, v21

    const/16 v20, 0x2

    aput-object v12, v2, v20

    invoke-virtual {v4, v7, v12}, Lbm2;->a(Lsa3;Lsa3;)F

    move-result v1

    iget v2, v7, Lw57;->a:F

    iget v11, v12, Lw57;->b:F

    iget v13, v12, Lw57;->a:F

    invoke-virtual {v4, v7, v8}, Lbm2;->a(Lsa3;Lsa3;)F

    move-result v15

    move/from16 v16, v5

    iget v5, v8, Lw57;->b:F

    move/from16 v22, v1

    iget v1, v8, Lw57;->a:F

    add-float v15, v15, v22

    div-float v15, v15, p0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpg-float v23, v15, v22

    if-ltz v23, :cond_55

    invoke-static {v7, v12}, Lw57;->a(Lw57;Lw57;)F

    move-result v23

    div-float v23, v23, v15

    cmpg-float v24, v23, v16

    const/high16 v25, -0x41000000    # -0.5f

    const/high16 v26, 0x3f000000    # 0.5f

    if-gez v24, :cond_34

    move/from16 v24, v25

    :goto_1c
    move/from16 p0, v1

    goto :goto_1d

    :cond_34
    move/from16 v24, v26

    goto :goto_1c

    :goto_1d
    add-float v1, v23, v24

    float-to-int v1, v1

    invoke-static {v7, v8}, Lw57;->a(Lw57;Lw57;)F

    move-result v23

    div-float v23, v23, v15

    cmpg-float v24, v23, v16

    if-gez v24, :cond_35

    :goto_1e
    move/from16 v24, v1

    goto :goto_1f

    :cond_35
    move/from16 v25, v26

    goto :goto_1e

    :goto_1f
    add-float v1, v23, v25

    float-to-int v1, v1

    add-int v1, v1, v24

    move/from16 v23, v1

    const/4 v1, 0x2

    div-int/lit8 v23, v23, 0x2

    add-int/lit8 v24, v23, 0x7

    move/from16 v25, v5

    and-int/lit8 v5, v24, 0x3

    if-eqz v5, :cond_38

    if-eq v5, v1, :cond_37

    const/4 v1, 0x3

    if-eq v5, v1, :cond_36

    :goto_20
    move/from16 v1, v24

    goto :goto_21

    :cond_36
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_37
    add-int/lit8 v24, v23, 0x6

    goto :goto_20

    :cond_38
    add-int/lit8 v24, v23, 0x8

    goto :goto_20

    :goto_21
    sget-object v5, Luc9;->e:[I

    rem-int/lit8 v5, v1, 0x4

    move/from16 v23, v11

    const/4 v11, 0x1

    if-ne v5, v11, :cond_54

    add-int/lit8 v5, v1, -0x11

    const/4 v11, 0x4

    :try_start_0
    div-int/2addr v5, v11

    invoke-static {v5}, Luc9;->c(I)Luc9;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 p1, v11

    iget v11, v5, Luc9;->a:I

    mul-int/lit8 v11, v11, 0x4

    add-int/lit8 v11, v11, 0xa

    iget-object v5, v5, Luc9;->b:[I

    array-length v5, v5

    const/high16 v24, 0x40400000    # 3.0f

    if-lez v5, :cond_39

    sub-float v5, v13, v2

    add-float v5, v5, p0

    sub-float v27, v23, v6

    move/from16 v28, v13

    add-float v13, v27, v25

    int-to-float v11, v11

    div-float v11, v24, v11

    sub-float v11, v22, v11

    invoke-static {v5, v2, v11, v2}, Li8;->b(FFFF)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v13, v6, v11, v6}, Li8;->b(FFFF)F

    move-result v11

    float-to-int v11, v11

    move/from16 v22, v2

    const/4 v13, 0x4

    :goto_22
    const/16 v2, 0x10

    if-gt v13, v2, :cond_3a

    int-to-float v2, v13

    :try_start_1
    invoke-virtual {v4, v15, v2, v5, v11}, Lbm2;->b(FFII)Lmc;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_23

    :catch_0
    shl-int/lit8 v13, v13, 0x1

    goto :goto_22

    :cond_39
    move/from16 v22, v2

    move/from16 v28, v13

    :cond_3a
    const/4 v2, 0x0

    :goto_23
    int-to-float v4, v1

    const/high16 v5, 0x40600000    # 3.5f

    sub-float v31, v4, v5

    if-eqz v2, :cond_3b

    iget v4, v2, Lw57;->a:F

    iget v5, v2, Lw57;->b:F

    sub-float v6, v31, v24

    move/from16 v33, v6

    :goto_24
    move/from16 v37, v5

    goto :goto_25

    :cond_3b
    sub-float v13, v28, v22

    add-float v4, v13, p0

    sub-float v11, v23, v6

    add-float v5, v11, v25

    move/from16 v33, v31

    goto :goto_24

    :goto_25
    iget v5, v7, Lw57;->a:F

    iget v6, v7, Lw57;->b:F

    iget v11, v12, Lw57;->a:F

    iget v13, v12, Lw57;->b:F

    iget v15, v8, Lw57;->a:F

    move-object/from16 p0, v2

    iget v2, v8, Lw57;->b:F

    const/high16 v29, 0x40600000    # 3.5f

    const/high16 v30, 0x40600000    # 3.5f

    const/high16 v32, 0x40600000    # 3.5f

    const/high16 v35, 0x40600000    # 3.5f

    move/from16 v34, v33

    move/from16 v36, v31

    move/from16 v39, v2

    invoke-static/range {v29 .. v36}, Lh76;->a(FFFFFFFF)Lh76;

    move-result-object v2

    move/from16 v36, v4

    iget v4, v2, Lh76;->e:F

    move/from16 v17, v4

    iget v4, v2, Lh76;->i:F

    mul-float v22, v17, v4

    move/from16 v23, v4

    iget v4, v2, Lh76;->f:F

    move/from16 v24, v4

    iget v4, v2, Lh76;->h:F

    mul-float v25, v24, v4

    sub-float v22, v22, v25

    move/from16 v25, v4

    iget v4, v2, Lh76;->g:F

    mul-float v27, v24, v4

    move/from16 v28, v4

    iget v4, v2, Lh76;->d:F

    mul-float v29, v4, v23

    sub-float v27, v27, v29

    mul-float v29, v4, v25

    mul-float v30, v17, v28

    sub-float v29, v29, v30

    move/from16 v30, v4

    iget v4, v2, Lh76;->c:F

    mul-float v31, v4, v25

    move/from16 v32, v4

    iget v4, v2, Lh76;->b:F

    mul-float v33, v4, v23

    sub-float v31, v31, v33

    iget v2, v2, Lh76;->a:F

    mul-float v23, v23, v2

    mul-float v33, v32, v28

    sub-float v23, v23, v33

    mul-float v28, v28, v4

    mul-float v25, v25, v2

    sub-float v28, v28, v25

    mul-float v25, v4, v24

    mul-float v33, v32, v17

    sub-float v25, v25, v33

    mul-float v32, v32, v30

    mul-float v24, v24, v2

    sub-float v24, v32, v24

    mul-float v2, v2, v17

    mul-float v4, v4, v30

    sub-float/2addr v2, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v11

    move/from16 v35, v13

    move/from16 v38, v15

    invoke-static/range {v32 .. v39}, Lh76;->a(FFFFFFFF)Lh76;

    move-result-object v4

    iget v5, v4, Lh76;->a:F

    mul-float v6, v5, v22

    iget v11, v4, Lh76;->d:F

    mul-float v13, v11, v31

    add-float/2addr v13, v6

    iget v6, v4, Lh76;->g:F

    mul-float v15, v6, v25

    add-float/2addr v15, v13

    mul-float v13, v5, v27

    mul-float v17, v11, v23

    add-float v17, v17, v13

    mul-float v13, v6, v24

    add-float v13, v13, v17

    mul-float v5, v5, v29

    mul-float v11, v11, v28

    add-float/2addr v11, v5

    mul-float/2addr v6, v2

    add-float/2addr v6, v11

    iget v5, v4, Lh76;->b:F

    mul-float v11, v5, v22

    move/from16 v17, v2

    iget v2, v4, Lh76;->e:F

    mul-float v30, v2, v31

    add-float v30, v30, v11

    iget v11, v4, Lh76;->h:F

    mul-float v32, v11, v25

    add-float v32, v32, v30

    mul-float v30, v5, v27

    mul-float v33, v2, v23

    add-float v33, v33, v30

    mul-float v30, v11, v24

    add-float v30, v30, v33

    mul-float v5, v5, v29

    mul-float v2, v2, v28

    add-float/2addr v2, v5

    mul-float v11, v11, v17

    add-float/2addr v11, v2

    iget v2, v4, Lh76;->c:F

    mul-float v22, v22, v2

    iget v5, v4, Lh76;->f:F

    mul-float v31, v31, v5

    add-float v31, v31, v22

    iget v4, v4, Lh76;->i:F

    mul-float v25, v25, v4

    add-float v25, v25, v31

    mul-float v27, v27, v2

    mul-float v23, v23, v5

    add-float v23, v23, v27

    mul-float v24, v24, v4

    add-float v24, v24, v23

    mul-float v2, v2, v29

    mul-float v5, v5, v28

    add-float/2addr v5, v2

    mul-float v4, v4, v17

    add-float/2addr v4, v5

    if-lez v1, :cond_53

    if-lez v1, :cond_53

    new-instance v2, Lqi0;

    invoke-direct {v2, v1, v1}, Lqi0;-><init>(II)V

    mul-int/lit8 v5, v1, 0x2

    move/from16 v17, v4

    new-array v4, v5, [F

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v1, :cond_4c

    move/from16 v23, v1

    int-to-float v1, v4

    add-float v1, v1, v26

    move/from16 v27, v1

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v5, :cond_3c

    move/from16 v28, v1

    div-int/lit8 v1, v28, 0x2

    int-to-float v1, v1

    add-float v1, v1, v26

    aput v1, v22, v28

    add-int/lit8 v1, v28, 0x1

    aput v27, v22, v1

    add-int/lit8 v1, v28, 0x2

    goto :goto_27

    :cond_3c
    const/4 v1, 0x0

    :goto_28
    if-ge v1, v5, :cond_3d

    aget v27, v22, v1

    add-int/lit8 v28, v1, 0x1

    aget v29, v22, v28

    mul-float v31, v25, v27

    mul-float v33, v24, v29

    add-float v33, v33, v31

    add-float v33, v33, v17

    mul-float v31, v15, v27

    mul-float v34, v13, v29

    add-float v34, v34, v31

    add-float v34, v34, v6

    div-float v34, v34, v33

    aput v34, v22, v1

    mul-float v27, v27, v32

    mul-float v29, v29, v30

    add-float v29, v29, v27

    add-float v29, v29, v11

    div-float v29, v29, v33

    aput v29, v22, v28

    add-int/lit8 v1, v1, 0x2

    goto :goto_28

    :cond_3d
    move/from16 v28, v6

    const/4 v1, 0x0

    const/16 v27, 0x1

    :goto_29
    if-ge v1, v5, :cond_43

    if-eqz v27, :cond_43

    aget v6, v22, v1

    float-to-int v6, v6

    add-int/lit8 v29, v1, 0x1

    move/from16 v31, v1

    aget v1, v22, v29

    float-to-int v1, v1

    move-object/from16 v33, v7

    const/4 v7, -0x1

    if-lt v6, v7, :cond_42

    if-gt v6, v14, :cond_42

    if-lt v1, v7, :cond_42

    if-gt v1, v10, :cond_42

    if-ne v6, v7, :cond_3e

    aput v16, v22, v31

    :goto_2a
    const/4 v6, 0x1

    goto :goto_2b

    :cond_3e
    if-ne v6, v14, :cond_3f

    add-int/lit8 v6, v14, -0x1

    int-to-float v6, v6

    aput v6, v22, v31

    goto :goto_2a

    :cond_3f
    const/4 v6, 0x0

    :goto_2b
    if-ne v1, v7, :cond_40

    aput v16, v22, v29

    :goto_2c
    const/16 v27, 0x1

    goto :goto_2d

    :cond_40
    if-ne v1, v10, :cond_41

    add-int/lit8 v1, v10, -0x1

    int-to-float v1, v1

    aput v1, v22, v29

    goto :goto_2c

    :cond_41
    move/from16 v27, v6

    :goto_2d
    add-int/lit8 v1, v31, 0x2

    move-object/from16 v7, v33

    goto :goto_29

    :cond_42
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_43
    move-object/from16 v33, v7

    add-int/lit8 v1, v5, -0x2

    const/4 v6, 0x1

    :goto_2e
    if-ltz v1, :cond_49

    if-eqz v6, :cond_49

    aget v6, v22, v1

    float-to-int v6, v6

    add-int/lit8 v7, v1, 0x1

    move/from16 v29, v1

    aget v1, v22, v7

    float-to-int v1, v1

    move/from16 v31, v7

    const/4 v7, -0x1

    if-lt v6, v7, :cond_48

    if-gt v6, v14, :cond_48

    if-lt v1, v7, :cond_48

    if-gt v1, v10, :cond_48

    if-ne v6, v7, :cond_44

    aput v16, v22, v29

    :goto_2f
    const/4 v6, 0x1

    goto :goto_30

    :cond_44
    if-ne v6, v14, :cond_45

    add-int/lit8 v6, v14, -0x1

    int-to-float v6, v6

    aput v6, v22, v29

    goto :goto_2f

    :cond_45
    const/4 v6, 0x0

    :goto_30
    if-ne v1, v7, :cond_46

    aput v16, v22, v31

    :goto_31
    const/4 v6, 0x1

    goto :goto_32

    :cond_46
    if-ne v1, v10, :cond_47

    add-int/lit8 v1, v10, -0x1

    int-to-float v1, v1

    aput v1, v22, v31

    goto :goto_31

    :cond_47
    :goto_32
    add-int/lit8 v1, v29, -0x2

    goto :goto_2e

    :cond_48
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_49
    const/4 v1, 0x0

    :goto_33
    if-ge v1, v5, :cond_4b

    :try_start_2
    aget v6, v22, v1

    float-to-int v6, v6

    add-int/lit8 v7, v1, 0x1

    aget v7, v22, v7

    float-to-int v7, v7

    invoke-virtual {v9, v6, v7}, Lqi0;->c(II)Z

    move-result v6

    if-eqz v6, :cond_4a

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v2, v6, v4}, Lqi0;->d(II)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4a
    add-int/lit8 v1, v1, 0x2

    goto :goto_33

    :catch_1
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v23

    move/from16 v6, v28

    move-object/from16 v7, v33

    goto/16 :goto_26

    :cond_4c
    move-object/from16 v33, v7

    if-nez p0, :cond_4d

    const/4 v1, 0x3

    new-array v4, v1, [Lw57;

    const/16 v18, 0x0

    aput-object v8, v4, v18

    const/16 v21, 0x1

    aput-object v33, v4, v21

    const/16 v20, 0x2

    aput-object v12, v4, v20

    goto :goto_34

    :cond_4d
    const/4 v1, 0x3

    const/4 v7, 0x4

    const/16 v18, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x1

    new-array v4, v7, [Lw57;

    aput-object v8, v4, v18

    aput-object v33, v4, v21

    aput-object v12, v4, v20

    aput-object p0, v4, v1

    :goto_34
    invoke-virtual {v3, v2, v0}, Lkl2;->a(Lqi0;Ljava/util/Map;)Lvd2;

    move-result-object v0

    move-object v3, v4

    :goto_35
    iget v2, v0, Lvd2;->e:I

    iget-object v4, v0, Lvd2;->d:Lm00;

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v3

    if-ge v4, v1, :cond_4e

    goto :goto_36

    :cond_4e
    const/16 v18, 0x0

    aget-object v1, v3, v18

    const/16 v20, 0x2

    aget-object v4, v3, v20

    aput-object v4, v3, v18

    aput-object v1, v3, v20

    :cond_4f
    :goto_36
    new-instance v1, Ln57;

    iget-object v4, v0, Lvd2;->a:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Ln57;-><init>(Ljava/lang/String;[Lw57;)V

    iget-object v3, v0, Lvd2;->b:Ljava/util/List;

    if-eqz v3, :cond_50

    sget-object v4, Lu57;->BYTE_SEGMENTS:Lu57;

    invoke-virtual {v1, v4, v3}, Ln57;->a(Lu57;Ljava/lang/Object;)V

    :cond_50
    iget-object v3, v0, Lvd2;->c:Ljava/lang/String;

    if-eqz v3, :cond_51

    sget-object v4, Lu57;->ERROR_CORRECTION_LEVEL:Lu57;

    invoke-virtual {v1, v4, v3}, Ln57;->a(Lu57;Ljava/lang/Object;)V

    :cond_51
    if-ltz v2, :cond_52

    iget v0, v0, Lvd2;->f:I

    if-ltz v0, :cond_52

    sget-object v3, Lu57;->STRUCTURED_APPEND_SEQUENCE:Lu57;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ln57;->a(Lu57;Ljava/lang/Object;)V

    sget-object v0, Lu57;->STRUCTURED_APPEND_PARITY:Lu57;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ln57;->a(Lu57;Ljava/lang/Object;)V

    :cond_52
    return-object v1

    :cond_53
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :catch_2
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_54
    invoke-static {}, Lcom/google/zxing/FormatException;->a()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_55
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0

    :cond_56
    sget-object v0, Lcom/google/zxing/NotFoundException;->d:Lcom/google/zxing/NotFoundException;

    throw v0
.end method
