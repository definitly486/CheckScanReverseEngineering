.class public final Landroidx/compose/foundation/style/StyleElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/style/StyleOuterNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final style:Landroidx/compose/foundation/style/Style;

.field private final styleState:Landroidx/compose/foundation/style/StyleState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    iput-object p2, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/foundation/style/StyleElement;Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;ILjava/lang/Object;)Landroidx/compose/foundation/style/StyleElement;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/style/StyleElement;->copy(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/StyleElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/foundation/style/StyleState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    return-object p0
.end method

.method public final component2()Landroidx/compose/foundation/style/Style;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    return-object p0
.end method

.method public final copy(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/StyleElement;
    .locals 0

    new-instance p0, Landroidx/compose/foundation/style/StyleElement;

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/style/StyleElement;-><init>(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)V

    return-object p0
.end method

.method public create()Landroidx/compose/foundation/style/StyleOuterNode;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/style/StyleOuterNode;

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/style/StyleOuterNode;-><init>(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/style/StyleElement;->create()Landroidx/compose/foundation/style/StyleOuterNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Landroidx/compose/foundation/style/StyleElement;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/foundation/style/StyleElement;

    iget-object v0, p1, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getStyle()Landroidx/compose/foundation/style/Style;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    return-object p0
.end method

.method public final getStyleState()Landroidx/compose/foundation/style/StyleState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 3

    const-string v0, "style"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    invoke-virtual {v1, v0, v2}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "styleState"

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StyleElement(styleState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/foundation/style/StyleOuterNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/style/StyleElement;->style:Landroidx/compose/foundation/style/Style;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/style/StyleOuterNode;->setStyle$foundation(Landroidx/compose/foundation/style/Style;)V

    iget-object p0, p0, Landroidx/compose/foundation/style/StyleElement;->styleState:Landroidx/compose/foundation/style/StyleState;

    if-nez p0, :cond_0

    new-instance p0, Landroidx/compose/foundation/style/MutableStyleState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/style/MutableStyleState;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/style/StyleOuterNode;->setState$foundation(Landroidx/compose/foundation/style/StyleState;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 19
    check-cast p1, Landroidx/compose/foundation/style/StyleOuterNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/style/StyleElement;->update(Landroidx/compose/foundation/style/StyleOuterNode;)V

    return-void
.end method
