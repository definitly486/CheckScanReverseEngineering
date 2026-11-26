.class public final Lyads/ju;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 33

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Lw65;->a(D)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v1, v1

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Lw65;->a(D)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v0, v7, v11

    new-array v5, v0, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v7, -0x1

    add-int/lit8 v6, v11, -0x1

    new-array v8, v0, [I

    new-array v9, v0, [I

    new-array v0, v0, [I

    if-ge v7, v11, :cond_1

    move v10, v11

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_0
    new-array v10, v10, [I

    const/16 v12, 0x400

    new-array v13, v12, [I

    move v14, v2

    :goto_1
    if-ge v14, v12, :cond_2

    div-int/lit8 v15, v14, 0x4

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x3

    new-array v14, v12, [[I

    move v15, v2

    :goto_2
    move/from16 p1, v2

    if-ge v15, v12, :cond_3

    new-array v2, v12, [I

    aput-object v2, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p1

    goto :goto_2

    :cond_3
    move v15, v2

    move/from16 v16, v15

    :goto_3
    const/16 v17, -0x1

    const/16 v18, 0x2

    if-ge v2, v11, :cond_a

    move/from16 v19, p1

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 p0, v12

    move/from16 v12, v17

    move/from16 v17, v26

    :goto_4
    const v27, 0xff00

    const/high16 v28, 0xff0000

    if-gt v12, v3, :cond_7

    move/from16 p2, v3

    if-gez v12, :cond_4

    move/from16 v3, p1

    goto :goto_5

    :cond_4
    move v3, v12

    :goto_5
    if-le v1, v3, :cond_5

    goto :goto_6

    :cond_5
    move v3, v1

    :goto_6
    add-int/2addr v3, v15

    aget v3, v5, v3

    add-int/lit8 v29, v12, 0x1

    aget-object v30, v14, v29

    and-int v28, v3, v28

    shr-int/lit8 v28, v28, 0x10

    aput v28, v30, p1

    and-int v27, v3, v27

    shr-int/lit8 v27, v27, 0x8

    aput v27, v30, p2

    and-int/lit16 v3, v3, 0xff

    aput v3, v30, v18

    invoke-static {v12}, Ljava/lang/StrictMath;->abs(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x2

    aget v27, v30, p1

    mul-int v28, v27, v3

    add-int v17, v28, v17

    aget v28, v30, p2

    mul-int v31, v28, v3

    add-int v19, v31, v19

    aget v30, v30, v18

    mul-int v3, v3, v30

    add-int v20, v3, v20

    if-lez v12, :cond_6

    add-int v26, v26, v27

    add-int v25, v25, v28

    add-int v24, v24, v30

    goto :goto_7

    :cond_6
    add-int v23, v23, v27

    add-int v22, v22, v28

    add-int v21, v21, v30

    :goto_7
    move/from16 v3, p2

    move/from16 v12, v29

    goto :goto_4

    :cond_7
    move/from16 p2, v3

    move/from16 v3, p1

    move/from16 v12, p2

    :goto_8
    if-ge v3, v7, :cond_9

    aget v29, v13, v17

    aput v29, v8, v15

    aget v29, v13, v19

    aput v29, v9, v15

    aget v29, v13, v20

    aput v29, v0, v15

    sub-int v17, v17, v23

    sub-int v19, v19, v22

    sub-int v20, v20, v21

    add-int/lit8 v29, v12, 0x2

    rem-int/lit8 v29, v29, 0x3

    aget-object v29, v14, v29

    aget v30, v29, p1

    sub-int v23, v23, v30

    aget v30, v29, p2

    sub-int v22, v22, v30

    aget v30, v29, v18

    sub-int v21, v21, v30

    if-nez v2, :cond_8

    move-object/from16 v30, v0

    add-int/lit8 v0, v3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v10, v3

    goto :goto_9

    :cond_8
    move-object/from16 v30, v0

    :goto_9
    aget v0, v10, v3

    add-int v0, v16, v0

    aget v0, v5, v0

    and-int v31, v0, v28

    shr-int/lit8 v31, v31, 0x10

    aput v31, v29, p1

    and-int v32, v0, v27

    shr-int/lit8 v32, v32, 0x8

    aput v32, v29, p2

    and-int/lit16 v0, v0, 0xff

    aput v0, v29, v18

    add-int v26, v26, v31

    add-int v25, v25, v32

    add-int v24, v24, v0

    add-int v17, v17, v26

    add-int v19, v19, v25

    add-int v20, v20, v24

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x3

    rem-int/lit8 v0, v12, 0x3

    aget-object v0, v14, v0

    aget v29, v0, p1

    add-int v23, v23, v29

    aget v31, v0, p2

    add-int v22, v22, v31

    aget v0, v0, v18

    add-int v21, v21, v0

    sub-int v26, v26, v29

    sub-int v25, v25, v31

    sub-int v24, v24, v0

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v30

    goto :goto_8

    :cond_9
    move-object/from16 v30, v0

    add-int v16, v16, v7

    add-int/lit8 v2, v2, 0x1

    move/from16 v12, p0

    move/from16 v3, p2

    goto/16 :goto_3

    :cond_a
    move-object/from16 v30, v0

    move/from16 p2, v3

    move/from16 p0, v12

    move/from16 v0, p1

    :goto_a
    if-ge v0, v7, :cond_10

    mul-int/lit8 v1, v7, -0x1

    move/from16 v3, p1

    move v12, v3

    move v15, v12

    move/from16 v16, v15

    move/from16 v19, v16

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v23, v21

    move/from16 v24, v23

    move/from16 v2, p2

    move/from16 v22, v0

    move v0, v1

    move/from16 v1, v17

    :goto_b
    if-gt v1, v2, :cond_d

    move/from16 p2, v2

    move/from16 v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v25

    add-int v25, v25, v22

    add-int/lit8 v26, v1, 0x1

    aget-object v27, v14, v26

    aget v28, v8, v25

    aput v28, v27, v2

    aget v2, v9, v25

    aput v2, v27, p2

    aget v2, v30, v25

    aput v2, v27, v18

    invoke-static {v1}, Ljava/lang/StrictMath;->abs(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    aget v28, v8, v25

    mul-int v28, v28, v2

    add-int v23, v28, v23

    aget v28, v9, v25

    mul-int v28, v28, v2

    add-int v24, v28, v24

    aget v25, v30, v25

    mul-int v25, v25, v2

    add-int v3, v25, v3

    if-lez v1, :cond_b

    const/4 v2, 0x0

    aget v25, v27, v2

    add-int v21, v21, v25

    const/16 v25, 0x1

    aget v28, v27, v25

    add-int v20, v20, v28

    aget v27, v27, v18

    add-int v19, v19, v27

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    const/16 v25, 0x1

    aget v28, v27, v2

    add-int v16, v16, v28

    aget v2, v27, v25

    add-int/2addr v15, v2

    aget v2, v27, v18

    add-int/2addr v12, v2

    :goto_c
    if-ge v1, v6, :cond_c

    add-int/2addr v0, v7

    :cond_c
    move/from16 v1, v26

    const/16 p1, 0x0

    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    move/from16 v1, v23

    const/4 v0, 0x1

    const/4 v2, 0x0

    move/from16 v23, v22

    :goto_d
    if-ge v2, v11, :cond_f

    aget v25, v5, v23

    const/high16 v26, -0x1000000

    and-int v25, v25, v26

    aget v26, v13, v1

    shl-int/lit8 v26, v26, 0x10

    or-int v25, v25, v26

    aget v26, v13, v24

    shl-int/lit8 v26, v26, 0x8

    or-int v25, v25, v26

    aget v26, v13, v3

    or-int v25, v25, v26

    aput v25, v5, v23

    sub-int v1, v1, v16

    sub-int v24, v24, v15

    sub-int/2addr v3, v12

    add-int/lit8 v25, v0, 0x2

    rem-int/lit8 v25, v25, 0x3

    aget-object v25, v14, v25

    const/16 v26, 0x0

    aget v27, v25, v26

    sub-int v16, v16, v27

    const/16 v26, 0x1

    aget v27, v25, v26

    sub-int v15, v15, v27

    aget v26, v25, v18

    sub-int v12, v12, v26

    if-nez v22, :cond_e

    move/from16 v26, v0

    add-int/lit8 v0, v2, 0x2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v7

    aput v0, v10, v2

    goto :goto_e

    :cond_e
    move/from16 v26, v0

    :goto_e
    aget v0, v10, v2

    add-int v0, v22, v0

    aget v27, v8, v0

    const/16 v28, 0x0

    aput v27, v25, v28

    aget v28, v9, v0

    const/16 v29, 0x1

    aput v28, v25, v29

    aget v0, v30, v0

    aput v0, v25, v18

    add-int v21, v21, v27

    add-int v20, v20, v28

    add-int v19, v19, v0

    add-int v1, v1, v21

    add-int v24, v24, v20

    add-int v3, v3, v19

    add-int/lit8 v0, v26, 0x1

    rem-int/lit8 v0, v0, 0x3

    aget-object v25, v14, v0

    const/16 v26, 0x0

    aget v27, v25, v26

    add-int v16, v16, v27

    const/16 v29, 0x1

    aget v28, v25, v29

    add-int v15, v15, v28

    aget v25, v25, v18

    add-int v12, v12, v25

    sub-int v21, v21, v27

    sub-int v20, v20, v28

    sub-int v19, v19, v25

    add-int v23, v23, v7

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_f
    const/16 v26, 0x0

    const/16 v29, 0x1

    add-int/lit8 v0, v22, 0x1

    move/from16 p1, v26

    move/from16 p2, v29

    goto/16 :goto_a

    :cond_10
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v4
.end method
