.class public final Landroidx/compose/animation/core/MonoSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final slopeTemp:[F

.field private final tangents:[[F

.field private final timePoints:[F

.field private final values:[[F


# direct methods
.method public constructor <init>([F[[FF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    aget-object v5, v2, v4

    array-length v5, v5

    new-array v6, v5, [F

    iput-object v6, v0, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    add-int/lit8 v6, v3, -0x1

    invoke-direct {v0, v6, v5}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)[[F

    move-result-object v7

    invoke-direct {v0, v3, v5}, Landroidx/compose/animation/core/MonoSpline;->makeFloatArray(II)[[F

    move-result-object v8

    move v9, v4

    :goto_0
    if-ge v9, v5, :cond_2

    move v10, v4

    :goto_1
    if-ge v10, v6, :cond_1

    add-int/lit8 v11, v10, 0x1

    aget v12, v1, v11

    aget v13, v1, v10

    sub-float/2addr v12, v13

    aget-object v13, v7, v10

    aget-object v14, v2, v11

    aget v14, v14, v9

    aget-object v15, v2, v10

    aget v15, v15, v9

    sub-float/2addr v14, v15

    div-float/2addr v14, v12

    aput v14, v13, v9

    if-nez v10, :cond_0

    aget-object v10, v8, v10

    aput v14, v10, v9

    goto :goto_2

    :cond_0
    aget-object v12, v8, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v7, v10

    aget v10, v10, v9

    add-float/2addr v10, v14

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v10, v13

    aput v10, v12, v9

    :goto_2
    move v10, v11

    goto :goto_1

    :cond_1
    aget-object v10, v8, v6

    add-int/lit8 v11, v3, -0x2

    aget-object v11, v7, v11

    aget v11, v11, v9

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v4

    :goto_3
    if-ge v9, v5, :cond_3

    add-int/lit8 v10, v3, -0x2

    aget-object v10, v7, v10

    aget v11, v10, v9

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v12, p3

    mul-float/2addr v12, v11

    aget-object v11, v7, v4

    aget v13, v11, v9

    mul-float v13, v13, p3

    add-float/2addr v13, v12

    aput v13, v11, v9

    aput v13, v10, v9

    aget-object v10, v8, v6

    aput v13, v10, v9

    aget-object v10, v8, v4

    aput v13, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_4
    if-ge v3, v6, :cond_7

    move v9, v4

    :goto_5
    if-ge v9, v5, :cond_6

    aget-object v10, v7, v3

    aget v10, v10, v9

    const/4 v11, 0x0

    cmpg-float v12, v10, v11

    if-nez v12, :cond_4

    aget-object v10, v8, v3

    aput v11, v10, v9

    add-int/lit8 v10, v3, 0x1

    aget-object v10, v8, v10

    aput v11, v10, v9

    move/from16 v16, v5

    goto :goto_6

    :cond_4
    aget-object v11, v8, v3

    aget v11, v11, v9

    div-float/2addr v11, v10

    add-int/lit8 v12, v3, 0x1

    aget-object v13, v8, v12

    aget v13, v13, v9

    div-float/2addr v13, v10

    float-to-double v14, v11

    move/from16 v16, v5

    float-to-double v4, v13

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v14, v4

    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    cmpl-double v5, v14, v17

    if-lez v5, :cond_5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v5, v4

    aget-object v4, v8, v3

    mul-float/2addr v11, v5

    aget-object v14, v7, v3

    aget v15, v14, v9

    mul-float/2addr v11, v15

    aput v11, v4, v9

    aget-object v4, v8, v12

    mul-float/2addr v5, v13

    aget v11, v14, v9

    mul-float/2addr v5, v11

    aput v5, v4, v9

    :cond_5
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    move/from16 v16, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    iput-object v1, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    iput-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    iput-object v8, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    return-void
.end method

.method public static synthetic getPos$default(Landroidx/compose/animation/core/MonoSpline;FLandroidx/compose/animation/core/AnimationVector;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/MonoSpline;->getPos(FLandroidx/compose/animation/core/AnimationVector;I)V

    return-void
.end method

.method private final getSlope(FI)F
    .locals 12

    .line 117
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    .line 118
    iget-object v1, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    .line 119
    iget-object p0, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    .line 120
    array-length v2, v0

    const/4 v3, 0x0

    .line 121
    aget v4, v0, v3

    add-int/lit8 v2, v2, -0x1

    aget v5, v0, v2

    cmpg-float v6, p1, v4

    if-gez v6, :cond_0

    move p1, v4

    :cond_0
    cmpl-float v4, p1, v5

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, p1

    :goto_0
    if-ge v3, v2, :cond_3

    add-int/lit8 p1, v3, 0x1

    .line 122
    aget v4, v0, p1

    cmpg-float v6, v5, v4

    if-gtz v6, :cond_2

    .line 123
    aget-object v2, v1, v3

    aget v8, v2, p2

    .line 124
    aget-object v1, v1, p1

    aget v9, v1, p2

    .line 125
    aget-object v1, p0, v3

    aget v10, v1, p2

    .line 126
    aget-object p0, p0, p1

    aget v11, p0, p2

    .line 127
    aget p0, v0, v3

    sub-float v6, v4, p0

    sub-float/2addr v5, p0

    div-float v7, v5, v6

    .line 128
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/MonoSplineKt;->hermiteDifferential(FFFFFF)F

    move-result p0

    div-float/2addr p0, v6

    return p0

    :cond_2
    move v3, p1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private final getSlope(F[F)V
    .locals 13

    .line 106
    iget-object v0, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    .line 107
    iget-object v2, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v3, v2

    .line 108
    aget v4, v2, v1

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    cmpg-float v5, p1, v4

    if-gez v5, :cond_0

    move p1, v4

    :cond_0
    cmpl-float v4, p1, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    .line 109
    :goto_0
    array-length p1, p2

    if-ge p1, v0, :cond_2

    goto :goto_3

    :cond_2
    move p1, v1

    :goto_1
    if-ge p1, v3, :cond_4

    .line 110
    iget-object v4, p0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    add-int/lit8 v5, p1, 0x1

    aget v6, v4, v5

    cmpg-float v7, v2, v6

    if-gtz v7, :cond_3

    .line 111
    aget v3, v4, p1

    sub-float v7, v6, v3

    sub-float/2addr v2, v3

    div-float v8, v2, v7

    :goto_2
    if-ge v1, v0, :cond_4

    .line 112
    iget-object v2, p0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v3, v2, p1

    aget v9, v3, v1

    .line 113
    aget-object v2, v2, v5

    aget v10, v2, v1

    .line 114
    iget-object v2, p0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v3, v2, p1

    aget v11, v3, v1

    .line 115
    aget-object v2, v2, v5

    aget v12, v2, v1

    .line 116
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/MonoSplineKt;->hermiteDifferential(FFFFFF)F

    move-result v2

    div-float/2addr v2, v7

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move p1, v5

    goto :goto_1

    :cond_4
    :goto_3
    return-void
.end method

.method public static synthetic getSlope$default(Landroidx/compose/animation/core/MonoSpline;FLandroidx/compose/animation/core/AnimationVector;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FLandroidx/compose/animation/core/AnimationVector;I)V

    return-void
.end method

.method private final makeFloatArray(II)[[F
    .locals 2

    new-array p0, p1, [[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    new-array v1, p2, [F

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getPos(FI)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 144
    iget-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    .line 145
    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    .line 146
    iget-object v4, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v5, v4

    const/4 v6, 0x0

    .line 147
    aget v7, v4, v6

    cmpg-float v7, p1, v7

    const/4 v8, -0x1

    if-gtz v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v5, -0x1

    aget v9, v4, v7

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    if-eq v7, v8, :cond_2

    .line 148
    aget-object v2, v2, v7

    aget v2, v2, v1

    aget v3, v4, v7

    sub-float v4, p1, v3

    invoke-direct {v0, v3, v1}, Landroidx/compose/animation/core/MonoSpline;->getSlope(FI)F

    move-result v0

    mul-float/2addr v4, v0

    add-float/2addr v4, v2

    return v4

    :cond_2
    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ge v6, v5, :cond_5

    .line 149
    iget-object v4, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v7, v4, v6

    cmpg-float v8, p1, v7

    if-nez v8, :cond_3

    .line 150
    aget-object v0, v2, v6

    aget v0, v0, v1

    return v0

    :cond_3
    add-int/lit8 v8, v6, 0x1

    .line 151
    aget v4, v4, v8

    cmpg-float v9, p1, v4

    if-gez v9, :cond_4

    sub-float v10, v4, v7

    sub-float v0, p1, v7

    div-float v11, v0, v10

    .line 152
    aget-object v0, v2, v6

    aget v12, v0, v1

    .line 153
    aget-object v0, v2, v8

    aget v13, v0, v1

    .line 154
    aget-object v0, v3, v6

    aget v14, v0, v1

    .line 155
    aget-object v0, v3, v8

    aget v15, v0, v1

    .line 156
    invoke-static/range {v10 .. v15}, Landroidx/compose/animation/core/MonoSplineKt;->hermiteInterpolate(FFFFFF)F

    move-result v0

    return v0

    :cond_4
    move v6, v8

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public final getPos(FLandroidx/compose/animation/core/AnimationVector;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    array-length v3, v2

    iget-object v4, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    aget v6, v2, v5

    cmpg-float v6, p1, v6

    const/4 v7, -0x1

    if-gtz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v3, -0x1

    aget v8, v2, v6

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    if-eq v6, v7, :cond_2

    aget v2, v2, v6

    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    invoke-direct {v0, v2, v3}, Landroidx/compose/animation/core/MonoSpline;->getSlope(F[F)V

    :goto_1
    if-ge v5, v4, :cond_5

    iget-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v2, v2, v6

    aget v2, v2, v5

    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v3, v3, v6

    sub-float v3, p1, v3

    iget-object v7, v0, Landroidx/compose/animation/core/MonoSpline;->slopeTemp:[F

    aget v7, v7, v5

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    invoke-virtual {v1, v5, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    move/from16 v2, p3

    :goto_2
    if-ge v2, v3, :cond_5

    iget-object v6, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    aget v7, v6, v2

    cmpg-float v8, p1, v7

    if-nez v8, :cond_3

    :goto_3
    if-ge v5, v4, :cond_5

    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v3, v3, v2

    aget v3, v3, v5

    invoke-virtual {v1, v5, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v2, 0x1

    aget v6, v6, v8

    cmpg-float v9, p1, v6

    if-gez v9, :cond_4

    sub-float v10, v6, v7

    sub-float v3, p1, v7

    div-float v11, v3, v10

    :goto_4
    if-ge v5, v4, :cond_5

    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    aget-object v6, v3, v2

    aget v12, v6, v5

    aget-object v3, v3, v8

    aget v13, v3, v5

    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    aget-object v6, v3, v2

    aget v14, v6, v5

    aget-object v3, v3, v8

    aget v15, v3, v5

    invoke-static/range {v10 .. v15}, Landroidx/compose/animation/core/MonoSplineKt;->hermiteInterpolate(FFFFFF)F

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move v2, v8

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final getSlope(FLandroidx/compose/animation/core/AnimationVector;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroidx/compose/animation/core/MonoSpline;->timePoints:[F

    iget-object v3, v0, Landroidx/compose/animation/core/MonoSpline;->values:[[F

    iget-object v0, v0, Landroidx/compose/animation/core/MonoSpline;->tangents:[[F

    array-length v4, v2

    const/4 v5, 0x0

    aget-object v6, v3, v5

    array-length v6, v6

    aget v7, v2, v5

    cmpg-float v7, p1, v7

    const/4 v8, -0x1

    if-gtz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v4, -0x1

    aget v9, v2, v7

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_1

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_0
    if-eq v7, v8, :cond_3

    aget-object v0, v0, v7

    array-length v2, v0

    if-ge v2, v6, :cond_2

    goto :goto_4

    :cond_2
    :goto_1
    if-ge v5, v6, :cond_5

    aget v2, v0, v5

    invoke-virtual {v1, v5, v2}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    move/from16 v7, p3

    :goto_2
    if-ge v7, v4, :cond_5

    add-int/lit8 v8, v7, 0x1

    aget v9, v2, v8

    cmpg-float v10, p1, v9

    if-gtz v10, :cond_4

    aget v2, v2, v7

    sub-float v10, v9, v2

    sub-float v2, p1, v2

    div-float v11, v2, v10

    :goto_3
    if-ge v5, v6, :cond_5

    aget-object v2, v3, v7

    aget v12, v2, v5

    aget-object v2, v3, v8

    aget v13, v2, v5

    aget-object v2, v0, v7

    aget v14, v2, v5

    aget-object v2, v0, v8

    aget v15, v2, v5

    invoke-static/range {v10 .. v15}, Landroidx/compose/animation/core/MonoSplineKt;->hermiteDifferential(FFFFFF)F

    move-result v2

    div-float/2addr v2, v10

    invoke-virtual {v1, v5, v2}, Landroidx/compose/animation/core/AnimationVector;->set$animation_core(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v7, v8

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method
