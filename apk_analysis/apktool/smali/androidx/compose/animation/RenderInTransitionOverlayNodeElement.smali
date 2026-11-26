.class public final Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/animation/RenderInTransitionOverlayNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private renderInOverlay:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

.field private final zIndexInOverlay:F


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

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iput-object p2, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    iput p3, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/animation/RenderInTransitionOverlayNode;
    .locals 3

    new-instance v0, Landroidx/compose/animation/RenderInTransitionOverlayNode;

    iget-object v1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object v2, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    iget p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;-><init>(Landroidx/compose/animation/SharedTransitionScopeImpl;Lll3;F)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->create()Landroidx/compose/animation/RenderInTransitionOverlayNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    check-cast p1, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;

    iget-object v2, p1, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    iget-object v2, p1, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    iget p1, p1, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
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

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    return-object p0
.end method

.method public final getSharedTransitionScope()Landroidx/compose/animation/SharedTransitionScopeImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    return-object p0
.end method

.method public final getZIndexInOverlay()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "renderInSharedTransitionOverlay"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "sharedTransitionScope"

    iget-object v2, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "renderInOverlay"

    iget-object v2, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v0, "zIndexInOverlay"

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

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

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    return-void
.end method

.method public final setSharedTransitionScope(Landroidx/compose/animation/SharedTransitionScopeImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    return-void
.end method

.method public update(Landroidx/compose/animation/RenderInTransitionOverlayNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->sharedTransitionScope:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->setSharedScope(Landroidx/compose/animation/SharedTransitionScopeImpl;)V

    iget-object v0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->renderInOverlay:Lll3;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->setRenderInOverlay(Lll3;)V

    iget p0, p0, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->zIndexInOverlay:F

    invoke-virtual {p1, p0}, Landroidx/compose/animation/RenderInTransitionOverlayNode;->setZIndexInOverlay(F)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 16
    check-cast p1, Landroidx/compose/animation/RenderInTransitionOverlayNode;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/RenderInTransitionOverlayNodeElement;->update(Landroidx/compose/animation/RenderInTransitionOverlayNode;)V

    return-void
.end method
