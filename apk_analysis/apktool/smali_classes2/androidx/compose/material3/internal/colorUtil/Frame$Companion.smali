.class public final Landroidx/compose/material3/internal/colorUtil/Frame$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/internal/colorUtil/Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefault()Landroidx/compose/material3/internal/colorUtil/Frame;
    .locals 0

    invoke-static {}, Landroidx/compose/material3/internal/colorUtil/Frame;->access$getDefault$cp()Landroidx/compose/material3/internal/colorUtil/Frame;

    move-result-object p0

    return-object p0
.end method

.method public final make([FFFFZ)Landroidx/compose/material3/internal/colorUtil/Frame;
    .locals 23

    move/from16 v0, p2

    sget-object v1, Landroidx/compose/material3/internal/colorUtil/CamUtils;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/CamUtils;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->getXYZ_TO_CAM16RGB()[[F

    move-result-object v2

    const/4 v3, 0x0

    aget v4, p1, v3

    aget-object v5, v2, v3

    aget v6, v5, v3

    mul-float/2addr v6, v4

    const/4 v7, 0x1

    aget v8, p1, v7

    aget v9, v5, v7

    mul-float/2addr v9, v8

    add-float/2addr v9, v6

    const/4 v6, 0x2

    aget v10, p1, v6

    aget v5, v5, v6

    mul-float/2addr v5, v10

    add-float/2addr v5, v9

    aget-object v9, v2, v7

    aget v11, v9, v3

    mul-float/2addr v11, v4

    aget v12, v9, v7

    mul-float/2addr v12, v8

    add-float/2addr v12, v11

    aget v9, v9, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    aget-object v2, v2, v6

    aget v11, v2, v3

    mul-float/2addr v4, v11

    aget v11, v2, v7

    mul-float/2addr v8, v11

    add-float/2addr v8, v4

    aget v2, v2, v6

    mul-float/2addr v10, v2

    add-float/2addr v10, v8

    const/high16 v2, 0x41200000    # 10.0f

    div-float v4, p4, v2

    const v8, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v8

    float-to-double v11, v4

    const-wide v13, 0x3feccccccccccccdL    # 0.9

    cmpl-double v11, v11, v13

    const v12, 0x3f170a3d    # 0.59f

    if-ltz v11, :cond_0

    const v8, 0x3f666666    # 0.9f

    sub-float v8, v4, v8

    mul-float/2addr v8, v2

    const v2, 0x3f30a3d7    # 0.69f

    invoke-static {v12, v2, v8}, Landroidx/compose/material3/internal/colorUtil/Frame_androidKt;->access$lerp(FFF)F

    move-result v2

    :goto_0
    move/from16 v16, v2

    goto :goto_1

    :cond_0
    sub-float v8, v4, v8

    mul-float/2addr v8, v2

    const v2, 0x3f066666    # 0.525f

    invoke-static {v2, v12, v8}, Landroidx/compose/material3/internal/colorUtil/Frame_androidKt;->access$lerp(FFF)F

    move-result v2

    goto :goto_0

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p5, :cond_1

    move v8, v2

    goto :goto_2

    :cond_1
    neg-float v8, v0

    const/high16 v11, 0x42280000    # 42.0f

    sub-float/2addr v8, v11

    const/high16 v11, 0x42b80000    # 92.0f

    div-float/2addr v8, v11

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v8, v11

    const v11, 0x3e8e38e4

    invoke-static {v8, v11, v2, v4}, Ln7;->b(FFFF)F

    move-result v8

    :goto_2
    float-to-double v11, v8

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, v11, v13

    if-lez v13, :cond_2

    move v8, v2

    goto :goto_3

    :cond_2
    const-wide/16 v13, 0x0

    cmpg-double v11, v11, v13

    if-gez v11, :cond_3

    const/4 v8, 0x0

    :cond_3
    :goto_3
    const/high16 v11, 0x42c80000    # 100.0f

    div-float v12, v11, v5

    mul-float/2addr v12, v8

    add-float/2addr v12, v2

    sub-float/2addr v12, v8

    div-float v13, v11, v9

    mul-float/2addr v13, v8

    add-float/2addr v13, v2

    sub-float/2addr v13, v8

    div-float v14, v11, v10

    mul-float/2addr v14, v8

    add-float/2addr v14, v2

    sub-float/2addr v14, v8

    const/4 v8, 0x3

    new-array v15, v8, [F

    aput v12, v15, v3

    aput v13, v15, v7

    aput v14, v15, v6

    const/high16 v12, 0x40a00000    # 5.0f

    mul-float/2addr v12, v0

    add-float/2addr v12, v2

    div-float v12, v2, v12

    mul-float v13, v12, v12

    mul-float/2addr v13, v12

    mul-float/2addr v13, v12

    sub-float/2addr v2, v13

    mul-float/2addr v13, v0

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v12, v2

    mul-float/2addr v12, v2

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    move/from16 p0, v3

    move/from16 p4, v4

    float-to-double v3, v0

    mul-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v12, v0

    add-float/2addr v12, v13

    move/from16 v0, p3

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->yFromLstar(D)D

    move-result-wide v0

    double-to-float v0, v0

    aget v1, p1, v7

    div-float/2addr v0, v1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3fbd70a4    # 1.48f

    add-float v21, v3, v4

    const-wide v3, 0x3fc99999a0000000L    # 0.20000000298023224

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f39999a    # 0.725f

    div-float v14, v2, v1

    aget v1, v15, p0

    mul-float/2addr v1, v12

    mul-float/2addr v1, v5

    div-float/2addr v1, v11

    float-to-double v1, v1

    const-wide v3, 0x3fdae147a0000000L    # 0.41999998688697815

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    aget v2, v15, v7

    mul-float/2addr v2, v12

    mul-float/2addr v2, v9

    div-float/2addr v2, v11

    move v9, v6

    move v5, v7

    float-to-double v6, v2

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v2, v6

    aget v6, v15, v9

    mul-float/2addr v6, v12

    mul-float/2addr v6, v10

    div-float/2addr v6, v11

    float-to-double v6, v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    new-array v4, v8, [F

    aput v1, v4, p0

    aput v2, v4, v5

    aput v3, v4, v9

    aget v1, v4, p0

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v3, v1, v2

    const v6, 0x41d90a3d    # 27.13f

    add-float/2addr v1, v6

    div-float/2addr v3, v1

    aget v1, v4, v5

    mul-float v7, v1, v2

    add-float/2addr v1, v6

    div-float/2addr v7, v1

    aget v1, v4, v9

    mul-float/2addr v2, v1

    add-float/2addr v1, v6

    div-float/2addr v2, v1

    new-array v1, v8, [F

    aput v3, v1, p0

    aput v7, v1, v5

    aput v2, v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    aget v3, v1, p0

    mul-float/2addr v3, v2

    aget v2, v1, v5

    add-float/2addr v3, v2

    const v2, 0x3d4ccccd    # 0.05f

    aget v1, v1, v9

    invoke-static {v1, v2, v3, v14}, Ly83;->b(FFFF)F

    move-result v13

    new-instance v11, Landroidx/compose/material3/internal/colorUtil/Frame;

    float-to-double v1, v12

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v22, 0x0

    move-object/from16 v18, v15

    move v15, v14

    move/from16 v17, p4

    move/from16 v20, v1

    move/from16 v19, v12

    move v12, v0

    invoke-direct/range {v11 .. v22}, Landroidx/compose/material3/internal/colorUtil/Frame;-><init>(FFFFFF[FFFFLjh2;)V

    return-object v11
.end method
