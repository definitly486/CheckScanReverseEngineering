.class final Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;-><init>(Lll3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->create()Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    instance-of v3, p1, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;

    if-eqz v3, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    check-cast p1, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;

    iget-object p1, p1, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    if-ne p0, p1, :cond_1

    move v0, v1

    :cond_1
    or-int p0, v2, v0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "handwritingDetector"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "callback"

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->callback:Lll3;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;->setCallback(Lll3;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/handwriting/HandwritingDetectorElement;->update(Landroidx/compose/foundation/text/handwriting/HandwritingDetectorNode;)V

    return-void
.end method
