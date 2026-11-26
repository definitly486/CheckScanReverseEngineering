.class final Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/LayerRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/RenderInTransitionOverlayNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LayerWithRenderer"
.end annotation


# instance fields
.field private final layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field final synthetic this$0:Landroidx/compose/animation/RenderInTransitionOverlayNode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/RenderInTransitionOverlayNode;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->this$0:Landroidx/compose/animation/RenderInTransitionOverlayNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method


# virtual methods
.method public drawInOverlay(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->this$0:Landroidx/compose/animation/RenderInTransitionOverlayNode;

    invoke-static {v0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->access$getEnabled$p(Landroidx/compose/animation/RenderInTransitionOverlayNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->this$0:Landroidx/compose/animation/RenderInTransitionOverlayNode;

    invoke-static {v0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->access$getPositionInOverlay$p(Landroidx/compose/animation/RenderInTransitionOverlayNode;)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->access$getPositionInOverlay$p(Landroidx/compose/animation/RenderInTransitionOverlayNode;)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    :try_start_0
    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    neg-float p1, v1

    neg-float v0, v0

    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float v1, v1

    neg-float v0, v0

    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw p0

    :cond_0
    return-void
.end method

.method public final getLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object p0
.end method

.method public getParentState()Landroidx/compose/animation/SharedElementEntry;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->this$0:Landroidx/compose/animation/RenderInTransitionOverlayNode;

    invoke-virtual {p0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->getParentState()Landroidx/compose/animation/SharedElementEntry;

    move-result-object p0

    return-object p0
.end method

.method public getZIndex()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNode$LayerWithRenderer;->this$0:Landroidx/compose/animation/RenderInTransitionOverlayNode;

    invoke-virtual {p0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->getZIndexInOverlay()F

    move-result p0

    return p0
.end method
