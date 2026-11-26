.class public final Landroidx/compose/animation/BoundsAnimationElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/animation/BoundsAnimationModifierNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final animateMotionFrameOfReference:Z

.field private final boundsTransform:Landroidx/compose/animation/BoundsTransform;

.field private final lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

.field private final resolveMeasureConstraints:Lbm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm3<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/animation/BoundsTransform;Lbm3;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/LookaheadScope;",
            "Landroidx/compose/animation/BoundsTransform;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    iput-object p2, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iput-object p3, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    iput-boolean p4, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/animation/BoundsAnimationModifierNode;
    .locals 4

    new-instance v0, Landroidx/compose/animation/BoundsAnimationModifierNode;

    iget-object v1, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iget-object v3, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/animation/BoundsAnimationModifierNode;-><init>(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/animation/BoundsTransform;Lbm3;Z)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 14
    invoke-virtual {p0}, Landroidx/compose/animation/BoundsAnimationElement;->create()Landroidx/compose/animation/BoundsAnimationModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/animation/BoundsAnimationElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/BoundsAnimationElement;

    iget-object v0, p1, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    iget-object v1, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    iget-object v1, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    iget-object v1, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAnimateMotionFrameOfReference()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    return p0
.end method

.method public final getBoundsTransform()Landroidx/compose/animation/BoundsTransform;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    return-object p0
.end method

.method public final getLookaheadScope()Landroidx/compose/ui/layout/LookaheadScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    return-object p0
.end method

.method public final getResolveMeasureConstraints()Lbm3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbm3<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "boundsAnimation"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "lookaheadScope"

    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "boundsTransform"

    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    const-string v1, "onChooseMeasureConstraints"

    iget-object v2, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "animateMotionFrameOfReference"

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/animation/BoundsAnimationModifierNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationElement;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/BoundsAnimationModifierNode;->setLookaheadScope(Landroidx/compose/ui/layout/LookaheadScope;)V

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationElement;->boundsTransform:Landroidx/compose/animation/BoundsTransform;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/BoundsAnimationModifierNode;->setBoundsTransform(Landroidx/compose/animation/BoundsTransform;)V

    iget-object v0, p0, Landroidx/compose/animation/BoundsAnimationElement;->resolveMeasureConstraints:Lbm3;

    invoke-virtual {p1, v0}, Landroidx/compose/animation/BoundsAnimationModifierNode;->setOnChooseMeasureConstraints(Lbm3;)V

    iget-boolean p0, p0, Landroidx/compose/animation/BoundsAnimationElement;->animateMotionFrameOfReference:Z

    invoke-virtual {p1, p0}, Landroidx/compose/animation/BoundsAnimationModifierNode;->setAnimateMotionFrameOfReference(Z)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 21
    check-cast p1, Landroidx/compose/animation/BoundsAnimationModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/BoundsAnimationElement;->update(Landroidx/compose/animation/BoundsAnimationModifierNode;)V

    return-void
.end method
