.class public final Landroidx/compose/foundation/layout/RulerAlignmentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroidx/compose/ui/layout/RectRulers;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->fitOutside$lambda$0(Landroidx/compose/ui/layout/RectRulers;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->fitOutside$lambda$0$0(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->fitInside$lambda$0$0(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->fitOutside$lambda$0$1(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/compose/ui/layout/RectRulers;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->fitInside$lambda$0(Landroidx/compose/ui/layout/RectRulers;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/RulerAlignmentKt;->fitInside$lambda$0$1(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final fitInside(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/RectRulers;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Lt87;

    invoke-direct {v0, p1}, Lt87;-><init>(Landroidx/compose/ui/layout/RectRulers;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Ldm3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final fitInside$lambda$0(Landroidx/compose/ui/layout/RectRulers;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    new-instance v6, Lq87;

    invoke-direct {v6, p0, v3, v4, p2}, Lq87;-><init>(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p1

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Lr87;

    invoke-direct {v4, p0, v1, v2, p1}, Lr87;-><init>(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final fitInside$lambda$0$0(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 10

    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    if-le v0, p1, :cond_1

    move v5, p1

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getTop()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v0

    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    if-le v0, p2, :cond_3

    move v6, p2

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    if-gez v0, :cond_4

    move v0, v2

    :cond_4
    if-le v0, p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getBottom()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object p0

    int-to-float v0, p2

    invoke-virtual {p4, p0, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    if-gez p0, :cond_6

    goto :goto_3

    :cond_6
    move v2, p0

    :goto_3
    if-le v2, p2, :cond_7

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    sub-int/2addr p1, v5

    sub-int/2addr p2, v6

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide p0

    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v3, p4

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final fitInside$lambda$0$1(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 10

    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    move v0, v2

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getTop()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v3

    invoke-virtual {p4, v3, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v1

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    if-gez v1, :cond_2

    move v1, v2

    :cond_2
    if-le v1, p2, :cond_3

    move v1, p2

    :cond_3
    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v3

    int-to-float v4, p1

    invoke-virtual {p4, v3, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v3

    invoke-static {v3}, Lw65;->b(F)I

    move-result v3

    if-gez v3, :cond_4

    move v3, v2

    :cond_4
    if-le v3, p1, :cond_5

    move v3, p1

    :cond_5
    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getBottom()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object p0

    int-to-float v4, p2

    invoke-virtual {p4, p0, v4}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    if-gez p0, :cond_6

    goto :goto_0

    :cond_6
    move v2, p0

    :goto_0
    if-le v2, p2, :cond_7

    move v2, p2

    :cond_7
    add-int/2addr v0, v3

    sub-int/2addr v0, p1

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    div-int/lit8 v6, v1, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p3

    move-object v3, p4

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final fitOutside(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/layout/RectRulers;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Lu87;

    invoke-direct {v0, p1}, Lu87;-><init>(Landroidx/compose/ui/layout/RectRulers;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Ldm3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final fitOutside$lambda$0(Landroidx/compose/ui/layout/RectRulers;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    new-instance v6, Ls87;

    invoke-direct {v6, p0, v3, v4, p2}, Ls87;-><init>(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p1

    new-instance v4, Lq92;

    const/4 p0, 0x2

    invoke-direct {v4, p2, p0}, Lq92;-><init>(Ljava/lang/Object;I)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final fitOutside$lambda$0$0(Landroidx/compose/ui/layout/RectRulers;IILandroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 11

    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getLeft()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getTop()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object v2

    invoke-virtual {p4, v2, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v1

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getRight()Landroidx/compose/ui/layout/VerticalRuler;

    move-result-object v2

    int-to-float v3, p1

    invoke-virtual {p4, v2, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result v2

    invoke-static {v2}, Lw65;->b(F)I

    move-result v2

    invoke-interface {p0}, Landroidx/compose/ui/layout/RectRulers;->getBottom()Landroidx/compose/ui/layout/HorizontalRuler;

    move-result-object p0

    int-to-float v3, p2

    invoke-virtual {p4, p0, v3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->current(Landroidx/compose/ui/layout/Ruler;F)F

    move-result p0

    invoke-static {p0}, Lw65;->b(F)I

    move-result p0

    const/4 v3, 0x0

    if-lez v0, :cond_0

    move p1, v0

    :goto_0
    move v6, v3

    :goto_1
    move v7, v6

    goto :goto_2

    :cond_0
    if-lez v1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    if-ge v2, p1, :cond_2

    sub-int/2addr p1, v2

    move v6, v2

    move v7, v3

    goto :goto_2

    :cond_2
    if-ge p0, p2, :cond_3

    sub-int/2addr p2, p0

    move v7, p0

    move v6, v3

    goto :goto_2

    :cond_3
    move p1, v3

    move p2, p1

    move v6, p2

    goto :goto_1

    :goto_2
    sget-object p0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide p0

    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v4, p4

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final fitOutside$lambda$0$1(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 9

    sget-object v0, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
