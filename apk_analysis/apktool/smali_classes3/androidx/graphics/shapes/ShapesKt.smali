.class public final Landroidx/graphics/shapes/ShapesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;I)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 7

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Landroidx/graphics/shapes/ShapesKt;->circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    if-lt p1, p0, :cond_0

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result p0

    int-to-float v0, p1

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float v1, p2, p0

    new-instance v4, Landroidx/graphics/shapes/CornerRounding;

    const/4 p0, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v4, p2, v2, p0, v0}, Landroidx/graphics/shapes/CornerRounding;-><init>(FFILjh2;)V

    const/16 v6, 0x20

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v0, p1

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default(IFFFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;ILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Circle must have at least three vertices"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic circle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const/16 v0, 0x8

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v1, 0x0

    if-eqz p6, :cond_2

    move p3, v1

    :cond_2
    and-int/2addr p5, v0

    if-eqz p5, :cond_3

    move p4, v1

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/graphics/shapes/ShapesKt;->circle(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/ShapesKt;->pill$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/ShapesKt;->pill$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/ShapesKt;->pill$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/ShapesKt;->pill$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/ShapesKt;->pill$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-lez v0, :cond_0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    div-float p0, p2, p0

    add-float v0, p1, p4

    add-float v1, p0, p5

    neg-float v2, p1

    add-float v2, v2, p4

    neg-float v3, p0

    add-float v3, v3, p5

    const/16 v4, 0x8

    new-array v5, v4, [F

    const/4 v4, 0x0

    aput v0, v5, v4

    const/4 v4, 0x1

    aput v1, v5, v4

    const/4 v4, 0x2

    aput v2, v5, v4

    const/4 v4, 0x3

    aput v1, v5, v4

    const/4 v1, 0x4

    aput v2, v5, v1

    const/4 v1, 0x5

    aput v3, v5, v1

    const/4 v1, 0x6

    aput v0, v5, v1

    const/4 v0, 0x7

    aput v3, v5, v0

    new-instance v6, Landroidx/graphics/shapes/CornerRounding;

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-direct {v6, p0, p3}, Landroidx/graphics/shapes/CornerRounding;-><init>(FF)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v5 .. v11}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon$default([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Pill shapes must have positive width and height"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic pill$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move p7, v0

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_4
    move p7, p5

    move p6, p4

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    :goto_0
    invoke-static/range {p2 .. p7}, Landroidx/graphics/shapes/ShapesKt;->pill(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFFFF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7fe

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7fc

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFI)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7f8

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7f0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7e0

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x7c0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "FFIF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x780

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "FFIF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;F)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x700

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "FFIF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x600

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "FFIF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FFF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x400

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v13}, Landroidx/graphics/shapes/ShapesKt;->pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "FFIF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FFFF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    cmpl-float v0, p2, p0

    if-lez v0, :cond_3

    cmpl-float p0, p4, p0

    if-lez p0, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p4, p0

    if-gtz p0, :cond_2

    if-nez p7, :cond_1

    if-eqz p6, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p3}, Lkx6;->n(II)Ly74;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lw74;->b()Lx74;

    move-result-object p0

    :goto_0
    iget-boolean v1, p0, Lx74;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lu74;->nextInt()I

    filled-new-array/range {p5 .. p6}, [Landroidx/graphics/shapes/CornerRounding;

    move-result-object v1

    invoke-static {v1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    :goto_1
    move v2, p1

    move v3, p2

    move v1, p3

    move v4, p4

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    goto :goto_2

    :cond_1
    move-object/from16 v0, p7

    goto :goto_1

    :goto_2
    invoke-static/range {v1 .. v8}, Landroidx/graphics/shapes/ShapesKt;->pillStarVerticesFromNumVerts(IFFFFFFF)[F

    move-result-object p0

    invoke-static {p0, p5, v0, v7, v8}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "innerRadius must be between 0 and 1"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string p0, "Pill shapes must have positive width and height"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic pillStar$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 2

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    const/16 p3, 0x8

    :cond_2
    and-int/lit8 p13, p12, 0x8

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p13, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    sget-object p5, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    const/4 v1, 0x0

    if-eqz p13, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p7, v1

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    const/4 v0, 0x0

    if-eqz p13, :cond_8

    move p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    move p13, v0

    move p11, p9

    move p12, p10

    move-object p9, p7

    move p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    goto :goto_0

    :cond_a
    move p13, p11

    move p12, p10

    move p10, p8

    move p11, p9

    move-object p8, p6

    move-object p9, p7

    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move p3, p1

    :goto_0
    invoke-static/range {p2 .. p13}, Landroidx/graphics/shapes/ShapesKt;->pillStar(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFIFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFFF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method private static final pillStarVerticesFromNumVerts(IFFFFFFF)[F
    .locals 36

    move/from16 v0, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, p2, p1

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    :cond_0
    sub-float v4, p1, p2

    cmpg-float v5, v4, v3

    if-gez v5, :cond_1

    move v4, v3

    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v2, v5

    div-float v7, v4, v5

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getTwoPi()F

    move-result v8

    mul-float/2addr v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v10, p4

    invoke-static {v0, v9, v10}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v9

    mul-float/2addr v9, v8

    mul-float v8, v5, v4

    mul-float v10, v5, v2

    add-float/2addr v10, v8

    add-float/2addr v10, v9

    const/16 v8, 0xb

    new-array v11, v8, [F

    const/4 v12, 0x0

    aput v3, v11, v12

    const/4 v13, 0x1

    aput v6, v11, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v9, v13

    add-float v13, v6, v9

    const/4 v14, 0x2

    aput v13, v11, v14

    add-float/2addr v13, v4

    const/4 v15, 0x3

    aput v13, v11, v15

    add-float/2addr v13, v9

    const/4 v15, 0x4

    aput v13, v11, v15

    add-float/2addr v13, v2

    const/16 v16, 0x5

    aput v13, v11, v16

    add-float/2addr v13, v9

    const/16 v16, 0x6

    aput v13, v11, v16

    add-float/2addr v13, v4

    const/16 v16, 0x7

    aput v13, v11, v16

    add-float/2addr v13, v9

    const/16 v9, 0x8

    aput v13, v11, v9

    const/16 v9, 0x9

    add-float/2addr v13, v6

    aput v13, v11, v9

    const/16 v9, 0xa

    aput v10, v11, v9

    mul-int/lit8 v9, p0, 0x2

    int-to-float v13, v9

    div-float v13, v10, v13

    mul-float v16, p5, v10

    mul-int/lit8 v15, p0, 0x4

    new-array v15, v15, [F

    move/from16 p1, v4

    invoke-static {v7, v6}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v3

    move/from16 p2, v5

    neg-float v5, v7

    move/from16 v18, v13

    invoke-static {v5, v6}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v12

    move/from16 v19, v8

    neg-float v8, v6

    move/from16 v20, v14

    move-object/from16 p0, v15

    invoke-static {v5, v8}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v14

    move/from16 v21, v1

    invoke-static {v7, v8}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v0

    move/from16 v22, v2

    move/from16 v25, v6

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    :goto_0
    if-ge v2, v9, :cond_5

    rem-float v27, v16, v10

    cmpg-float v28, v27, v17

    if-gez v28, :cond_2

    const/16 v24, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v28, v24, 0x1

    rem-int/lit8 v28, v28, 0xb

    aget v29, v11, v28

    cmpl-float v30, v27, v29

    if-ltz v30, :cond_3

    add-int/lit8 v17, v28, 0x1

    rem-int/lit8 v17, v17, 0xb

    aget v25, v11, v17

    move/from16 v24, v28

    move/from16 v17, v29

    goto :goto_1

    :cond_3
    sub-float v27, v27, v17

    sub-float v28, v25, v17

    div-float v27, v27, v28

    if-eqz v23, :cond_4

    mul-float v28, v21, p3

    move/from16 v35, v28

    move/from16 v28, v2

    move/from16 v2, v35

    goto :goto_2

    :cond_4
    move/from16 v28, v2

    move/from16 v2, v21

    :goto_2
    packed-switch v24, :pswitch_data_0

    mul-float v27, v27, v6

    move/from16 p5, v5

    add-float v5, v27, v8

    invoke-static {v2, v5}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v29

    move v2, v6

    goto/16 :goto_3

    :pswitch_0
    move/from16 p5, v5

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v5

    const/high16 v29, 0x3fc00000    # 1.5f

    mul-float v5, v5, v29

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v29

    mul-float v29, v29, v27

    div-float v29, v29, p2

    add-float v30, v29, v5

    const/16 v33, 0x4

    const/16 v34, 0x0

    const-wide/16 v31, 0x0

    move/from16 v29, v2

    move v2, v6

    invoke-static/range {v29 .. v34}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6, v0, v1}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide v29

    goto/16 :goto_3

    :pswitch_1
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    mul-float v27, v27, p1

    add-float v6, v27, p5

    neg-float v5, v5

    invoke-static {v6, v5}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v29

    goto/16 :goto_3

    :pswitch_2
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v6

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v29

    mul-float v29, v29, v27

    div-float v29, v29, p2

    add-float v30, v29, v6

    const/16 v33, 0x4

    const/16 v34, 0x0

    const-wide/16 v31, 0x0

    move/from16 v29, v5

    invoke-static/range {v29 .. v34}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6, v14, v15}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide v29

    goto/16 :goto_3

    :pswitch_3
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    neg-float v5, v5

    mul-float v27, v27, v22

    sub-float v6, v2, v27

    invoke-static {v5, v6}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v29

    goto :goto_3

    :pswitch_4
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v6

    div-float v6, v6, p2

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v29

    mul-float v29, v29, v27

    div-float v29, v29, p2

    add-float v30, v29, v6

    const/16 v33, 0x4

    const/16 v34, 0x0

    const-wide/16 v31, 0x0

    move/from16 v29, v5

    invoke-static/range {v29 .. v34}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6, v12, v13}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide v29

    goto :goto_3

    :pswitch_5
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    mul-float v27, v27, p1

    sub-float v6, v7, v27

    invoke-static {v6, v5}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v29

    goto :goto_3

    :pswitch_6
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v6

    mul-float v6, v6, v27

    div-float v30, v6, p2

    const/16 v33, 0x4

    const/16 v34, 0x0

    const-wide/16 v31, 0x0

    move/from16 v29, v5

    invoke-static/range {v29 .. v34}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Landroidx/graphics/shapes/PointKt;->plus-ybeJwSQ(JJ)J

    move-result-wide v29

    goto :goto_3

    :pswitch_7
    move/from16 p5, v5

    move v5, v2

    move v2, v6

    mul-float v6, v27, v2

    invoke-static {v5, v6}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v29

    :goto_3
    add-int/lit8 v5, v26, 0x1

    invoke-static/range {v29 .. v30}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v6

    add-float v6, v6, p6

    aput v6, p0, v26

    add-int/lit8 v26, v26, 0x2

    invoke-static/range {v29 .. v30}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v6

    add-float v6, v6, p7

    aput v6, p0, v5

    add-float v16, v16, v18

    xor-int/lit8 v23, v23, 0x1

    add-int/lit8 v5, v28, 0x1

    move v6, v2

    move v2, v5

    move/from16 v5, p5

    goto/16 :goto_0

    :cond_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final rectangle(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "FF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p1, p0

    sub-float v0, p5, p1

    div-float/2addr p2, p0

    sub-float p0, p6, p2

    add-float/2addr p1, p5

    add-float/2addr p2, p6

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    aput p2, v1, v2

    const/4 p2, 0x4

    aput v0, v1, p2

    const/4 p2, 0x5

    aput p0, v1, p2

    const/4 p2, 0x6

    aput p1, v1, p2

    const/4 p1, 0x7

    aput p0, v1, p1

    invoke-static {v1, p3, p4, p5, p6}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic rectangle$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    sget-object p3, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    const/4 p4, 0x0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    const/4 v0, 0x0

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-static/range {p0 .. p6}, Landroidx/graphics/shapes/ShapesKt;->rectangle(Landroidx/graphics/shapes/RoundedPolygon$Companion;FFLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;I)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xfe

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xf8

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xf0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xe0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "IFF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;F)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "IFF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;F)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0x80

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v10}, Landroidx/graphics/shapes/ShapesKt;->star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0
.end method

.method public static final star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon$Companion;",
            "IFF",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Landroidx/graphics/shapes/CornerRounding;",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/CornerRounding;",
            ">;FF)",
            "Landroidx/graphics/shapes/RoundedPolygon;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    cmpg-float v0, p2, p0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    cmpg-float p0, p3, p0

    if-lez p0, :cond_2

    cmpl-float p0, p3, p2

    if-gez p0, :cond_1

    if-nez p6, :cond_0

    if-eqz p5, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lkx6;->n(II)Ly74;

    move-result-object p0

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lw74;->b()Lx74;

    move-result-object p0

    :goto_0
    iget-boolean v0, p0, Lx74;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu74;->nextInt()I

    filled-new-array {p4, p5}, [Landroidx/graphics/shapes/CornerRounding;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p6}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p7, p8}, Landroidx/graphics/shapes/ShapesKt;->starVerticesFromNumVerts(IFFFF)[F

    move-result-object p0

    invoke-static {p0, p4, p6, p7, p8}, Landroidx/graphics/shapes/RoundedPolygonKt;->RoundedPolygon([FLandroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "innerRadius must be less than radius"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string p0, "Star radii must both be greater than 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public static synthetic star$default(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FFILjava/lang/Object;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_2

    sget-object v3, Landroidx/graphics/shapes/CornerRounding;->Unrounded:Landroidx/graphics/shapes/CornerRounding;

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_5

    :cond_5
    move v6, p7

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move/from16 p10, v7

    :goto_6
    move-object p2, p0

    move p3, p1

    move p4, v1

    move p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v6

    goto :goto_7

    :cond_6
    move/from16 p10, p8

    goto :goto_6

    :goto_7
    invoke-static/range {p2 .. p10}, Landroidx/graphics/shapes/ShapesKt;->star(Landroidx/graphics/shapes/RoundedPolygon$Companion;IFFLandroidx/graphics/shapes/CornerRounding;Landroidx/graphics/shapes/CornerRounding;Ljava/util/List;FF)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v0

    return-object v0
.end method

.method private static final starVerticesFromNumVerts(IFFFF)[F
    .locals 12

    mul-int/lit8 v0, p0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v3

    int-to-float v4, p0

    div-float/2addr v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    int-to-float v5, v1

    mul-float v7, v3, v5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-wide/16 v8, 0x0

    move v6, p1

    invoke-static/range {v6 .. v11}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v7

    add-int/lit8 v3, v2, 0x1

    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v5

    add-float/2addr v5, p3

    aput v5, v0, v2

    add-int/lit8 v5, v2, 0x2

    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v6

    add-float v6, v6, p4

    aput v6, v0, v3

    invoke-static {}, Landroidx/graphics/shapes/Utils;->getFloatPi()F

    move-result v3

    div-float/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float v7, v3, v4

    const-wide/16 v8, 0x0

    move v6, p2

    invoke-static/range {v6 .. v11}, Landroidx/graphics/shapes/Utils;->radialToCartesian-L6JJ3z0$default(FFJILjava/lang/Object;)J

    move-result-wide v3

    add-int/lit8 v6, v2, 0x3

    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v7

    add-float/2addr v7, p3

    aput v7, v0, v5

    add-int/lit8 v2, v2, 0x4

    invoke-static {v3, v4}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v3

    add-float v3, v3, p4

    aput v3, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
