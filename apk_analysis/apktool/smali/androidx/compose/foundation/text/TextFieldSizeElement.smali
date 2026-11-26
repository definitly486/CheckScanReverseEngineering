.class final Landroidx/compose/foundation/text/TextFieldSizeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/text/TextFieldSizeNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final style:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/text/TextFieldSizeNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/TextFieldSizeNode;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/TextFieldSizeNode;-><init>(Landroidx/compose/ui/text/TextStyle;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldSizeElement;->create()Landroidx/compose/foundation/text/TextFieldSizeNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/text/TextFieldSizeElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    check-cast p1, Landroidx/compose/foundation/text/TextFieldSizeElement;

    iget-object p1, p1, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "textFieldMinSize"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "style"

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/text/TextFieldSizeNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldSizeElement;->style:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/TextFieldSizeNode;->update(Landroidx/compose/ui/text/TextStyle;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/text/TextFieldSizeNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldSizeElement;->update(Landroidx/compose/foundation/text/TextFieldSizeNode;)V

    return-void
.end method
