.class public final Landroidx/compose/foundation/style/StyleOuterNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/TraversableNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/runtime/CompositionLocalAccessorScope;
.implements Landroidx/compose/foundation/text/modifiers/TextStyleProviderNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _bufferOrNull:Landroidx/compose/foundation/style/ResolvedStyle;

.field private _resolved:Landroidx/compose/foundation/style/ResolvedStyle;

.field private _state:Landroidx/compose/foundation/style/StyleState;

.field private ancestorNodes:Landroidx/collection/MutableObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/style/StyleOuterNode;",
            ">;"
        }
    .end annotation
.end field

.field private animations:Landroidx/compose/foundation/style/StyleAnimations;

.field private borderLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private borderLayerProvider:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;"
        }
    .end annotation
.end field

.field private final borderLogic:Landroidx/compose/foundation/border/BorderLogic;

.field private cachedDropShadowPainters:[Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

.field private cachedInheritedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

.field private cachedInnerShadowPainters:[Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

.field private currentInteractionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private inheritedStyleDirty:Z

.field private innerNodeField:Landroidx/compose/foundation/style/StyleInnerNode;

.field private lastDropShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

.field private lastInnerShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

.field private lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private lastOutline:Landroidx/compose/ui/graphics/Outline;

.field private lastShape:Landroidx/compose/ui/graphics/Shape;

.field private lastSize:J

.field private layerBlock:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private sourceJob:Lmb4;

.field private style:Landroidx/compose/foundation/style/Style;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->style:Landroidx/compose/foundation/style/Style;

    new-instance p2, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {p2}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    new-instance p2, Landroidx/compose/foundation/border/BorderLogic;

    invoke-direct {p2}, Landroidx/compose/foundation/border/BorderLogic;-><init>()V

    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLogic:Landroidx/compose/foundation/border/BorderLogic;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/compose/foundation/style/MutableStyleState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/compose/foundation/style/MutableStyleState;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;)V

    :cond_0
    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastSize:J

    return-void
.end method

.method private static final _get_layerBlockNonNull_$lambda$0$0(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/style/StyleOuterNode;->updateLayer(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Lr07;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveInheritedStyle$lambda$1(Lr07;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/node/TraversableNode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$get_state$p(Landroidx/compose/foundation/style/StyleOuterNode;)Landroidx/compose/foundation/style/StyleState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/StyleOuterNode;->_get_layerBlockNonNull_$lambda$0$0(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/graphics/GraphicsLayerScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/style/StyleOuterNode;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->drawForShape_9zt3ed4$lambda$1(Landroidx/compose/foundation/style/StyleOuterNode;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object p0

    return-object p0
.end method

.method private final currentLayerStyle()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-static {p0, v2, v0, v1, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveAnimatedStyleFor$foundation$default(Landroidx/compose/foundation/style/StyleOuterNode;ILandroidx/compose/foundation/style/ResolvedStyle;ILjava/lang/Object;)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    return-object p0
.end method

.method private final currentLayoutStyle()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-static {p0, v2, v0, v1, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveAnimatedStyleFor$foundation$default(Landroidx/compose/foundation/style/StyleOuterNode;ILandroidx/compose/foundation/style/ResolvedStyle;ILjava/lang/Object;)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Lp07;Z)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate$lambda$0(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Lp07;Z)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final drawDropShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;ILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastDropShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedDropShadowPainters:[Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    if-eqz v2, :cond_1

    invoke-static {p2, v2}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    :cond_1
    invoke-static {v0, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->getShadowContext()Landroidx/compose/ui/graphics/shadow/ShadowContext;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroidx/compose/ui/graphics/shadow/ShadowContext;->createDropShadowPainter(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    move-result-object v1

    goto :goto_1

    :goto_2
    iget-object p3, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastDropShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz p3, :cond_3

    aput-object p4, p3, p2

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedDropShadowPainters:[Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    if-eqz p0, :cond_4

    aput-object v2, p0, p2

    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0$default(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)V

    return-void
.end method

.method private static final drawForShape_9zt3ed4$lambda$0(F)F
    .locals 0

    return p0
.end method

.method private static final drawForShape_9zt3ed4$lambda$1(Landroidx/compose/foundation/style/StyleOuterNode;)Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_0
    return-object v0
.end method

.method private final drawInnerShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;ILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastInnerShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInnerShadowPainters:[Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    if-eqz v2, :cond_1

    invoke-static {p2, v2}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    :cond_1
    invoke-static {v0, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :goto_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->getShadowContext()Landroidx/compose/ui/graphics/shadow/ShadowContext;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Landroidx/compose/ui/graphics/shadow/ShadowContext;->createInnerShadowPainter(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    move-result-object v1

    goto :goto_1

    :goto_2
    iget-object p3, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastInnerShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz p3, :cond_3

    aput-object p4, p3, p2

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInnerShadowPainters:[Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    if-eqz p0, :cond_4

    aput-object v2, p0, p2

    :cond_4
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0$default(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Landroidx/compose/foundation/style/StyleOuterNode;JLandroidx/compose/ui/layout/Placeable;FFFFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/style/StyleOuterNode;->measure_3p2s80s$lambda$0(Landroidx/compose/foundation/style/StyleOuterNode;JLandroidx/compose/ui/layout/Placeable;FFFFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(F)F
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->drawForShape_9zt3ed4$lambda$0(F)F

    move-result p0

    return p0
.end method

.method private final getBufferNonNull()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_bufferOrNull:Landroidx/compose/foundation/style/ResolvedStyle;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v0}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_bufferOrNull:Landroidx/compose/foundation/style/ResolvedStyle;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method private final getOutline-12SF9DM(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/graphics/Outline;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastSize:J

    invoke-static {v0, v1, p2, p3}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p4, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    invoke-interface {p4, p2, p3, v0, p1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object p4

    :goto_0
    iput-object p4, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    iput-wide p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastSize:J

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p4
.end method

.method private final invalidateTextDraw()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->inheritedStyleDirty:Z

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->invalidateDrawForSubtree(Landroidx/compose/ui/node/DelegatableNode;)V

    return-void
.end method

.method private final invalidateTextLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->inheritedStyleDirty:Z

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->invalidateMeasurementForSubtree(Landroidx/compose/ui/node/DelegatableNode;)V

    return-void
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/foundation/style/StyleOuterNode;JLandroidx/compose/ui/layout/Placeable;FFFFLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 10

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->currentLayoutStyle()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->shouldPlaceRelativeToRight(Landroidx/compose/foundation/style/ResolvedStyle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    sub-int/2addr v1, p4

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->shouldPlaceRelativeToBottom(Landroidx/compose/foundation/style/ResolvedStyle;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p1, p2

    :goto_2
    move v5, p1

    goto :goto_3

    :cond_1
    invoke-static/range {p7 .. p7}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_2

    :goto_3
    iget p1, v0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->getLayerBlockNonNull$foundation()Lnl3;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object/from16 v2, p8

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFLnl3;ILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object/from16 v2, p8

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic resolveAnimatedStyleFor$foundation$default(Landroidx/compose/foundation/style/StyleOuterNode;ILandroidx/compose/foundation/style/ResolvedStyle;ILjava/lang/Object;)Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveAnimatedStyleFor$foundation(ILandroidx/compose/foundation/style/ResolvedStyle;)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    return-object p0
.end method

.method private static final resolveInheritedStyle$lambda$1(Lr07;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 4

    instance-of v0, p2, Landroidx/compose/foundation/style/StyleOuterNode;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p2

    check-cast v0, Landroidx/compose/foundation/style/StyleOuterNode;

    iget-object v2, v0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    iget v2, v2, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 v2, v2, 0x60

    if-nez v2, :cond_1

    iget-object v0, v0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleAnimations;->isNotEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableObjectList;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v0, p0, Lr07;->b:Ljava/lang/Object;

    iput-object v0, p1, Landroidx/compose/foundation/style/StyleOuterNode;->ancestorNodes:Landroidx/collection/MutableObjectList;

    :cond_2
    invoke-virtual {v0, p2}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method

.method public static synthetic resolveStyleAndInvalidate$default(Landroidx/compose/foundation/style/StyleOuterNode;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate(Z)V

    return-void
.end method

.method private static final resolveStyleAndInvalidate$lambda$0(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Lp07;Z)Lj59;
    .locals 2

    iget-object v0, p1, Landroidx/compose/foundation/style/StyleOuterNode;->style:Landroidx/compose/foundation/style/Style;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->resolve$foundation(Landroidx/compose/foundation/style/Style;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)V

    iput-object p0, p1, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    iput-object p3, p1, Landroidx/compose/foundation/style/StyleOuterNode;->_bufferOrNull:Landroidx/compose/foundation/style/ResolvedStyle;

    iget-object p0, p1, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz p0, :cond_0

    xor-int/lit8 p3, p5, 0x1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/style/StyleAnimations;->postResolve(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Z)I

    move-result v1

    :cond_0
    iput v1, p4, Lp07;->b:I

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final shouldPlaceRelativeToBottom(Landroidx/compose/foundation/style/ResolvedStyle;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBottom$foundation()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTop$foundation()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final shouldPlaceRelativeToRight(Landroidx/compose/foundation/style/ResolvedStyle;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getRight$foundation()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLeft$foundation()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final updateLayer(Landroidx/compose/ui/graphics/GraphicsLayerScope;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->currentLayerStyle()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getAlpha$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setAlpha(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getScaleX$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleX(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getScaleY$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setScaleY(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTranslationX$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTranslationX(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTranslationY$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTranslationY(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationX$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationX(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationY$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationY(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationZ$foundation()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setRotationZ(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTransformOrigin-SzJe1aQ$foundation()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getClip$foundation()Z

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setClip(Z)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getShape$foundation()Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    return-void
.end method


# virtual methods
.method public computeInheritedTextStyle-B-LjeIk(ILandroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;
    .locals 0

    invoke-static {p1}, Landroidx/compose/foundation/style/StyleModifierKt;->access$toFlags-uwmK9pY(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveInheritedStyle$foundation(I)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->toTextStyle$foundation(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v2, v3}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveAnimatedStyleFor$foundation$default(Landroidx/compose/foundation/style/StyleOuterNode;ILandroidx/compose/foundation/style/ResolvedStyle;ILjava/lang/Object;)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundColor-0d7_KjU$foundation()J

    move-result-wide v6

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v8

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getForegroundColor-0d7_KjU$foundation()J

    move-result-wide v12

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getForegroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v14

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderColor-0d7_KjU$foundation()J

    move-result-wide v9

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v11

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v15, v3

    invoke-virtual {v2}, Landroidx/compose/foundation/style/ResolvedStyle;->getShape$foundation()Landroidx/compose/ui/graphics/Shape;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    const/4 v5, 0x0

    const/16 v16, 0x1

    if-lez v3, :cond_0

    move-object v3, v4

    move/from16 v4, v16

    goto :goto_0

    :cond_0
    move-object v3, v4

    move v4, v5

    :goto_0
    const-wide/16 v17, 0x10

    cmp-long v19, v6, v17

    if-eqz v19, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v8, :cond_2

    :goto_1
    move-object/from16 v19, v3

    move/from16 v3, v16

    goto :goto_2

    :cond_2
    move-object/from16 v19, v3

    move v3, v5

    :goto_2
    cmp-long v17, v12, v17

    if-eqz v17, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v14, :cond_4

    :goto_3
    move/from16 v5, v16

    :cond_4
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/style/StyleOuterNode;->drawDropShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/foundation/style/ResolvedStyle;)V

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    invoke-virtual/range {v0 .. v15}, Landroidx/compose/foundation/style/StyleOuterNode;->drawForShape-9zt3ed4(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/Shape;ZZZJLandroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;F)V

    move-object v3, v2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/style/StyleOuterNode;->drawInnerShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/foundation/style/ResolvedStyle;)V

    iput-object v3, v0, Landroidx/compose/foundation/style/StyleOuterNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public final drawDropShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 5

    .line 71
    invoke-virtual {p2}, Landroidx/compose/foundation/style/ResolvedStyle;->getDropShadow$foundation()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/style/ResolvedStyle;->getShape$foundation()Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    .line 73
    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/style/StyleOuterNode;->reconcileDropShadowCache(Ljava/lang/Object;Landroidx/compose/ui/graphics/Shape;)V

    .line 74
    instance-of v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 76
    aget-object v3, v0, v2

    .line 77
    instance-of v4, v3, Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v4, :cond_1

    .line 78
    check-cast v3, Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-direct {p0, p1, v2, p2, v3}, Landroidx/compose/foundation/style/StyleOuterNode;->drawDropShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;ILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v1, :cond_3

    .line 80
    check-cast v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-direct {p0, p1, v2, p2, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->drawDropShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;ILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final drawForShape-9zt3ed4(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/ui/graphics/Shape;ZZZJLandroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;F)V
    .locals 12

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/foundation/style/StyleOuterNode;->getOutline-12SF9DM(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v3

    if-eqz p3, :cond_1

    if-eqz p8, :cond_0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v4, p8

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-hn5TExg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-wide/from16 v4, p6

    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    if-eqz p5, :cond_3

    if-eqz p14, :cond_2

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v4, p14

    invoke-static/range {v2 .. v10}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-hn5TExg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v10, 0x3c

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-wide/from16 v4, p12

    invoke-static/range {v2 .. v11}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_3
    :goto_1
    if-eqz p4, :cond_6

    if-nez p11, :cond_4

    new-instance p2, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v0, 0x0

    move-wide/from16 v1, p9

    invoke-direct {p2, v1, v2, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    goto :goto_2

    :cond_4
    move-object/from16 p2, p11

    :goto_2
    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLogic:Landroidx/compose/foundation/border/BorderLogic;

    new-instance v1, Lhb8;

    move/from16 v2, p15

    invoke-direct {v1, v2}, Lhb8;-><init>(F)V

    iget-object v2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayerProvider:Lll3;

    if-nez v2, :cond_5

    new-instance v2, Lap1;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v4}, Lap1;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayerProvider:Lll3;

    sget-object p0, Lj59;->a:Lj59;

    :cond_5
    const/16 p0, 0x20

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move/from16 p10, p0

    move-object p3, p1

    move-object/from16 p5, p2

    move-object p2, v0

    move-object/from16 p4, v1

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p11, v4

    move-wide/from16 p8, v5

    invoke-static/range {p2 .. p11}, Landroidx/compose/foundation/border/BorderLogic;->drawBorder-2gY9BTk$foundation$default(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/graphics/drawscope/DrawScope;Lll3;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/graphics/Outline;JILjava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final drawInnerShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;Landroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 5

    .line 71
    invoke-virtual {p2}, Landroidx/compose/foundation/style/ResolvedStyle;->getInnerShadow$foundation()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/foundation/style/ResolvedStyle;->getShape$foundation()Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    .line 73
    invoke-virtual {p0, v0, p2}, Landroidx/compose/foundation/style/StyleOuterNode;->reconcileInnerShadowCache(Ljava/lang/Object;Landroidx/compose/ui/graphics/Shape;)V

    .line 74
    instance-of v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 75
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 76
    aget-object v3, v0, v2

    .line 77
    instance-of v4, v3, Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v4, :cond_1

    .line 78
    check-cast v3, Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-direct {p0, p1, v2, p2, v3}, Landroidx/compose/foundation/style/StyleOuterNode;->drawInnerShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;ILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v1, :cond_3

    .line 80
    check-cast v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-direct {p0, p1, v2, p2, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->drawInnerShadow(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;ILandroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/shadow/Shadow;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final getAncestorNodes$foundation()Landroidx/collection/MutableObjectList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/style/StyleOuterNode;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->ancestorNodes:Landroidx/collection/MutableObjectList;

    return-object p0
.end method

.method public final getAnimations$foundation()Landroidx/compose/foundation/style/StyleAnimations;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    return-object p0
.end method

.method public final getCachedInheritedStyle$foundation()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->inheritedStyleDirty:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInheritedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    return-object p0
.end method

.method public getCurrentValue(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getInnerNode$foundation()Landroidx/compose/foundation/style/StyleInnerNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->innerNodeField:Landroidx/compose/foundation/style/StyleInnerNode;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "StyleOuterNode with no corresponding StyleInnerNode"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInnerNodeField$foundation()Landroidx/compose/foundation/style/StyleInnerNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->innerNodeField:Landroidx/compose/foundation/style/StyleInnerNode;

    return-object p0
.end method

.method public final getLayerBlock$foundation()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->layerBlock:Lnl3;

    return-object p0
.end method

.method public final getLayerBlockNonNull$foundation()Lnl3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->layerBlock:Lnl3;

    if-nez v0, :cond_0

    new-instance v0, Ltl2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ltl2;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->layerBlock:Lnl3;

    :cond_0
    return-object v0
.end method

.method public getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSourceJob()Lmb4;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->sourceJob:Lmb4;

    return-object p0
.end method

.method public final getState$foundation()Landroidx/compose/foundation/style/StyleState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    return-object p0
.end method

.method public final getStyle$foundation()Landroidx/compose/foundation/style/Style;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->style:Landroidx/compose/foundation/style/Style;

    return-object p0
.end method

.method public getTraverseKey()Ljava/lang/Object;
    .locals 0

    const-string p0, "StyleOuterNode"

    return-object p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/style/StyleOuterNode;->currentLayoutStyle()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingStart$foundation()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLeft$foundation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_0
    add-float/2addr v1, v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingEnd$foundation()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRight$foundation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    move v7, v1

    goto :goto_3

    :cond_1
    add-float/2addr v1, v2

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingTop$foundation()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTop$foundation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_4
    move v10, v1

    goto :goto_5

    :cond_2
    add-float/2addr v1, v2

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingBottom$foundation()F

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBottom$foundation()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_6
    move v9, v1

    goto :goto_7

    :cond_3
    add-float/2addr v1, v2

    goto :goto_6

    :goto_7
    add-float v1, v8, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float v2, v10, v9

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    if-gez v3, :cond_4

    move v3, v4

    :cond_4
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_5

    goto :goto_8

    :cond_5
    add-int/2addr v5, v1

    if-gez v5, :cond_6

    move v5, v4

    :cond_6
    :goto_8
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v11

    sub-int/2addr v11, v2

    if-gez v11, :cond_7

    move v11, v4

    :cond_7
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v12

    if-ne v12, v6, :cond_9

    :cond_8
    move v4, v12

    goto :goto_9

    :cond_9
    add-int/2addr v12, v2

    if-gez v12, :cond_8

    :goto_9
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMinWidth$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_a

    goto :goto_a

    :cond_a
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_a
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMaxWidth$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_b

    :cond_b
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    :goto_b
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMinHeight$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_c

    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    :goto_c
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMaxHeight$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_d

    :cond_d
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    :goto_d
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidth$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidth$foundation()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    :cond_e
    :goto_e
    move v5, v3

    goto :goto_10

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidthFraction$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v6

    if-eqz v6, :cond_11

    int-to-float v6, v5

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidthFraction$foundation()F

    move-result v12

    mul-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ge v6, v3, :cond_10

    goto :goto_f

    :cond_10
    move v3, v6

    :goto_f
    if-le v3, v5, :cond_e

    move v3, v5

    goto :goto_e

    :cond_11
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLeft$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_12

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRight$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_12

    move v3, v5

    :cond_12
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeight$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeight$foundation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    :cond_13
    :goto_11
    move v4, v11

    goto :goto_13

    :cond_14
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeightFraction$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedHeight-impl(J)Z

    move-result v6

    if-eqz v6, :cond_16

    int-to-float v6, v4

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeightFraction$foundation()F

    move-result v0

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v11, :cond_15

    goto :goto_12

    :cond_15
    move v11, v0

    :goto_12
    if-le v11, v4, :cond_13

    move v11, v4

    goto :goto_11

    :cond_16
    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTop$foundation()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBottom$foundation()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    move v11, v4

    :cond_17
    :goto_13
    invoke-static {v3, v5, v11, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    add-int v12, v0, v1

    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    add-int v13, v0, v2

    new-instance v15, Lib8;

    move-object/from16 v3, p0

    move-wide/from16 v4, p3

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lib8;-><init>(Landroidx/compose/foundation/style/StyleOuterNode;JLandroidx/compose/ui/layout/Placeable;FFFF)V

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v17}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v2

    invoke-interface {v2, v0}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iput-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_0
    iput-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->borderLayerProvider:Lll3;

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate$default(Landroidx/compose/foundation/style/StyleOuterNode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final reconcileDropShadowCache(Ljava/lang/Object;Landroidx/compose/ui/graphics/Shape;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastDropShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedDropShadowPainters:[Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v4, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    array-length p2, v0

    if-eq p2, p1, :cond_4

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/compose/ui/graphics/shadow/Shadow;

    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastDropShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    goto :goto_2

    :cond_2
    new-array p2, p1, [Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    :goto_1
    if-ge v3, p1, :cond_3

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_2
    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedDropShadowPainters:[Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    :cond_4
    return-void

    :cond_5
    :goto_3
    new-array p2, p1, [Landroidx/compose/ui/graphics/shadow/Shadow;

    move v0, v3

    :goto_4
    if-ge v0, p1, :cond_6

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastDropShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    new-array p2, p1, [Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    :goto_5
    if-ge v3, p1, :cond_7

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedDropShadowPainters:[Landroidx/compose/ui/graphics/shadow/DropShadowPainter;

    return-void
.end method

.method public final reconcileInnerShadowCache(Ljava/lang/Object;Landroidx/compose/ui/graphics/Shape;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastInnerShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInnerShadowPainters:[Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v4, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v4, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    array-length p2, v0

    if-eq p2, p1, :cond_4

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/compose/ui/graphics/shadow/Shadow;

    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastInnerShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v1, :cond_2

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    goto :goto_2

    :cond_2
    new-array p2, p1, [Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    :goto_1
    if-ge v3, p1, :cond_3

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_2
    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInnerShadowPainters:[Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    :cond_4
    return-void

    :cond_5
    :goto_3
    new-array p2, p1, [Landroidx/compose/ui/graphics/shadow/Shadow;

    move v0, v3

    :goto_4
    if-ge v0, p1, :cond_6

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->lastInnerShadow:[Landroidx/compose/ui/graphics/shadow/Shadow;

    new-array p2, p1, [Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    :goto_5
    if-ge v3, p1, :cond_7

    aput-object v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    iput-object p2, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInnerShadowPainters:[Landroidx/compose/ui/graphics/shadow/InnerShadowPainter;

    return-void
.end method

.method public final resolveAnimatedStyleFor$foundation(ILandroidx/compose/foundation/style/ResolvedStyle;)Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleAnimations;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p0, p1}, Landroidx/compose/foundation/style/StyleAnimations;->withAnimations(Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;I)Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final resolveInheritedStyle$foundation(I)Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    iget-object v2, v0, Landroidx/compose/foundation/style/StyleOuterNode;->ancestorNodes:Landroidx/collection/MutableObjectList;

    iput-object v2, v1, Lr07;->b:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    iget v2, v2, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 v2, v2, 0x60

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    iget-object v2, v0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/foundation/style/StyleAnimations;->isNotEmpty()Z

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_0
    iget-object v2, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableObjectList;

    if-nez v2, :cond_1

    new-instance v2, Landroidx/collection/MutableObjectList;

    invoke-direct {v2, v4, v5, v3}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iput-object v2, v1, Lr07;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/style/StyleOuterNode;->ancestorNodes:Landroidx/collection/MutableObjectList;

    :cond_1
    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v2, Ln27;

    invoke-direct {v2, v5, v1, v0}, Ln27;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "StyleOuterNode"

    invoke-static {v0, v6, v2}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lnl3;)V

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleOuterNode;->getCachedInheritedStyle$foundation()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v2

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-eqz v2, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    iget-object v9, v0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroidx/compose/foundation/style/StyleAnimations;->isNotEmpty()Z

    move-result v9

    goto :goto_1

    :cond_4
    move v9, v4

    :goto_1
    iget-object v10, v0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    iget v10, v10, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 v10, v10, 0x60

    iget-object v11, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v11, Landroidx/collection/MutableObjectList;

    if-eqz v11, :cond_a

    iget-object v12, v11, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v11, v11, Landroidx/collection/ObjectList;->_size:I

    move v13, v4

    :goto_2
    if-ge v13, v11, :cond_a

    aget-object v14, v12, v13

    check-cast v14, Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {v14}, Landroidx/compose/foundation/style/StyleOuterNode;->getCachedInheritedStyle$foundation()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v15

    if-nez v9, :cond_7

    iget-object v9, v14, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroidx/compose/foundation/style/StyleAnimations;->isNotEmpty()Z

    move-result v9

    goto :goto_3

    :cond_5
    move v9, v4

    :goto_3
    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    move v9, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v9, v5

    :goto_5
    iget-object v14, v14, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    iget v14, v14, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/lit8 v14, v14, 0x60

    or-int/2addr v10, v14

    if-nez v15, :cond_8

    move-object v2, v3

    move v8, v6

    goto :goto_6

    :cond_8
    if-nez v2, :cond_9

    move v8, v13

    move-object v2, v15

    :cond_9
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_a
    if-nez v10, :cond_b

    return-object v3

    :cond_b
    if-eqz v2, :cond_c

    if-gez v8, :cond_c

    if-nez v9, :cond_c

    return-object v2

    :cond_c
    iget-object v3, v1, Lr07;->b:Ljava/lang/Object;

    if-eqz v3, :cond_d

    if-ge v8, v7, :cond_d

    check-cast v3, Landroidx/collection/MutableObjectList;

    invoke-virtual {v3}, Landroidx/collection/ObjectList;->getSize()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    :cond_d
    :goto_7
    if-ge v6, v8, :cond_12

    if-gez v8, :cond_e

    move-object v3, v0

    goto :goto_8

    :cond_e
    iget-object v3, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/collection/MutableObjectList;

    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v3, v8}, Landroidx/collection/ObjectList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/style/StyleOuterNode;

    :goto_8
    iget-object v7, v3, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInheritedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    if-nez v7, :cond_10

    new-instance v7, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v7}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v2, v7}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInheritedStylesInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_11
    iget-object v2, v3, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-virtual {v7, v2}, Landroidx/compose/foundation/style/ResolvedStyle;->applyInheritableStyles$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    invoke-virtual {v3, v7}, Landroidx/compose/foundation/style/StyleOuterNode;->saveInheritedStyles$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    move-object v2, v7

    :goto_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    :cond_12
    if-eqz v9, :cond_19

    new-instance v3, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v3}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    if-eqz v2, :cond_13

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/style/ResolvedStyle;->copyInheritedStylesInto$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_13
    iget-object v2, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableObjectList;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroidx/collection/ObjectList;->getSize()I

    move-result v4

    :cond_14
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v2

    sub-int/2addr v4, v5

    :goto_a
    if-ge v6, v4, :cond_18

    if-gez v4, :cond_15

    move-object v5, v0

    goto :goto_b

    :cond_15
    iget-object v5, v1, Lr07;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/collection/MutableObjectList;

    if-nez v5, :cond_17

    :cond_16
    move/from16 v8, p1

    goto :goto_c

    :cond_17
    invoke-virtual {v5, v4}, Landroidx/collection/ObjectList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/style/StyleOuterNode;

    :goto_b
    iget-object v7, v5, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v7, :cond_16

    move/from16 v8, p1

    invoke-virtual {v7, v3, v2, v5, v8}, Landroidx/compose/foundation/style/StyleAnimations;->applyAnimationsTo(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/StyleOuterNode;I)V

    :goto_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_a

    :cond_18
    return-object v3

    :cond_19
    return-object v2
.end method

.method public final resolveStyleAndInvalidate(Z)V
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    move-object v6, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    move-object v6, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_resolved:Landroidx/compose/foundation/style/ResolvedStyle;

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->getBufferNonNull()Landroidx/compose/foundation/style/ResolvedStyle;

    move-result-object v1

    goto :goto_1

    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireDensity(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/Density;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/compose/foundation/style/ResolvedStyle;->clear$foundation()V

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/foundation/style/StyleAnimations;->preResolve()V

    :cond_3
    new-instance v7, Lp07;

    invoke-direct {v7}, Lp07;-><init>()V

    new-instance v2, Ljb8;

    move-object v4, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Ljb8;-><init>(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/ui/unit/Density;Landroidx/compose/foundation/style/ResolvedStyle;Lp07;Z)V

    invoke-static {v4, v2}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lll3;)V

    iget p0, v7, Lp07;->b:I

    if-eqz v6, :cond_4

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v6, v3, p1, v1, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->diff$foundation$default(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;IILjava/lang/Object;)I

    move-result p1

    goto :goto_3

    :cond_4
    iget p1, v3, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    :goto_3
    or-int/2addr p0, p1

    iget-object p1, v4, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    invoke-virtual {p1}, Landroidx/compose/foundation/style/StyleState;->getInteractionSource$foundation()Landroidx/compose/foundation/interaction/InteractionSource;

    move-result-object p1

    iget-object v0, v4, Landroidx/compose/foundation/style/StyleOuterNode;->currentInteractionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v4}, Landroidx/compose/foundation/style/StyleOuterNode;->updateInteractionSources()V

    :cond_5
    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    and-int/lit8 p1, p0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {v4}, Landroidx/compose/foundation/style/StyleOuterNode;->getInnerNode$foundation()Landroidx/compose/foundation/style/StyleInnerNode;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_7
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_8

    invoke-static {v4}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_8
    and-int/lit8 p1, p0, 0x2

    if-eqz p1, :cond_9

    invoke-virtual {v4}, Landroidx/compose/foundation/style/StyleOuterNode;->getInnerNode$foundation()Landroidx/compose/foundation/style/StyleInnerNode;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateLayer(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_9
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_a

    invoke-virtual {v4}, Landroidx/compose/foundation/style/StyleOuterNode;->getLayerBlockNonNull$foundation()Lnl3;

    move-result-object p1

    invoke-static {v4, p1}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->updateLayerBlock(Landroidx/compose/ui/node/LayoutModifierNode;Lnl3;)V

    :cond_a
    and-int/lit8 p1, p0, 0x20

    if-eqz p1, :cond_b

    invoke-direct {v4}, Landroidx/compose/foundation/style/StyleOuterNode;->invalidateTextLayout()V

    :cond_b
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_c

    invoke-direct {v4}, Landroidx/compose/foundation/style/StyleOuterNode;->invalidateTextDraw()V

    :cond_c
    :goto_4
    return-void
.end method

.method public final saveInheritedStyles$foundation(Landroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->inheritedStyleDirty:Z

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->cachedInheritedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    return-void
.end method

.method public final setAncestorNodes$foundation(Landroidx/collection/MutableObjectList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/style/StyleOuterNode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->ancestorNodes:Landroidx/collection/MutableObjectList;

    return-void
.end method

.method public final setAnimations$foundation(Landroidx/compose/foundation/style/StyleAnimations;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->animations:Landroidx/compose/foundation/style/StyleAnimations;

    return-void
.end method

.method public final setInnerNode$foundation(Landroidx/compose/foundation/style/StyleInnerNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->innerNodeField:Landroidx/compose/foundation/style/StyleInnerNode;

    return-void
.end method

.method public final setInnerNodeField$foundation(Landroidx/compose/foundation/style/StyleInnerNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->innerNodeField:Landroidx/compose/foundation/style/StyleInnerNode;

    return-void
.end method

.method public final setLayerBlock$foundation(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->layerBlock:Lnl3;

    return-void
.end method

.method public final setSourceJob(Lmb4;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->sourceJob:Lmb4;

    return-void
.end method

.method public final setState$foundation(Landroidx/compose/foundation/style/StyleState;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate$default(Landroidx/compose/foundation/style/StyleOuterNode;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/StyleOuterNode;->getInnerNode$foundation()Landroidx/compose/foundation/style/StyleInnerNode;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateLayer(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_0
    return-void
.end method

.method public final setStyle$foundation(Landroidx/compose/foundation/style/Style;)V
    .locals 2

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleOuterNode;->style:Landroidx/compose/foundation/style/Style;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->resolveStyleAndInvalidate$default(Landroidx/compose/foundation/style/StyleOuterNode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final updateInteractionSources()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->sourceJob:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->_state:Landroidx/compose/foundation/style/StyleState;

    invoke-virtual {v0}, Landroidx/compose/foundation/style/StyleState;->getInteractionSource$foundation()Landroidx/compose/foundation/interaction/InteractionSource;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->currentInteractionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/style/StyleOuterNode$updateInteractionSources$1;

    invoke-direct {v3, p0, v0, v1}, Landroidx/compose/foundation/style/StyleOuterNode$updateInteractionSources$1;-><init>(Landroidx/compose/foundation/style/StyleOuterNode;Landroidx/compose/foundation/interaction/InteractionSource;Le02;)V

    const/4 v0, 0x3

    invoke-static {v2, v1, v1, v3, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/style/StyleOuterNode;->sourceJob:Lmb4;

    :cond_1
    return-void
.end method
