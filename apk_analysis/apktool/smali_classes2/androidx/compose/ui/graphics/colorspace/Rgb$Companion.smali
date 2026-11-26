.class public final Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Rgb;
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

    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateEotf$lambda$0(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computeWhitePoint([F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$computeXYZMatrix(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computeXYZMatrix([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateEotf(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateEotf(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateOetf(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateOetf(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isSrgb(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFI)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->isSrgb([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isWideGamut(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FFF)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->isWideGamut([FFF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$xyPrimaries(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)[F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->xyPrimaries([F)[F

    move-result-object p0

    return-object p0
.end method

.method private final area([F)F
    .locals 7

    array-length p0, p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    aget p0, p1, p0

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x4

    aget v4, p1, v4

    const/4 v5, 0x5

    aget p1, p1, v5

    mul-float v5, p0, v3

    mul-float v6, v0, v4

    add-float/2addr v6, v5

    mul-float v5, v2, p1

    add-float/2addr v5, v6

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    mul-float/2addr v0, v2

    sub-float/2addr v5, v0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p0, p1, v5, v0}, Ln7;->b(FFFF)F

    move-result p0

    cmpg-float p1, p0, v1

    if-gez p1, :cond_1

    neg-float p0, p0

    :cond_1
    return p0
.end method

.method public static synthetic b(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateEotf$lambda$2(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic c(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateOetf$lambda$3(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final compare(DLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;)Z
    .locals 2

    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide v0

    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/graphics/colorspace/DoubleFunction;->invoke(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final computeWhitePoint([F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 3

    const/4 p0, 0x3

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v0, 0x1

    aget v0, p0, v0

    add-float v1, p1, v0

    const/4 v2, 0x2

    aget p0, p0, v2

    add-float/2addr v1, p0

    new-instance p0, Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    div-float/2addr p1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;-><init>(FF)V

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final computeXYZMatrix([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F
    .locals 22

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/4 v6, 0x3

    aget v7, p1, v6

    const/4 v8, 0x4

    aget v9, p1, v8

    const/4 v10, 0x5

    aget v11, p1, v10

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getX()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->getY()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v15, v14, v1

    div-float/2addr v15, v3

    sub-float v16, v14, v5

    div-float v16, v16, v7

    sub-float v17, v14, v9

    div-float v17, v17, v11

    sub-float v18, v14, v12

    div-float v18, v18, v13

    div-float v19, v1, v3

    div-float v20, v5, v7

    div-float v21, v9, v11

    div-float/2addr v12, v13

    sub-float v18, v18, v15

    sub-float v13, v20, v19

    mul-float v18, v18, v13

    sub-float v12, v12, v19

    sub-float v16, v16, v15

    mul-float v20, v12, v16

    sub-float v18, v18, v20

    sub-float v17, v17, v15

    mul-float v17, v17, v13

    sub-float v15, v21, v19

    mul-float v16, v16, v15

    sub-float v17, v17, v16

    move/from16 p0, v0

    div-float v0, v18, v17

    invoke-static {v0, v15, v12, v13}, Lrg;->b(FFFF)F

    move-result v12

    sub-float v13, v14, v12

    sub-float/2addr v13, v0

    div-float v15, v13, v3

    div-float v16, v12, v7

    div-float v17, v0, v11

    mul-float v18, v15, v1

    sub-float v1, v14, v1

    sub-float/2addr v1, v3

    mul-float/2addr v1, v15

    mul-float v3, v16, v5

    sub-float v5, v14, v5

    sub-float/2addr v5, v7

    mul-float v5, v5, v16

    mul-float v7, v17, v9

    sub-float/2addr v14, v9

    sub-float/2addr v14, v11

    mul-float v14, v14, v17

    const/16 v9, 0x9

    new-array v9, v9, [F

    aput v18, v9, p0

    aput v13, v9, v2

    aput v1, v9, v4

    aput v3, v9, v6

    aput v12, v9, v8

    aput v5, v9, v10

    const/4 v1, 0x6

    aput v7, v9, v1

    const/4 v1, 0x7

    aput v0, v9, v1

    const/16 v0, 0x8

    aput v14, v9, v0

    return-object v9
.end method

.method private final contains([F[F)Z
    .locals 18

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    sub-float/2addr v1, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    aget v5, p2, v3

    sub-float/2addr v4, v5

    const/4 v6, 0x2

    aget v7, p1, v6

    aget v8, p2, v6

    sub-float/2addr v7, v8

    const/4 v9, 0x3

    aget v10, p1, v9

    aget v11, p2, v9

    sub-float/2addr v10, v11

    const/4 v12, 0x4

    aget v13, p1, v12

    aget v14, p2, v12

    sub-float/2addr v13, v14

    const/4 v15, 0x5

    aget v16, p1, v15

    aget v17, p2, v15

    sub-float v16, v16, v17

    move/from16 p0, v0

    const/4 v0, 0x6

    new-array v0, v0, [F

    aput v1, v0, p0

    aput v4, v0, v3

    aput v7, v0, v6

    aput v10, v0, v9

    aput v13, v0, v12

    aput v16, v0, v15

    aget v1, v0, p0

    aget v4, v0, v3

    sub-float v7, v2, v14

    sub-float v10, v5, v17

    mul-float/2addr v10, v1

    mul-float/2addr v7, v4

    sub-float/2addr v10, v7

    const/4 v7, 0x0

    cmpg-float v10, v10, v7

    if-ltz v10, :cond_2

    sub-float v10, v2, v8

    sub-float v13, v5, v11

    mul-float/2addr v10, v4

    mul-float/2addr v13, v1

    sub-float/2addr v10, v13

    cmpg-float v1, v10, v7

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    aget v1, v0, v6

    aget v4, v0, v9

    sub-float v6, v8, v2

    sub-float v9, v11, v5

    mul-float/2addr v9, v1

    mul-float/2addr v6, v4

    sub-float/2addr v9, v6

    cmpg-float v6, v9, v7

    if-ltz v6, :cond_2

    sub-float v6, v8, v14

    sub-float v9, v11, v17

    mul-float/2addr v6, v4

    mul-float/2addr v9, v1

    sub-float/2addr v6, v9

    cmpg-float v1, v6, v7

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    aget v1, v0, v12

    aget v0, v0, v15

    sub-float v4, v14, v8

    sub-float v6, v17, v11

    mul-float/2addr v6, v1

    mul-float/2addr v4, v0

    sub-float/2addr v6, v4

    cmpg-float v4, v6, v7

    if-ltz v4, :cond_2

    sub-float/2addr v14, v2

    sub-float v17, v17, v5

    mul-float/2addr v14, v0

    mul-float v17, v17, v1

    sub-float v14, v14, v17

    cmpg-float v0, v14, v7

    if-ltz v0, :cond_2

    return v3

    :cond_2
    :goto_0
    return p0
.end method

.method private final cross(FFFF)F
    .locals 0

    mul-float/2addr p1, p4

    mul-float/2addr p2, p3

    sub-float/2addr p1, p2

    return p1
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateEotf$lambda$1(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic e(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateOetf$lambda$1(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic f(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateOetf$lambda$0(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic g(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateEotf$lambda$3(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final generateEotf(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->isHLGish$ui_graphics()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lo61;

    invoke-direct {p0, p1}, Lo61;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->isPQish$ui_graphics()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lq3;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lq3;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_2

    new-instance p0, Lul0;

    invoke-direct {p0, p1}, Lul0;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Lgu2;

    invoke-direct {p0, p1}, Lgu2;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final generateEotf$lambda$0(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferHlgEotf$ui_graphics(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final generateEotf$lambda$1(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferSt2048Eotf$ui_graphics(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final generateEotf$lambda$2(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v4

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v8

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide v10

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->response(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final generateEotf$lambda$3(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide v16

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v17}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->response(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private final generateOetf(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)Landroidx/compose/ui/graphics/colorspace/DoubleFunction;
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->isHLGish$ui_graphics()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lhu2;

    invoke-direct {p0, p1}, Lhu2;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->isPQish$ui_graphics()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ls77;

    invoke-direct {p0, p1}, Ls77;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-nez p0, :cond_2

    new-instance p0, Lea;

    invoke-direct {p0, p1}, Lea;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    new-instance p0, Lkk2;

    invoke-direct {p0, p1}, Lkk2;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final generateOetf$lambda$0(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferHlgOetf$ui_graphics(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final generateOetf$lambda$1(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->transferSt2048Oetf$ui_graphics(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final generateOetf$lambda$2(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v4

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v8

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide v10

    move-wide v0, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->rcpResponse(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static final generateOetf$lambda$3(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getA()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getB()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getC()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getD()D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getGamma()D

    move-result-wide v16

    move-wide/from16 v2, p1

    invoke-static/range {v2 .. v17}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->rcpResponse(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic h(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->generateOetf$lambda$2(Landroidx/compose/ui/graphics/colorspace/TransferParameters;D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final isSrgb([FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;FFI)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p7, :cond_0

    return v0

    :cond_0
    sget-object p7, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {p7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgbPrimaries$ui_graphics()[F

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare([F[F)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD65()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    cmpg-float p1, p5, p1

    if-nez p1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p6, p1

    if-nez p1, :cond_6

    invoke-virtual {p7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgb()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p1

    const-wide/16 p5, 0x0

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, p5, v2

    if-gtz p2, :cond_5

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetfOrig$ui_graphics()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p2

    invoke-direct {p0, p5, p6, p3, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->compare(DLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotfOrig$ui_graphics()Landroidx/compose/ui/graphics/colorspace/DoubleFunction;

    move-result-object p2

    invoke-direct {p0, p5, p6, p4, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->compare(DLandroidx/compose/ui/graphics/colorspace/DoubleFunction;Landroidx/compose/ui/graphics/colorspace/DoubleFunction;)Z

    move-result p2

    if-nez p2, :cond_4

    return v1

    :cond_4
    const-wide v2, 0x3f70101010101010L    # 0.00392156862745098

    add-double/2addr p5, v2

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    return v1
.end method

.method private final isWideGamut([FFF)Z
    .locals 3

    invoke-direct {p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->area([F)F

    move-result v0

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getNtsc1953Primaries$ui_graphics()[F

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->area([F)F

    move-result v2

    div-float/2addr v0, v2

    const v2, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getSrgbPrimaries$ui_graphics()[F

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->contains([F[F)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p3, p0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final xyPrimaries([F)[F
    .locals 9

    const/4 p0, 0x6

    new-array v0, p0, [F

    array-length v1, p1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget v1, p1, v3

    const/4 v2, 0x1

    aget v4, p1, v2

    add-float v5, v1, v4

    const/4 v6, 0x2

    aget v7, p1, v6

    add-float/2addr v5, v7

    div-float/2addr v1, v5

    aput v1, v0, v3

    div-float/2addr v4, v5

    aput v4, v0, v2

    const/4 v1, 0x3

    aget v2, p1, v1

    const/4 v3, 0x4

    aget v4, p1, v3

    add-float v5, v2, v4

    const/4 v7, 0x5

    aget v8, p1, v7

    add-float/2addr v5, v8

    div-float/2addr v2, v5

    aput v2, v0, v6

    div-float/2addr v4, v5

    aput v4, v0, v1

    aget p0, p1, p0

    const/4 v1, 0x7

    aget v1, p1, v1

    add-float v2, p0, v1

    const/16 v4, 0x8

    aget p1, p1, v4

    add-float/2addr v2, p1

    div-float/2addr p0, v2

    aput p0, v0, v3

    div-float/2addr v1, v2

    aput v1, v0, v7

    return-object v0

    :cond_0
    invoke-static {v3, p1, v0, p0}, Laq5;->o(I[F[FI)V

    return-object v0
.end method


# virtual methods
.method public final computePrimaries$ui_graphics([F)[F
    .locals 12

    const/4 p0, 0x3

    new-array v0, p0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object v0

    new-array v1, p0, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object v1

    new-array v2, p0, [F

    fill-array-data v2, :array_2

    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    move-result-object p1

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    add-float v6, v3, v5

    const/4 v7, 0x2

    aget v0, v0, v7

    add-float/2addr v6, v0

    aget v0, v1, v2

    aget v8, v1, v4

    add-float v9, v0, v8

    aget v1, v1, v7

    add-float/2addr v9, v1

    aget v1, p1, v2

    aget v10, p1, v4

    add-float v11, v1, v10

    aget p1, p1, v7

    add-float/2addr v11, p1

    div-float/2addr v3, v6

    div-float/2addr v5, v6

    div-float/2addr v0, v9

    div-float/2addr v8, v9

    div-float/2addr v1, v11

    div-float/2addr v10, v11

    const/4 p1, 0x6

    new-array p1, p1, [F

    aput v3, p1, v2

    aput v5, p1, v4

    aput v0, p1, v7

    aput v8, p1, p0

    const/4 p0, 0x4

    aput v1, p1, p0

    const/4 p0, 0x5

    aput v10, p1, p0

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
