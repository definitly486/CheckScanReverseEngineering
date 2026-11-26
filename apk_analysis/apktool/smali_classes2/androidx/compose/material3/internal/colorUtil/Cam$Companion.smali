.class public final Landroidx/compose/material3/internal/colorUtil/Cam$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/material3/internal/colorUtil/Cam;
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

    invoke-direct {p0}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;-><init>()V

    return-void
.end method

.method private final findCamByJ(FFF)Landroidx/compose/material3/internal/colorUtil/Cam;
    .locals 12

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    move v5, v0

    move-object v4, v3

    move v3, v2

    :goto_0
    sub-float v6, v5, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v6, v6, v8

    if-lez v6, :cond_3

    sub-float v6, v1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-direct {p0, v6, p2, p1}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->fromJch(FFF)Landroidx/compose/material3/internal/colorUtil/Cam;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material3/internal/colorUtil/Cam;->viewedInSrgb()I

    move-result v7

    sget-object v8, Landroidx/compose/material3/internal/colorUtil/CamUtils;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/CamUtils;

    invoke-virtual {v8, v7}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->lstarFromInt(I)F

    move-result v8

    sub-float v9, p3, v8

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    double-to-float v9, v9

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    invoke-virtual {p0, v7}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->fromInt(I)Landroidx/compose/material3/internal/colorUtil/Cam;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material3/internal/colorUtil/Cam;->getJ()F

    move-result v10

    invoke-virtual {v7}, Landroidx/compose/material3/internal/colorUtil/Cam;->getChroma()F

    move-result v11

    invoke-direct {p0, v10, v11, p1}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->fromJch(FFF)Landroidx/compose/material3/internal/colorUtil/Cam;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroidx/compose/material3/internal/colorUtil/Cam;->distance(Landroidx/compose/material3/internal/colorUtil/Cam;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_0

    move-object v4, v7

    move v2, v9

    move v3, v10

    :cond_0
    cmpg-float v7, v2, v0

    if-nez v7, :cond_1

    cmpg-float v7, v3, v0

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    cmpg-float v7, v8, p3

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method private final fromIntInFrame(ILandroidx/compose/material3/internal/colorUtil/Frame;)Landroidx/compose/material3/internal/colorUtil/Cam;
    .locals 20

    sget-object v0, Landroidx/compose/material3/internal/colorUtil/CamUtils;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/CamUtils;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->xyzFromInt(I)[F

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->getXYZ_TO_CAM16RGB()[[F

    move-result-object v0

    const/4 v2, 0x0

    aget v3, v1, v2

    aget-object v4, v0, v2

    aget v5, v4, v2

    mul-float/2addr v5, v3

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v8, v4, v6

    mul-float/2addr v8, v7

    add-float/2addr v8, v5

    const/4 v5, 0x2

    aget v1, v1, v5

    aget v4, v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v4, v8

    aget-object v8, v0, v6

    aget v9, v8, v2

    mul-float/2addr v9, v3

    aget v10, v8, v6

    mul-float/2addr v10, v7

    add-float/2addr v10, v9

    aget v8, v8, v5

    mul-float/2addr v8, v1

    add-float/2addr v8, v10

    aget-object v0, v0, v5

    aget v9, v0, v2

    mul-float/2addr v3, v9

    aget v9, v0, v6

    mul-float/2addr v7, v9

    add-float/2addr v7, v3

    aget v0, v0, v5

    mul-float/2addr v1, v0

    add-float/2addr v1, v7

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getRgbD()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getRgbD()[F

    move-result-object v2

    aget v2, v2, v6

    mul-float/2addr v2, v8

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getRgbD()[F

    move-result-object v3

    aget v3, v3, v5

    mul-float/2addr v3, v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getFl()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v4, v1

    float-to-double v4, v4

    const-wide v6, 0x3fdae147a0000000L    # 0.41999998688697815

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getFl()F

    move-result v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v5

    div-float/2addr v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getFl()F

    move-result v8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v9, v8

    div-float/2addr v9, v1

    float-to-double v8, v9

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/high16 v7, 0x43c80000    # 400.0f

    mul-float/2addr v0, v7

    mul-float/2addr v0, v4

    const v8, 0x41d90a3d    # 27.13f

    add-float/2addr v4, v8

    div-float/2addr v0, v4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v2, v7

    mul-float/2addr v2, v5

    add-float/2addr v5, v8

    div-float/2addr v2, v5

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v7

    mul-float/2addr v3, v6

    add-float/2addr v6, v8

    div-float/2addr v3, v6

    const/high16 v4, 0x41300000    # 11.0f

    mul-float v5, v0, v4

    const/high16 v6, -0x3ec00000    # -12.0f

    mul-float/2addr v6, v2

    add-float/2addr v6, v5

    add-float/2addr v6, v3

    div-float/2addr v6, v4

    add-float v4, v0, v2

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v7, v4, v5}, Lrg;->b(FFFF)F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v8, v0, v5

    mul-float/2addr v2, v5

    add-float/2addr v8, v2

    const/high16 v9, 0x41a80000    # 21.0f

    mul-float/2addr v9, v3

    add-float/2addr v9, v8

    div-float/2addr v9, v5

    const/high16 v8, 0x42200000    # 40.0f

    mul-float/2addr v0, v8

    add-float/2addr v0, v2

    add-float/2addr v0, v3

    div-float/2addr v0, v5

    float-to-double v2, v4

    float-to-double v10, v6

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v2, v3

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v5

    const/4 v8, 0x0

    cmpg-float v8, v2, v8

    const/high16 v10, 0x43b40000    # 360.0f

    if-gez v8, :cond_1

    add-float/2addr v2, v10

    :cond_0
    :goto_0
    move v12, v2

    goto :goto_1

    :cond_1
    cmpl-float v8, v2, v10

    if-ltz v8, :cond_0

    sub-float/2addr v2, v10

    goto :goto_0

    :goto_1
    mul-float v2, v12, v5

    div-float/2addr v2, v3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getNbb()F

    move-result v8

    mul-float/2addr v8, v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getAw()F

    move-result v0

    div-float/2addr v8, v0

    float-to-double v13, v8

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getC()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getZ()F

    move-result v8

    mul-float/2addr v8, v0

    move/from16 p1, v3

    move/from16 p0, v4

    float-to-double v3, v8

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float v14, v0, v1

    float-to-double v3, v12

    const-wide v15, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v0, v3, v15

    if-gez v0, :cond_2

    add-float/2addr v10, v12

    goto :goto_2

    :cond_2
    move v10, v12

    :goto_2
    mul-float/2addr v10, v5

    div-float v10, v10, p1

    add-float/2addr v10, v7

    float-to-double v3, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    const v3, 0x40733333    # 3.8f

    add-float/2addr v0, v3

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v0, v3

    const v3, 0x45706276

    mul-float/2addr v0, v3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getNc()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getNcb()F

    move-result v0

    mul-float/2addr v0, v3

    mul-float/2addr v6, v6

    mul-float v4, p0, p0

    add-float/2addr v4, v6

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    const v3, 0x3e9c28f6    # 0.305f

    add-float/2addr v9, v3

    div-float/2addr v0, v9

    float-to-double v3, v0

    const-wide v5, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getN()F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fd28f5c20000000L    # 0.28999999165534973

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3fd1eb85    # 1.64f

    sub-float/2addr v4, v3

    float-to-double v3, v4

    const-wide v5, 0x3fe75c2900000000L    # 0.7300000190734863

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v0, v3

    div-float v1, v14, v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v13, v0, v1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getFlRoot()F

    move-result v1

    mul-float v15, v1, v13

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getC()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/internal/colorUtil/Frame;->getAw()F

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v0, v3

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v16, v0, v1

    const v0, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v14

    const v1, 0x3be56042    # 0.007f

    mul-float/2addr v1, v14

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    div-float v17, v0, v1

    const v0, 0x3cbac711    # 0.0228f

    mul-float/2addr v0, v15

    add-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x422f7048

    mul-float/2addr v0, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v18, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v19, v0, v1

    new-instance v11, Landroidx/compose/material3/internal/colorUtil/Cam;

    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/internal/colorUtil/Cam;-><init>(FFFFFFFF)V

    return-object v11
.end method

.method private final fromJch(FFF)Landroidx/compose/material3/internal/colorUtil/Cam;
    .locals 1

    sget-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Companion:Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;->getDefault()Landroidx/compose/material3/internal/colorUtil/Frame;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->fromJchInFrame(FFFLandroidx/compose/material3/internal/colorUtil/Frame;)Landroidx/compose/material3/internal/colorUtil/Cam;

    move-result-object p0

    return-object p0
.end method

.method private final fromJchInFrame(FFFLandroidx/compose/material3/internal/colorUtil/Frame;)Landroidx/compose/material3/internal/colorUtil/Cam;
    .locals 9

    invoke-virtual {p4}, Landroidx/compose/material3/internal/colorUtil/Frame;->getFlRoot()F

    move-result p0

    mul-float v4, p0, p2

    float-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float p0, p2, p0

    invoke-virtual {p4}, Landroidx/compose/material3/internal/colorUtil/Frame;->getC()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-virtual {p4}, Landroidx/compose/material3/internal/colorUtil/Frame;->getAw()F

    move-result p0

    const/high16 p4, 0x40800000    # 4.0f

    add-float/2addr p0, p4

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 p4, 0x42480000    # 50.0f

    mul-float v5, p0, p4

    const p0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p0, p3

    const/high16 p4, 0x43340000    # 180.0f

    div-float/2addr p0, p4

    const p4, 0x3fd9999a    # 1.7f

    mul-float/2addr p4, p1

    const v0, 0x3be56042    # 0.007f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float v6, p4, v0

    const-wide v0, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v2, v4

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float p4, v0

    const v0, 0x422f7048

    mul-float/2addr p4, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p0, v2

    mul-float v7, p4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p0, v0

    mul-float v8, p4, p0

    new-instance v0, Landroidx/compose/material3/internal/colorUtil/Cam;

    move v3, p1

    move v2, p2

    move v1, p3

    invoke-direct/range {v0 .. v8}, Landroidx/compose/material3/internal/colorUtil/Cam;-><init>(FFFFFFFF)V

    return-object v0
.end method

.method private final getInt(FFFLandroidx/compose/material3/internal/colorUtil/Frame;)I
    .locals 8

    sget-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Companion:Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;->getDefault()Landroidx/compose/material3/internal/colorUtil/Frame;

    move-result-object v0

    invoke-static {p4, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/material3/internal/colorUtil/HctSolver;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/HctSolver;

    float-to-double v2, p1

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/material3/internal/colorUtil/HctSolver;->solveToInt(DDD)I

    move-result p0

    return p0

    :cond_0
    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_8

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_8

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    move v1, v0

    move v0, p2

    :goto_1
    sub-float v4, v1, p2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fd99999a0000000L    # 0.4000000059604645

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_6

    invoke-direct {p0, p1, v0, p3}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->findCamByJ(FFF)Landroidx/compose/material3/internal/colorUtil/Cam;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p4}, Landroidx/compose/material3/internal/colorUtil/Cam;->viewed(Landroidx/compose/material3/internal/colorUtil/Frame;)I

    move-result p0

    return p0

    :cond_3
    sub-float v0, p2, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    move p2, v0

    goto :goto_2

    :cond_5
    move v1, v0

    move-object v3, v4

    :goto_2
    sub-float v0, p2, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    sget-object p0, Landroidx/compose/material3/internal/colorUtil/CamUtils;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/CamUtils;

    invoke-virtual {p0, p3}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->intFromLstar(F)I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {v3, p4}, Landroidx/compose/material3/internal/colorUtil/Cam;->viewed(Landroidx/compose/material3/internal/colorUtil/Frame;)I

    move-result p0

    return p0

    :cond_8
    :goto_3
    sget-object p0, Landroidx/compose/material3/internal/colorUtil/CamUtils;->INSTANCE:Landroidx/compose/material3/internal/colorUtil/CamUtils;

    invoke-virtual {p0, p3}, Landroidx/compose/material3/internal/colorUtil/CamUtils;->intFromLstar(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final fromInt(I)Landroidx/compose/material3/internal/colorUtil/Cam;
    .locals 1

    sget-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Companion:Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;->getDefault()Landroidx/compose/material3/internal/colorUtil/Frame;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->fromIntInFrame(ILandroidx/compose/material3/internal/colorUtil/Frame;)Landroidx/compose/material3/internal/colorUtil/Cam;

    move-result-object p0

    return-object p0
.end method

.method public final getInt(FFF)I
    .locals 1

    .line 140
    sget-object v0, Landroidx/compose/material3/internal/colorUtil/Frame;->Companion:Landroidx/compose/material3/internal/colorUtil/Frame$Companion;

    invoke-virtual {v0}, Landroidx/compose/material3/internal/colorUtil/Frame$Companion;->getDefault()Landroidx/compose/material3/internal/colorUtil/Frame;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material3/internal/colorUtil/Cam$Companion;->getInt(FFFLandroidx/compose/material3/internal/colorUtil/Frame;)I

    move-result p0

    return p0
.end method
