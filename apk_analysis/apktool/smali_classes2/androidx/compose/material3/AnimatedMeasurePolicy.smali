.class final Landroidx/compose/material3/AnimatedMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field private final iconPosition:I

.field private final iconPositionProgress:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorAnimationProgress:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final itemHorizontalPadding:F

.field private final startIconIndicatorHorizontalPadding:F

.field private final startIconIndicatorVerticalPadding:F

.field private final startIconToLabelHorizontalPadding:F

.field private final topIconIndicatorHorizontalPadding:F

.field private final topIconIndicatorToLabelVerticalPadding:F

.field private final topIconIndicatorVerticalPadding:F


# direct methods
.method private constructor <init>(ILll3;Lll3;FFFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;FFFFFFF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPosition:I

    iput-object p2, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPositionProgress:Lll3;

    iput-object p3, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->indicatorAnimationProgress:Lll3;

    iput p4, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorHorizontalPadding:F

    iput p5, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorVerticalPadding:F

    iput p6, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorToLabelVerticalPadding:F

    iput p7, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorHorizontalPadding:F

    iput p8, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorVerticalPadding:F

    iput p9, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconToLabelHorizontalPadding:F

    iput p10, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->itemHorizontalPadding:F

    return-void
.end method

.method public synthetic constructor <init>(ILll3;Lll3;FFFFFFFLjh2;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Landroidx/compose/material3/AnimatedMeasurePolicy;-><init>(ILll3;Lll3;FFFFFFF)V

    return-void
.end method


# virtual methods
.method public final getIconPosition--xw1Ddg()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPosition:I

    return p0
.end method

.method public final getIconPositionProgress()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPositionProgress:Lll3;

    return-object p0
.end method

.method public final getIndicatorAnimationProgress()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->indicatorAnimationProgress:Lll3;

    return-object p0
.end method

.method public final getItemHorizontalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->itemHorizontalPadding:F

    return p0
.end method

.method public final getStartIconIndicatorHorizontalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorHorizontalPadding:F

    return p0
.end method

.method public final getStartIconIndicatorVerticalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorVerticalPadding:F

    return p0
.end method

.method public final getStartIconToLabelHorizontalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconToLabelHorizontalPadding:F

    return p0
.end method

.method public final getTopIconIndicatorHorizontalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorHorizontalPadding:F

    return p0
.end method

.method public final getTopIconIndicatorToLabelVerticalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorToLabelVerticalPadding:F

    return p0
.end method

.method public final getTopIconIndicatorVerticalPadding-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorVerticalPadding:F

    return p0
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "Collection contains no element matching the predicate."

    if-ge v2, v0, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "icon"

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v0

    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-static {v4}, Landroidx/compose/material3/internal/LayoutUtilKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "label"

    invoke-static {v5, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p2

    iget p3, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPosition:I

    sget-object v1, Landroidx/compose/material3/NavigationItemIconPosition;->Companion:Landroidx/compose/material3/NavigationItemIconPosition$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/NavigationItemIconPosition$Companion;->getTop--xw1Ddg()I

    move-result v1

    invoke-static {p3, v1}, Landroidx/compose/material3/NavigationItemIconPosition;->equals-impl0(II)Z

    move-result p3

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    iget p3, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorHorizontalPadding:F

    mul-float/2addr p3, v1

    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->itemHorizontalPadding:F

    mul-float/2addr p0, v1

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    add-float/2addr p0, p3

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    iget p3, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorHorizontalPadding:F

    mul-float/2addr p3, v1

    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    iget v1, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconToLabelHorizontalPadding:F

    add-float/2addr p3, v1

    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p3

    iget p0, p0, Landroidx/compose/material3/AnimatedMeasurePolicy;->itemHorizontalPadding:F

    add-float/2addr p3, p0

    invoke-static {p3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {v3}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
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

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->indicatorAnimationProgress:Lll3;

    invoke-interface {v3}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPositionProgress:Lll3;

    invoke-interface {v4}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v5, p3

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v9

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    const-string v8, "Collection contains no element matching the predicate."

    if-ge v7, v5, :cond_7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "icon"

    invoke-static {v12, v13}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "label"

    invoke-static {v14, v15}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v11

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    iget v13, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorHorizontalPadding:F

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    invoke-static {v13}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v13

    invoke-interface {v1, v13}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v13

    add-int/2addr v13, v12

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    iget v15, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorVerticalPadding:F

    mul-float/2addr v15, v14

    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v15

    invoke-interface {v1, v15}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v15

    add-int/2addr v15, v12

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v12

    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v16

    add-int v16, v16, v12

    iget v12, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconToLabelHorizontalPadding:F

    iget v6, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorHorizontalPadding:F

    mul-float/2addr v6, v14

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    add-float/2addr v6, v12

    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v6

    add-int v6, v6, v16

    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v12

    move/from16 p4, v14

    invoke-virtual {v11}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v14, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorVerticalPadding:F

    mul-float v14, v14, p4

    invoke-static {v14}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v14

    invoke-interface {v1, v14}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v14

    add-int/2addr v14, v12

    invoke-static {v13, v6, v4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v6

    int-to-float v12, v6

    mul-float/2addr v12, v3

    invoke-static {v12}, Lw65;->b(F)I

    move-result v3

    invoke-static {v15, v14, v4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result v4

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_3

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v15}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 p4, v5

    const-string v5, "indicatorRipple"

    invoke-static {v1, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v1, v6, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v5

    invoke-static {v9, v10, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-N9IONVI(JJ)J

    move-result-wide v5

    invoke-interface {v15, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "indicator"

    invoke-static {v12, v14}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v1, v3, v4}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v1

    invoke-static {v9, v10, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-N9IONVI(JJ)J

    move-result-wide v1

    invoke-interface {v7, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    iget v2, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPosition:I

    iget-object v3, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->iconPositionProgress:Lll3;

    move-object v4, v11

    iget v11, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorToLabelVerticalPadding:F

    iget v12, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorVerticalPadding:F

    move v8, v13

    iget v13, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->topIconIndicatorHorizontalPadding:F

    iget v14, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorHorizontalPadding:F

    iget v15, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconIndicatorVerticalPadding:F

    iget v1, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->startIconToLabelHorizontalPadding:F

    iget v0, v0, Landroidx/compose/material3/AnimatedMeasurePolicy;->itemHorizontalPadding:F

    move-object/from16 v5, p4

    move/from16 v17, v0

    move/from16 v16, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/NavigationItemKt;->access$placeAnimatedLabelAndIcon-2QYhCQ8(Landroidx/compose/ui/layout/MeasureScope;ILll3;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;IJFFFFFFF)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_0
    move v15, v13

    move-object/from16 v13, p4

    add-int/lit8 v5, v5, 0x1

    move v13, v15

    goto :goto_3

    :cond_1
    invoke-static {v8}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_2
    move v15, v13

    move-object/from16 v13, p4

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object v5, v13

    move v13, v15

    goto/16 :goto_2

    :cond_3
    invoke-static {v8}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_4
    move-object v13, v5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    invoke-static {v8}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_7
    invoke-static {v8}, Lhm;->d(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0
.end method
