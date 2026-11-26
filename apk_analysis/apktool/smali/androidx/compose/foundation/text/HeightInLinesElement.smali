.class final Landroidx/compose/foundation/text/HeightInLinesElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/HeightInLinesNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final maxLines:I

.field private final minLines:I

.field private final textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    iput p3, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/text/HeightInLinesNode;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/text/HeightInLinesNode;

    iget-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    iget v2, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    invoke-direct {v0, v1, v2, p0}, Landroidx/compose/foundation/text/HeightInLinesNode;-><init>(Landroidx/compose/ui/text/TextStyle;II)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesElement;->create()Landroidx/compose/foundation/text/HeightInLinesNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/text/HeightInLinesElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    check-cast p1, Landroidx/compose/foundation/text/HeightInLinesElement;

    iget-object v3, p1, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    iget v3, p1, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    iget p1, p1, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    add-int/2addr v0, p0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "heightInLines"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minLines"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxLines"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "textStyle"

    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/text/HeightInLinesNode;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->textStyle:Landroidx/compose/ui/text/TextStyle;

    iget v1, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->minLines:I

    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesElement;->maxLines:I

    invoke-virtual {p1, v0, v1, p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->update(Landroidx/compose/ui/text/TextStyle;II)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 10
    check-cast p1, Landroidx/compose/foundation/text/HeightInLinesNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/HeightInLinesElement;->update(Landroidx/compose/foundation/text/HeightInLinesNode;)V

    return-void
.end method
