.class final Landroidx/compose/ui/focus/FocusPropertiesElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusPropertiesNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final scope:Landroidx/compose/ui/focus/FocusPropertiesScope;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/focus/FocusPropertiesScope;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/focus/FocusPropertiesElement;Landroidx/compose/ui/focus/FocusPropertiesScope;ILjava/lang/Object;)Landroidx/compose/ui/focus/FocusPropertiesElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesElement;->copy(Landroidx/compose/ui/focus/FocusPropertiesScope;)Landroidx/compose/ui/focus/FocusPropertiesElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/focus/FocusPropertiesScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    return-object p0
.end method

.method public final copy(Landroidx/compose/ui/focus/FocusPropertiesScope;)Landroidx/compose/ui/focus/FocusPropertiesElement;
    .locals 0

    new-instance p0, Landroidx/compose/ui/focus/FocusPropertiesElement;

    invoke-direct {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesElement;-><init>(Landroidx/compose/ui/focus/FocusPropertiesScope;)V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusPropertiesElement;->create()Landroidx/compose/ui/focus/FocusPropertiesNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/focus/FocusPropertiesNode;
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesNode;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/FocusPropertiesNode;-><init>(Landroidx/compose/ui/focus/FocusPropertiesScope;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/focus/FocusPropertiesElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/focus/FocusPropertiesElement;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    iget-object p1, p1, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getScope()Landroidx/compose/ui/focus/FocusPropertiesScope;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "focusProperties"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "scope"

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FocusPropertiesElement(scope="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/focus/FocusPropertiesNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusPropertiesElement;->update(Landroidx/compose/ui/focus/FocusPropertiesNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/focus/FocusPropertiesNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesElement;->scope:Landroidx/compose/ui/focus/FocusPropertiesScope;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusPropertiesNode;->setFocusPropertiesScope(Landroidx/compose/ui/focus/FocusPropertiesScope;)V

    return-void
.end method
