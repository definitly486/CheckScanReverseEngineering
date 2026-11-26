.class public final Landroidx/compose/animation/RenderInTransitionOverlayNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private enabled:Z

.field private layerWithRenderer:Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;

.field private positionInOverlay:J

.field private renderInOverlay:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

.field private final zIndexInOverlay$delegate:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedTransitionScopeImpl;Lll3;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/SharedTransitionScopeImpl;",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;F)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iput-object p2, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->renderInOverlay:Lll3;

    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->zIndexInOverlay$delegate:Landroidx/compose/runtime/MutableFloatState;

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->positionInOverlay:J

    return-void
.end method

.method public static final synthetic access$getEnabled$p(Landroidx/compose/animation/RenderInTransitionOverlayNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->enabled:Z

    return p0
.end method

.method public static final synthetic access$getPositionInOverlay$p(Landroidx/compose/animation/RenderInTransitionOverlayNode;)J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->positionInOverlay:J

    return-wide v0
.end method

.method public static final synthetic access$setEnabled(Landroidx/compose/animation/RenderInTransitionOverlayNode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->setEnabled(Z)V

    return-void
.end method

.method public static final synthetic access$setPositionInOverlay-k-4lQ0M(Landroidx/compose/animation/RenderInTransitionOverlayNode;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->setPositionInOverlay-k-4lQ0M(J)V

    return-void
.end method

.method private final setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->enabled:Z

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getInvalidateOverlay()Lll3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    iput-boolean p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->enabled:Z

    :cond_1
    return-void
.end method

.method private final setPositionInOverlay-k-4lQ0M(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->positionInOverlay:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->getInvalidateOverlay()Lll3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    iput-wide p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->positionInOverlay:J

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v4, Landroidx/compose/animation/RenderInTransitionOverlayNode$draw$1;

    invoke-direct {v4, p1}, Landroidx/compose/animation/RenderInTransitionOverlayNode$draw$1;-><init>(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->record-JVtK1S4$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;JLnl3;ILjava/lang/Object;)V

    iget-boolean p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->enabled:Z

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "Error: layer never initialized"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->layerWithRenderer:Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getParentState()Landroidx/compose/animation/SharedElementEntry;
    .locals 1

    invoke-static {}, Landroidx/compose/animation/SharedContentNodeKt;->getModifierLocalSharedElementInternalState()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedElementEntry;

    return-object p0
.end method

.method public final getRenderInOverlay()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->renderInOverlay:Lll3;

    return-object p0
.end method

.method public final getSharedScope()Landroidx/compose/animation/SharedTransitionScopeImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    return-object p0
.end method

.method public final getZIndexInOverlay()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->zIndexInOverlay$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Landroidx/compose/animation/RenderInTransitionOverlayNode$measure$1$1;

    invoke-direct {v4, p1, p0, p2}, Landroidx/compose/animation/RenderInTransitionOverlayNode$measure$1$1;-><init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/animation/RenderInTransitionOverlayNode;Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public onAttach()V
    .locals 2

    new-instance v0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;-><init>(Landroidx/compose/animation/RenderInTransitionOverlayNode;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iget-object v1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->onLayerRendererCreated$animation(Landroidx/compose/animation/LayerRenderer;)V

    iput-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->layerWithRenderer:Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;

    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->layerWithRenderer:Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->onLayerRendererRemoved$animation(Landroidx/compose/animation/LayerRenderer;)V

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireGraphicsContext(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    return-void
.end method

.method public final setRenderInOverlay(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->renderInOverlay:Lll3;

    return-void
.end method

.method public final setSharedScope(Landroidx/compose/animation/SharedTransitionScopeImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->sharedScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    return-void
.end method

.method public final setZIndexInOverlay(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode;->zIndexInOverlay$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method
