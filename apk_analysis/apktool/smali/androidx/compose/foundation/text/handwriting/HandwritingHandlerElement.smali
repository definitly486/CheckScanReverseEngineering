.class final Landroidx/compose/foundation/text/handwriting/HandwritingHandlerElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;

    invoke-direct {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;-><init>()V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerElement;->create()Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerElement;

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "handwritingHandler"

    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;)V
    .locals 0

    .line 6
    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/handwriting/HandwritingHandlerElement;->update(Landroidx/compose/foundation/text/handwriting/HandwritingHandlerNode;)V

    return-void
.end method
