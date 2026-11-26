.class public final Lta3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lta3$a;,
        Lta3$b;
    }
.end annotation


# instance fields
.field public final a:Lqi0;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public final d:[I

.field public final e:Lx57;


# direct methods
.method public constructor <init>(Lqi0;Lx57;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta3;->a:Lqi0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lta3;->b:Ljava/util/ArrayList;

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lta3;->d:[I

    iput-object p2, p0, Lta3;->e:Lx57;

    return-void
.end method

.method public static a(I[I)F
    .locals 1

    const/4 v0, 0x4

    aget v0, p1, v0

    sub-int/2addr p0, v0

    const/4 v0, 0x3

    aget v0, p1, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/4 v0, 0x2

    aget p1, p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    return p0
.end method

.method public static b([I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    aget v3, p0, v1

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v5, v1, v4

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v2

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    return v3

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final c()[I
    .locals 2

    iget-object p0, p0, Lta3;->d:[I

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v1, 0x4

    aput v0, p0, v1

    return-object p0
.end method

.method public final d([IIIZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v1, v5

    add-int/2addr v3, v6

    const/4 v6, 0x3

    aget v7, v1, v6

    add-int/2addr v3, v7

    const/4 v7, 0x4

    aget v8, v1, v7

    add-int/2addr v3, v8

    move/from16 v8, p3

    invoke-static {v8, v1}, Lta3;->a(I[I)F

    move-result v8

    float-to-int v8, v8

    aget v9, v1, v5

    iget-object v10, v0, Lta3;->a:Lqi0;

    iget v11, v10, Lqi0;->c:I

    iget v12, v10, Lqi0;->b:I

    invoke-virtual {v0}, Lta3;->c()[I

    move-result-object v13

    move/from16 v14, p2

    :goto_0
    if-ltz v14, :cond_0

    invoke-virtual {v10, v8, v14}, Lqi0;->c(II)Z

    move-result v15

    if-eqz v15, :cond_0

    aget v15, v13, v5

    add-int/2addr v15, v4

    aput v15, v13, v5

    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    :cond_0
    const/high16 v15, 0x7fc00000    # Float.NaN

    if-gez v14, :cond_2

    move/from16 v16, v2

    :cond_1
    :goto_1
    move v2, v15

    goto/16 :goto_8

    :cond_2
    :goto_2
    if-ltz v14, :cond_3

    invoke-virtual {v10, v8, v14}, Lqi0;->c(II)Z

    move-result v16

    if-nez v16, :cond_3

    move/from16 v16, v2

    aget v2, v13, v4

    if-gt v2, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    aput v2, v13, v4

    add-int/lit8 v14, v14, -0x1

    move/from16 v2, v16

    goto :goto_2

    :cond_3
    move/from16 v16, v2

    :cond_4
    if-ltz v14, :cond_1

    aget v2, v13, v4

    if-le v2, v9, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    if-ltz v14, :cond_6

    invoke-virtual {v10, v8, v14}, Lqi0;->c(II)Z

    move-result v2

    if-eqz v2, :cond_6

    aget v2, v13, v16

    if-gt v2, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    aput v2, v13, v16

    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    :cond_6
    aget v2, v13, v16

    if-le v2, v9, :cond_7

    :goto_4
    goto :goto_1

    :cond_7
    add-int/lit8 v2, p2, 0x1

    :goto_5
    if-ge v2, v11, :cond_8

    invoke-virtual {v10, v8, v2}, Lqi0;->c(II)Z

    move-result v14

    if-eqz v14, :cond_8

    aget v14, v13, v5

    add-int/2addr v14, v4

    aput v14, v13, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    if-ne v2, v11, :cond_9

    goto :goto_4

    :cond_9
    :goto_6
    if-ge v2, v11, :cond_a

    invoke-virtual {v10, v8, v2}, Lqi0;->c(II)Z

    move-result v14

    if-nez v14, :cond_a

    aget v14, v13, v6

    if-ge v14, v9, :cond_a

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    if-eq v2, v11, :cond_1

    aget v14, v13, v6

    if-lt v14, v9, :cond_b

    goto :goto_1

    :cond_b
    :goto_7
    if-ge v2, v11, :cond_c

    invoke-virtual {v10, v8, v2}, Lqi0;->c(II)Z

    move-result v14

    if-eqz v14, :cond_c

    aget v14, v13, v7

    if-ge v14, v9, :cond_c

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    aget v11, v13, v7

    if-lt v11, v9, :cond_d

    goto :goto_4

    :cond_d
    aget v9, v13, v16

    aget v14, v13, v4

    add-int/2addr v9, v14

    aget v14, v13, v5

    add-int/2addr v9, v14

    aget v14, v13, v6

    add-int/2addr v9, v14

    add-int/2addr v9, v11

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v11, v3, 0x2

    if-lt v9, v11, :cond_e

    goto :goto_4

    :cond_e
    invoke-static {v13}, Lta3;->b([I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v2, v13}, Lta3;->a(I[I)F

    move-result v2

    :goto_8
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_2f

    float-to-int v9, v2

    aget v11, v1, v5

    invoke-virtual {v0}, Lta3;->c()[I

    move-result-object v13

    move v14, v8

    :goto_9
    if-ltz v14, :cond_f

    invoke-virtual {v10, v14, v9}, Lqi0;->c(II)Z

    move-result v17

    if-eqz v17, :cond_f

    aget v17, v13, v5

    add-int/lit8 v17, v17, 0x1

    aput v17, v13, v5

    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    :cond_f
    if-gez v14, :cond_10

    move/from16 v17, v5

    goto/16 :goto_f

    :cond_10
    :goto_a
    if-ltz v14, :cond_11

    invoke-virtual {v10, v14, v9}, Lqi0;->c(II)Z

    move-result v17

    if-nez v17, :cond_11

    move/from16 v17, v5

    aget v5, v13, v4

    if-gt v5, v11, :cond_12

    add-int/lit8 v5, v5, 0x1

    aput v5, v13, v4

    add-int/lit8 v14, v14, -0x1

    move/from16 v5, v17

    goto :goto_a

    :cond_11
    move/from16 v17, v5

    :cond_12
    if-ltz v14, :cond_1d

    aget v5, v13, v4

    if-le v5, v11, :cond_13

    goto/16 :goto_f

    :cond_13
    :goto_b
    if-ltz v14, :cond_14

    invoke-virtual {v10, v14, v9}, Lqi0;->c(II)Z

    move-result v5

    if-eqz v5, :cond_14

    aget v5, v13, v16

    if-gt v5, v11, :cond_14

    add-int/lit8 v5, v5, 0x1

    aput v5, v13, v16

    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    :cond_14
    aget v5, v13, v16

    if-le v5, v11, :cond_15

    goto/16 :goto_f

    :cond_15
    add-int/2addr v8, v4

    :goto_c
    if-ge v8, v12, :cond_16

    invoke-virtual {v10, v8, v9}, Lqi0;->c(II)Z

    move-result v5

    if-eqz v5, :cond_16

    aget v5, v13, v17

    add-int/2addr v5, v4

    aput v5, v13, v17

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    if-ne v8, v12, :cond_17

    goto :goto_f

    :cond_17
    :goto_d
    if-ge v8, v12, :cond_18

    invoke-virtual {v10, v8, v9}, Lqi0;->c(II)Z

    move-result v5

    if-nez v5, :cond_18

    aget v5, v13, v6

    if-ge v5, v11, :cond_18

    add-int/lit8 v5, v5, 0x1

    aput v5, v13, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    if-eq v8, v12, :cond_1d

    aget v5, v13, v6

    if-lt v5, v11, :cond_19

    goto :goto_f

    :cond_19
    :goto_e
    if-ge v8, v12, :cond_1a

    invoke-virtual {v10, v8, v9}, Lqi0;->c(II)Z

    move-result v5

    if-eqz v5, :cond_1a

    aget v5, v13, v7

    if-ge v5, v11, :cond_1a

    add-int/lit8 v5, v5, 0x1

    aput v5, v13, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_1a
    aget v5, v13, v7

    if-lt v5, v11, :cond_1b

    goto :goto_f

    :cond_1b
    aget v11, v13, v16

    aget v14, v13, v4

    add-int/2addr v11, v14

    aget v14, v13, v17

    add-int/2addr v11, v14

    aget v14, v13, v6

    add-int/2addr v11, v14

    add-int/2addr v11, v5

    sub-int/2addr v11, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    if-lt v5, v3, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-static {v13}, Lta3;->b([I)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v8, v13}, Lta3;->a(I[I)F

    move-result v15

    :cond_1d
    :goto_f
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_2f

    if-eqz p4, :cond_2a

    float-to-int v5, v15

    aget v1, v1, v17

    invoke-virtual {v0}, Lta3;->c()[I

    move-result-object v8

    move/from16 v11, v16

    :goto_10
    if-lt v9, v11, :cond_1e

    if-lt v5, v11, :cond_1e

    sub-int v13, v5, v11

    sub-int v14, v9, v11

    invoke-virtual {v10, v13, v14}, Lqi0;->c(II)Z

    move-result v13

    if-eqz v13, :cond_1e

    aget v13, v8, v17

    add-int/2addr v13, v4

    aput v13, v8, v17

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_1e
    if-lt v9, v11, :cond_2f

    if-ge v5, v11, :cond_1f

    goto/16 :goto_17

    :cond_1f
    :goto_11
    if-lt v9, v11, :cond_20

    if-lt v5, v11, :cond_20

    sub-int v13, v5, v11

    sub-int v14, v9, v11

    invoke-virtual {v10, v13, v14}, Lqi0;->c(II)Z

    move-result v13

    if-nez v13, :cond_20

    aget v13, v8, v4

    if-gt v13, v1, :cond_20

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_20
    if-lt v9, v11, :cond_2f

    if-lt v5, v11, :cond_2f

    aget v13, v8, v4

    if-le v13, v1, :cond_21

    goto/16 :goto_17

    :cond_21
    :goto_12
    if-lt v9, v11, :cond_22

    if-lt v5, v11, :cond_22

    sub-int v13, v5, v11

    sub-int v14, v9, v11

    invoke-virtual {v10, v13, v14}, Lqi0;->c(II)Z

    move-result v13

    if-eqz v13, :cond_22

    aget v13, v8, v16

    if-gt v13, v1, :cond_22

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v16

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_22
    aget v11, v8, v16

    if-le v11, v1, :cond_23

    goto/16 :goto_17

    :cond_23
    iget v11, v10, Lqi0;->c:I

    move v13, v4

    :goto_13
    add-int v14, v9, v13

    move/from16 v18, v6

    if-ge v14, v11, :cond_24

    add-int v6, v5, v13

    if-ge v6, v12, :cond_24

    invoke-virtual {v10, v6, v14}, Lqi0;->c(II)Z

    move-result v6

    if-eqz v6, :cond_24

    aget v6, v8, v17

    add-int/2addr v6, v4

    aput v6, v8, v17

    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v18

    goto :goto_13

    :cond_24
    if-ge v14, v11, :cond_2f

    add-int v6, v5, v13

    if-lt v6, v12, :cond_25

    goto/16 :goto_17

    :cond_25
    :goto_14
    add-int v6, v9, v13

    if-ge v6, v11, :cond_26

    add-int v14, v5, v13

    if-ge v14, v12, :cond_26

    invoke-virtual {v10, v14, v6}, Lqi0;->c(II)Z

    move-result v14

    if-nez v14, :cond_26

    aget v14, v8, v18

    if-ge v14, v1, :cond_26

    add-int/lit8 v14, v14, 0x1

    aput v14, v8, v18

    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_26
    if-ge v6, v11, :cond_2f

    add-int v6, v5, v13

    if-ge v6, v12, :cond_2f

    aget v6, v8, v18

    if-lt v6, v1, :cond_27

    goto/16 :goto_17

    :cond_27
    :goto_15
    add-int v6, v9, v13

    if-ge v6, v11, :cond_28

    add-int v14, v5, v13

    if-ge v14, v12, :cond_28

    invoke-virtual {v10, v14, v6}, Lqi0;->c(II)Z

    move-result v6

    if-eqz v6, :cond_28

    aget v6, v8, v7

    if-ge v6, v1, :cond_28

    add-int/lit8 v6, v6, 0x1

    aput v6, v8, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    :cond_28
    aget v5, v8, v7

    if-lt v5, v1, :cond_29

    goto/16 :goto_17

    :cond_29
    aget v1, v8, v16

    aget v6, v8, v4

    add-int/2addr v1, v6

    aget v6, v8, v17

    add-int/2addr v1, v6

    aget v6, v8, v18

    add-int/2addr v1, v6

    add-int/2addr v1, v5

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v5, v3, 0x2

    if-ge v1, v5, :cond_2f

    invoke-static {v8}, Lta3;->b([I)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2a
    int-to-float v1, v3

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v1, v3

    move/from16 v3, v16

    :goto_16
    iget-object v5, v0, Lta3;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2d

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsa3;

    iget v7, v6, Lsa3;->c:F

    iget v8, v6, Lw57;->a:F

    iget v9, v6, Lw57;->b:F

    sub-float v10, v2, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v1

    if-gtz v10, :cond_2c

    sub-float v10, v15, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v10, v10, v1

    if-gtz v10, :cond_2c

    sub-float v10, v1, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-lez v11, :cond_2b

    cmpg-float v7, v10, v7

    if-gtz v7, :cond_2c

    :cond_2b
    iget v0, v6, Lsa3;->d:I

    add-int/lit8 v7, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v8, v0

    add-float/2addr v8, v15

    int-to-float v10, v7

    div-float/2addr v8, v10

    mul-float/2addr v9, v0

    add-float/2addr v9, v2

    div-float/2addr v9, v10

    iget v2, v6, Lsa3;->c:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    div-float/2addr v0, v10

    new-instance v1, Lsa3;

    invoke-direct {v1, v8, v9, v0, v7}, Lsa3;-><init>(FFFI)V

    invoke-virtual {v5, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2d
    new-instance v3, Lsa3;

    invoke-direct {v3, v15, v2, v1, v4}, Lsa3;-><init>(FFFI)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lta3;->e:Lx57;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Lx57;->a()V

    :cond_2e
    return v4

    :cond_2f
    :goto_17
    return v16
.end method

.method public final e()Z
    .locals 9

    iget-object p0, p0, Lta3;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsa3;

    iget v7, v6, Lsa3;->d:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    add-int/lit8 v4, v4, 0x1

    iget v6, v6, Lsa3;->c:F

    add-float/2addr v5, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ge v4, v1, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v0, v0

    div-float v0, v5, v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsa3;

    iget v1, v1, Lsa3;->c:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v3, v1

    goto :goto_1

    :cond_3
    const p0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, p0

    cmpg-float p0, v3, v5

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v2
.end method
