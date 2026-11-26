.class public final Landroidx/compose/foundation/style/StyleInnerNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private outerNode:Landroidx/compose/foundation/style/StyleOuterNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/style/StyleInnerNode;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final currentLayoutStyle()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 3

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleInnerNode;->outerNode:Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveAnimatedStyleFor$foundation$default(Landroidx/compose/foundation/style/StyleOuterNode;ILandroidx/compose/foundation/style/ResolvedStyle;ILjava/lang/Object;)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;FFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 7

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final getOuterNode()Landroidx/compose/foundation/style/StyleOuterNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleInnerNode;->outerNode:Landroidx/compose/foundation/style/StyleOuterNode;

    return-object p0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleInnerNode;->currentLayoutStyle()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingStart$foundation()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingEnd$foundation()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingTop$foundation()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingBottom$foundation()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result p0

    add-float/2addr p0, v0

    add-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    neg-int v2, v0

    neg-int v4, p0

    invoke-static {p3, p4, v2, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v4

    invoke-interface {p2, v4, v5}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p3, p4, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v5

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    invoke-static {p3, p4, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v6

    new-instance v8, Lgb8;

    invoke-direct {v8, p2, v1, v3}, Lgb8;-><init>(Landroidx/compose/ui/layout/Placeable;FF)V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public onAttach()V
    .locals 1

    const-string v0, "StyleOuterNode"

    invoke-static {p0, v0}, Landroidx/compose/ui/node/TraversableNodeKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/StyleOuterNode;->setInnerNode$foundation(Landroidx/compose/foundation/style/StyleInnerNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/style/StyleInnerNode;->outerNode:Landroidx/compose/foundation/style/StyleOuterNode;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate(Z)V

    return-void
.end method

.method public final setOuterNode(Landroidx/compose/foundation/style/StyleOuterNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleInnerNode;->outerNode:Landroidx/compose/foundation/style/StyleOuterNode;

    return-void
.end method
