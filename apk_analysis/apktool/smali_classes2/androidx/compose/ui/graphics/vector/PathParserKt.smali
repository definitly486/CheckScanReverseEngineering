.class public final Landroidx/compose/ui/graphics/vector/PathParserKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EmptyArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/ui/graphics/vector/PathParserKt;->EmptyArray:[F

    return-void
.end method

.method private static final arcToBezier(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V
    .locals 46

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double/2addr v13, v7

    mul-double/2addr v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v9, v11

    int-to-double v11, v4

    div-double v11, p17, v11

    const/16 v23, 0x0

    move-wide/from16 v29, v2

    move-wide/from16 v25, v9

    move-wide/from16 v27, v17

    move/from16 v2, v23

    move-wide/from16 v9, p9

    move-wide/from16 v17, p11

    move-wide/from16 v23, p15

    :goto_0
    if-ge v2, v4, :cond_0

    add-double v31, v23, v11

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, v37, p1

    mul-double v39, v19, v33

    sub-double v0, v37, v39

    mul-double v37, p5, v7

    mul-double v37, v37, v35

    add-double v37, v37, p3

    mul-double v39, v21, v33

    move/from16 p7, v2

    add-double v2, v39, v37

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v35, v33

    sub-double v23, v31, v23

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v23, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v41, v35, v39

    mul-double v41, v41, v35

    add-double v41, v41, v29

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v35

    const-wide/high16 v41, 0x3ff0000000000000L    # 1.0

    sub-double v35, v35, v41

    mul-double v35, v35, v23

    div-double v35, v35, v39

    mul-double v27, v27, v35

    add-double v9, v27, v9

    mul-double v25, v25, v35

    move/from16 v23, v4

    move-wide/from16 v27, v5

    add-double v4, v25, v17

    mul-double v17, v35, v37

    move-wide/from16 p13, v7

    sub-double v6, v0, v17

    mul-double v35, v35, v33

    move-wide/from16 p17, v11

    sub-double v11, v2, v35

    double-to-float v8, v9

    double-to-float v4, v4

    double-to-float v5, v6

    double-to-float v6, v11

    double-to-float v7, v0

    double-to-float v9, v2

    move-object/from16 v39, p0

    move/from16 v41, v4

    move/from16 v42, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v40, v8

    move/from16 v45, v9

    invoke-interface/range {v39 .. v45}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v4, p7, 0x1

    move-wide/from16 v7, p13

    move-wide/from16 v11, p17

    move-wide v9, v0

    move-wide/from16 v17, v2

    move v2, v4

    move/from16 v4, v23

    move-wide/from16 v5, v27

    move-wide/from16 v23, v31

    move-wide/from16 v25, v33

    move-wide/from16 v27, v37

    move-wide/from16 v0, p5

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private static final drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V
    .locals 35

    move-wide/from16 v1, p1

    move-wide/from16 v5, p5

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double v3, p13, v3

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v13, v3, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v9, v1, v3

    mul-double v11, p3, v7

    add-double/2addr v11, v9

    div-double v11, v11, p9

    neg-double v9, v1

    mul-double/2addr v9, v7

    mul-double v15, p3, v3

    add-double/2addr v15, v9

    div-double v15, v15, p11

    mul-double v9, v5, v3

    mul-double v17, p7, v7

    add-double v17, v17, v9

    div-double v17, v17, p9

    neg-double v9, v5

    mul-double/2addr v9, v7

    mul-double v19, p7, v3

    add-double v19, v19, v9

    div-double v19, v19, p11

    sub-double v9, v11, v17

    sub-double v21, v15, v19

    add-double v23, v11, v17

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v23, v23, v25

    add-double v27, v15, v19

    div-double v27, v27, v25

    mul-double v25, v9, v9

    mul-double v29, v21, v21

    add-double v29, v29, v25

    const-wide/16 v25, 0x0

    cmpg-double v0, v29, v25

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    div-double v31, v31, v29

    const-wide/high16 v33, 0x3fd0000000000000L    # 0.25

    sub-double v31, v31, v33

    cmpg-double v0, v31, v25

    if-gez v0, :cond_1

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide v7, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v3, v7

    double-to-float v0, v3

    float-to-double v3, v0

    mul-double v9, p9, v3

    mul-double v11, p11, v3

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move-wide/from16 v7, p7

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-static/range {v0 .. v16}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    return-void

    :cond_1
    move/from16 v0, p16

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double/2addr v9, v1

    mul-double v1, v1, v21

    move/from16 v5, p15

    if-ne v5, v0, :cond_2

    sub-double v23, v23, v1

    add-double v27, v27, v9

    goto :goto_0

    :cond_2
    add-double v23, v23, v1

    sub-double v27, v27, v9

    :goto_0
    sub-double v1, v15, v27

    sub-double v11, v11, v23

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v15

    sub-double v1, v19, v27

    sub-double v5, v17, v23

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    sub-double/2addr v1, v15

    cmpl-double v5, v1, v25

    if-ltz v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eq v0, v6, :cond_4

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v5, :cond_5

    sub-double/2addr v1, v9

    :cond_4
    :goto_2
    move-wide/from16 v17, v1

    goto :goto_3

    :cond_5
    add-double/2addr v1, v9

    goto :goto_2

    :goto_3
    mul-double v23, v23, p9

    mul-double v27, v27, p11

    mul-double v0, v23, v3

    mul-double v5, v27, v7

    sub-double v1, v0, v5

    mul-double v23, v23, v7

    mul-double v27, v27, v3

    add-double v3, v27, v23

    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    invoke-static/range {v0 .. v18}, Landroidx/compose/ui/graphics/vector/PathParserKt;->arcToBezier(Landroidx/compose/ui/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method public static final getEmptyArray()[F
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/vector/PathParserKt;->EmptyArray:[F

    return-object v0
.end method

.method public static final toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;",
            "Landroidx/compose/ui/graphics/Path;",
            ")",
            "Landroidx/compose/ui/graphics/Path;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->getFillType-Rg-k1Os()I

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->rewind()V

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode;

    :goto_0
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v3

    move v3, v9

    move v4, v3

    move v11, v4

    move v12, v11

    move/from16 v18, v12

    move/from16 v19, v18

    :goto_1
    if-ge v10, v8, :cond_18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroidx/compose/ui/graphics/vector/PathNode;

    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    if-eqz v5, :cond_1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Path;->close()V

    move/from16 v21, v8

    move/from16 v24, v9

    move/from16 v20, v10

    move-object v0, v13

    move/from16 v3, v18

    move v11, v3

    move/from16 v4, v19

    :goto_2
    move v12, v4

    goto/16 :goto_e

    :cond_1
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    if-eqz v5, :cond_2

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDx()F

    move-result v5

    add-float/2addr v5, v11

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDy()F

    move-result v6

    add-float/2addr v6, v12

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDx()F

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;->getDy()F

    move-result v2

    invoke-interface {v1, v7, v2}, Landroidx/compose/ui/graphics/Path;->relativeMoveTo(FF)V

    :goto_3
    move v11, v5

    move/from16 v18, v11

    move v12, v6

    move/from16 v19, v12

    :goto_4
    move/from16 v21, v8

    move/from16 v24, v9

    move/from16 v20, v10

    move-object v0, v13

    goto/16 :goto_e

    :cond_2
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v5, :cond_3

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    move-result v2

    invoke-interface {v1, v7, v2}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_3
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    if-eqz v5, :cond_4

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    move-result v6

    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    move-result v5

    add-float/2addr v5, v11

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    move-result v2

    :goto_5
    add-float/2addr v2, v12

    :goto_6
    move v12, v2

    move v11, v5

    goto :goto_4

    :cond_4
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    if-eqz v5, :cond_5

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    move-result v6

    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    move-result v2

    goto :goto_6

    :cond_5
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    if-eqz v5, :cond_6

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    move-result v5

    invoke-interface {v1, v5, v9}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    move-result v2

    add-float/2addr v2, v11

    :goto_7
    move v11, v2

    goto :goto_4

    :cond_6
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    if-eqz v5, :cond_7

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    move-result v5

    invoke-interface {v1, v5, v12}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    move-result v2

    goto :goto_7

    :cond_7
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    if-eqz v5, :cond_8

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    move-result v5

    invoke-interface {v1, v9, v5}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    move-result v2

    add-float/2addr v2, v12

    :goto_8
    move v12, v2

    goto/16 :goto_4

    :cond_8
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    if-eqz v5, :cond_9

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    move-result v5

    invoke-interface {v1, v11, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    move-result v2

    goto :goto_8

    :cond_9
    instance-of v5, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    if-eqz v5, :cond_a

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx1()F

    move-result v2

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy1()F

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    move-result v4

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    move-result v7

    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    move-result v1

    add-float/2addr v1, v11

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    move-result v2

    add-float/2addr v2, v12

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    move-result v3

    add-float/2addr v3, v11

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    move-result v4

    :goto_9
    add-float/2addr v4, v12

    :goto_a
    move v11, v3

    move v12, v4

    move/from16 v21, v8

    move/from16 v24, v9

    move/from16 v20, v10

    move-object v0, v13

    move v3, v1

    move v4, v2

    goto/16 :goto_e

    :cond_a
    instance-of v1, v13, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    if-eqz v1, :cond_b

    move-object v11, v13

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX1()F

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY1()F

    move-result v3

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    move-result v1

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    move-result v3

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    move-result v4

    goto :goto_a

    :cond_b
    instance-of v1, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    if-eqz v1, :cond_d

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    move-result v1

    if-eqz v1, :cond_c

    sub-float v1, v11, v3

    sub-float v2, v12, v4

    move v3, v2

    move v2, v1

    goto :goto_b

    :cond_c
    move v2, v9

    move v3, v2

    :goto_b
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    move-result v4

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    move-result v1

    add-float/2addr v1, v11

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    move-result v2

    add-float/2addr v2, v12

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    move-result v3

    add-float/2addr v3, v11

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    move-result v4

    goto/16 :goto_9

    :cond_d
    instance-of v1, v13, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-float/2addr v11, v5

    sub-float/2addr v11, v3

    mul-float/2addr v5, v12

    sub-float v12, v5, v4

    :cond_e
    move v2, v11

    move v3, v12

    move-object v11, v13

    check-cast v11, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    move-result v7

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    move-result v2

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    move-result v3

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    move-result v5

    move v11, v4

    move v12, v5

    :goto_c
    move/from16 v21, v8

    move/from16 v24, v9

    move/from16 v20, v10

    move-object v0, v13

    move v4, v3

    move v3, v2

    goto/16 :goto_e

    :cond_f
    move-object/from16 v1, p1

    instance-of v6, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    if-eqz v6, :cond_10

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx1()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy1()F

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx2()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy2()F

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Path;->relativeQuadraticTo(FFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx1()F

    move-result v3

    add-float/2addr v3, v11

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy1()F

    move-result v4

    add-float/2addr v4, v12

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDx2()F

    move-result v5

    add-float/2addr v5, v11

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;->getDy2()F

    move-result v2

    goto/16 :goto_5

    :cond_10
    instance-of v6, v13, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    if-eqz v6, :cond_11

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX1()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY1()F

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX2()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY2()F

    move-result v6

    invoke-interface {v1, v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Path;->quadraticTo(FFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX1()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY1()F

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getX2()F

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;->getY2()F

    move-result v2

    goto/16 :goto_6

    :cond_11
    instance-of v6, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    if-eqz v6, :cond_13

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad()Z

    move-result v2

    if-eqz v2, :cond_12

    sub-float v2, v11, v3

    sub-float v3, v12, v4

    goto :goto_d

    :cond_12
    move v2, v9

    move v3, v2

    :goto_d
    move-object v4, v13

    check-cast v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDx()F

    move-result v5

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDy()F

    move-result v6

    invoke-interface {v1, v2, v3, v5, v6}, Landroidx/compose/ui/graphics/Path;->relativeQuadraticTo(FFFF)V

    add-float/2addr v2, v11

    add-float/2addr v3, v12

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDx()F

    move-result v5

    add-float/2addr v5, v11

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;->getDy()F

    move-result v4

    add-float/2addr v4, v12

    move v12, v4

    move v11, v5

    goto/16 :goto_c

    :cond_13
    instance-of v6, v13, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    if-eqz v6, :cond_15

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode;->isQuad()Z

    move-result v2

    if-eqz v2, :cond_14

    mul-float/2addr v11, v5

    sub-float/2addr v11, v3

    mul-float/2addr v5, v12

    sub-float v12, v5, v4

    :cond_14
    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getY()F

    move-result v4

    invoke-interface {v1, v11, v12, v3, v4}, Landroidx/compose/ui/graphics/Path;->quadraticTo(FFFF)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;->getY()F

    move-result v2

    move v0, v11

    move v11, v3

    move v3, v0

    move/from16 v21, v8

    move/from16 v24, v9

    move/from16 v20, v10

    move v4, v12

    move-object v0, v13

    move v12, v2

    goto/16 :goto_e

    :cond_15
    instance-of v2, v13, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    if-eqz v2, :cond_16

    move-object v2, v13

    check-cast v2, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getArcStartDx()F

    move-result v3

    add-float/2addr v3, v11

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getArcStartDy()F

    move-result v4

    add-float/2addr v4, v12

    float-to-double v5, v11

    float-to-double v11, v12

    move-wide v14, v5

    float-to-double v6, v3

    move v5, v8

    move/from16 v16, v9

    float-to-double v8, v4

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getHorizontalEllipseRadius()F

    move-result v0

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getVerticalEllipseRadius()F

    move-result v0

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->getTheta()F

    move-result v0

    float-to-double v0, v0

    move/from16 v17, v16

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isMoreThanHalf()Z

    move-result v16

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;->isPositiveArc()Z

    move-result v2

    move/from16 v24, v17

    move/from16 v17, v2

    move-wide/from16 v25, v0

    move-object/from16 v1, p1

    move-object v0, v13

    move-wide/from16 v27, v22

    move/from16 v22, v3

    move/from16 v23, v4

    move-wide v2, v14

    move-wide/from16 v14, v25

    move-wide/from16 v25, v20

    move/from16 v21, v5

    move/from16 v20, v10

    move-wide v4, v11

    move-wide/from16 v10, v25

    move-wide/from16 v12, v27

    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    move/from16 v3, v22

    move v11, v3

    move/from16 v4, v23

    goto/16 :goto_2

    :cond_16
    move/from16 v21, v8

    move/from16 v24, v9

    move/from16 v20, v10

    move-object v0, v13

    instance-of v1, v0, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    if-eqz v1, :cond_17

    float-to-double v2, v11

    float-to-double v4, v12

    move-object/from16 v22, v0

    check-cast v22, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartX()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartY()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getHorizontalEllipseRadius()F

    move-result v1

    float-to-double v10, v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getVerticalEllipseRadius()F

    move-result v1

    float-to-double v12, v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getTheta()F

    move-result v1

    float-to-double v14, v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isMoreThanHalf()Z

    move-result v16

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->isPositiveArc()Z

    move-result v17

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/PathParserKt;->drawArc(Landroidx/compose/ui/graphics/Path;DDDDDDDZZ)V

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartX()F

    move-result v1

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;->getArcStartY()F

    move-result v2

    move v3, v1

    move v11, v3

    move v4, v2

    goto/16 :goto_2

    :goto_e
    add-int/lit8 v10, v20, 0x1

    move-object/from16 v1, p1

    move-object v2, v0

    move/from16 v8, v21

    move/from16 v9, v24

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lme0;->e()V

    const/4 v0, 0x0

    return-object v0

    :cond_18
    return-object p1
.end method

.method public static synthetic toPath$default(Ljava/util/List;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Landroidx/compose/ui/graphics/Path;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/vector/PathParserKt;->toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final toRadians(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    return-wide p0
.end method
