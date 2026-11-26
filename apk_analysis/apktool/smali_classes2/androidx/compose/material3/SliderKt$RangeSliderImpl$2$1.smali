.class final Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt;->RangeSliderImpl(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/RangeSliderState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Ldm3;Ldm3;Ldm3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $state:Landroidx/compose/material3/RangeSliderState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/RangeSliderState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->measure_3p2s80s$lambda$4(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$4(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 14

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v0, p9

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v7, p9

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v7 .. v13}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    const-string v6, "Collection contains no element matching the predicate."

    if-ge v5, v4, :cond_c

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/material3/RangeSliderComponents;->STARTTHUMB:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v9, v10, :cond_b

    invoke-interface {v8, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    move v9, v7

    :goto_1
    if-ge v9, v5, :cond_a

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/material3/RangeSliderComponents;->ENDTHUMB:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v11, v12, :cond_9

    invoke-interface {v10, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/material3/RangeSliderComponents;->TRACK:Landroidx/compose/material3/RangeSliderComponents;

    if-ne v11, v12, :cond_7

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    neg-int v1, v4

    const/4 v11, 0x2

    div-int/2addr v1, v11

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide/from16 v21, v2

    move v3, v1

    move-wide/from16 v1, v21

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    move-result-wide v12

    const/16 v18, 0xb

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    div-int/2addr v4, v11

    add-int/2addr v4, v2

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v3, v4}, Landroidx/compose/material3/RangeSliderState;->setTotalWidth$material3(I)V

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v3}, Landroidx/compose/material3/RangeSliderState;->updateMinMaxPx$material3()V

    iget-object v3, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v3}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeStartAsFraction$material3()F

    move-result v3

    iget-object v5, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v5}, Landroidx/compose/material3/RangeSliderState;->getTickFractions$material3()[F

    move-result-object v5

    invoke-static {v5}, Lyr;->J([F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    iget-object v5, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v5}, Landroidx/compose/material3/RangeSliderState;->getTickFractions$material3()[F

    move-result-object v5

    invoke-static {v5}, Lyr;->U([F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    move v5, v7

    goto :goto_4

    :cond_1
    :goto_3
    move v5, v6

    :goto_4
    iget-object v10, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v10}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeEndAsFraction$material3()F

    move-result v10

    iget-object v12, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v12}, Landroidx/compose/material3/RangeSliderState;->getTickFractions$material3()[F

    move-result-object v12

    invoke-static {v12}, Lyr;->J([F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v10, v12}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v12}, Landroidx/compose/material3/RangeSliderState;->getTickFractions$material3()[F

    move-result-object v12

    invoke-static {v12}, Lyr;->U([F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v10, v12}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_5

    :cond_2
    move v6, v7

    :cond_3
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    div-int/2addr v12, v11

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getCornerSizeAlignmentLine()Landroidx/compose/ui/layout/VerticalAlignmentLine;

    move-result-object v13

    invoke-interface {v1, v13}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v13

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_4

    move v7, v13

    :cond_4
    iget-object v13, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v13}, Landroidx/compose/material3/RangeSliderState;->getSteps()I

    move-result v13

    if-lez v13, :cond_5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    mul-int/lit8 v13, v7, 0x2

    sub-int/2addr v5, v13

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Lw65;->b(F)I

    move-result v3

    add-int/2addr v3, v7

    :goto_6
    move v14, v3

    goto :goto_7

    :cond_5
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-static {v5}, Lw65;->b(F)I

    move-result v3

    goto :goto_6

    :goto_7
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    invoke-static {v3, v11, v9}, Lug;->b(IILandroidx/compose/ui/layout/Placeable;)I

    move-result v3

    iget-object v0, v0, Landroidx/compose/material3/SliderKt$RangeSliderImpl$2$1;->$state:Landroidx/compose/material3/RangeSliderState;

    invoke-virtual {v0}, Landroidx/compose/material3/RangeSliderState;->getSteps()I

    move-result v0

    if-lez v0, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v7, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, v10

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    add-int/2addr v0, v7

    :goto_8
    move/from16 v16, v0

    goto :goto_9

    :cond_6
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    int-to-float v3, v3

    add-float/2addr v0, v3

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    goto :goto_8

    :goto_9
    invoke-static {v2, v11, v1}, Ltg;->b(IILandroidx/compose/ui/layout/Placeable;)I

    move-result v13

    invoke-static {v2, v11, v8}, Ltg;->b(IILandroidx/compose/ui/layout/Placeable;)I

    move-result v15

    invoke-static {v2, v11, v9}, Ltg;->b(IILandroidx/compose/ui/layout/Placeable;)I

    move-result v17

    new-instance v11, Landroidx/compose/material3/u3;

    move-object/from16 v18, v1

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v11 .. v20}, Landroidx/compose/material3/u3;-><init>(IIIIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p1

    move v14, v2

    move v13, v4

    move-object/from16 v16, v11

    invoke-static/range {v12 .. v18}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, p3

    goto/16 :goto_2

    :cond_8
    invoke-static {v6}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_9
    move-object/from16 v19, v8

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v2, p3

    goto/16 :goto_1

    :cond_a
    invoke-static {v6}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v2, p3

    goto/16 :goto_0

    :cond_c
    invoke-static {v6}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0
.end method
