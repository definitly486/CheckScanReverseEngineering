.class public final Landroidx/compose/animation/SharedBoundsNodeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/animation/SharedBoundsNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final sharedElementState:Landroidx/compose/animation/SharedElementEntry;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/animation/SharedBoundsNodeElement;Landroidx/compose/animation/SharedElementEntry;ILjava/lang/Object;)Landroidx/compose/animation/SharedBoundsNodeElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/animation/SharedBoundsNodeElement;->copy(Landroidx/compose/animation/SharedElementEntry;)Landroidx/compose/animation/SharedBoundsNodeElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/animation/SharedElementEntry;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    return-object p0
.end method

.method public final copy(Landroidx/compose/animation/SharedElementEntry;)Landroidx/compose/animation/SharedBoundsNodeElement;
    .locals 0

    new-instance p0, Landroidx/compose/animation/SharedBoundsNodeElement;

    invoke-direct {p0, p1}, Landroidx/compose/animation/SharedBoundsNodeElement;-><init>(Landroidx/compose/animation/SharedElementEntry;)V

    return-object p0
.end method

.method public create()Landroidx/compose/animation/SharedBoundsNode;
    .locals 1

    new-instance v0, Landroidx/compose/animation/SharedBoundsNode;

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-direct {v0, p0}, Landroidx/compose/animation/SharedBoundsNode;-><init>(Landroidx/compose/animation/SharedElementEntry;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/animation/SharedBoundsNodeElement;->create()Landroidx/compose/animation/SharedBoundsNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/SharedBoundsNodeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/animation/SharedBoundsNodeElement;

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    iget-object p1, p1, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSharedElementState()Landroidx/compose/animation/SharedElementEntry;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "sharedBounds"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "sharedElementState"

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedBoundsNodeElement(sharedElementState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/animation/SharedBoundsNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNodeElement;->sharedElementState:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p1, p0}, Landroidx/compose/animation/SharedBoundsNode;->setSharedElementEntry$animation(Landroidx/compose/animation/SharedElementEntry;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/animation/SharedBoundsNode;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/SharedBoundsNodeElement;->update(Landroidx/compose/animation/SharedBoundsNode;)V

    return-void
.end method
