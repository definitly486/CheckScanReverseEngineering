.class final Landroidx/compose/ui/FrameRateElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/FrameRateModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final frameRate:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/FrameRateElement;FILjava/lang/Object;)Landroidx/compose/ui/FrameRateElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/FrameRateElement;->copy(F)Landroidx/compose/ui/FrameRateElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    return p0
.end method

.method public final copy(F)Landroidx/compose/ui/FrameRateElement;
    .locals 0

    new-instance p0, Landroidx/compose/ui/FrameRateElement;

    invoke-direct {p0, p1}, Landroidx/compose/ui/FrameRateElement;-><init>(F)V

    return-object p0
.end method

.method public create()Landroidx/compose/ui/FrameRateModifierNode;
    .locals 1

    new-instance v0, Landroidx/compose/ui/FrameRateModifierNode;

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    invoke-direct {v0, p0}, Landroidx/compose/ui/FrameRateModifierNode;-><init>(F)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/FrameRateElement;->create()Landroidx/compose/ui/FrameRateModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/FrameRateElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/FrameRateElement;

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    iget p1, p1, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getFrameRate()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "FrameRateModifierNode"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v0, "frameRate"

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FrameRateElement(frameRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ljs2;->b(Ljava/lang/StringBuilder;FC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/ui/FrameRateModifierNode;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/FrameRateModifierNode;->getFrameRate()F

    move-result v0

    iget v1, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/FrameRateModifierNode;->setShouldUpdateFrameRates(Z)V

    iget p0, p0, Landroidx/compose/ui/FrameRateElement;->frameRate:F

    invoke-virtual {p1, p0}, Landroidx/compose/ui/FrameRateModifierNode;->setFrameRate(F)V

    invoke-static {p1}, Landroidx/compose/ui/node/DrawModifierNodeKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 24
    check-cast p1, Landroidx/compose/ui/FrameRateModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/FrameRateElement;->update(Landroidx/compose/ui/FrameRateModifierNode;)V

    return-void
.end method
