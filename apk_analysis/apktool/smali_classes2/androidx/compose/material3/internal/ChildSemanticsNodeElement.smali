.class public final Landroidx/compose/material3/internal/ChildSemanticsNodeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/material3/internal/ChildSemanticsNode;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final properties:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/material3/internal/ChildSemanticsNode;
    .locals 1

    new-instance v0, Landroidx/compose/material3/internal/ChildSemanticsNode;

    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    invoke-direct {v0, p0}, Landroidx/compose/material3/internal/ChildSemanticsNode;-><init>(Lnl3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->create()Landroidx/compose/material3/internal/ChildSemanticsNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    check-cast p1, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;

    iget-object p1, p1, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getProperties()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "childSemantics"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    const-string v0, "properties"

    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/material3/internal/ChildSemanticsNode;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->properties:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/material3/internal/ChildSemanticsNode;->setProperties(Lnl3;)V

    invoke-static {p1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 9
    check-cast p1, Landroidx/compose/material3/internal/ChildSemanticsNode;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/internal/ChildSemanticsNodeElement;->update(Landroidx/compose/material3/internal/ChildSemanticsNode;)V

    return-void
.end method
