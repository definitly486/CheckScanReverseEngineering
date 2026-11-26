.class final Landroidx/compose/ui/focus/FocusChangedElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusChangedNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final onFocusChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusState;",
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
            "Landroidx/compose/ui/focus/FocusState;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusChangedElement;->create()Landroidx/compose/ui/focus/FocusChangedNode;

    move-result-object p0

    return-object p0
.end method

.method public create()Landroidx/compose/ui/focus/FocusChangedNode;
    .locals 1

    new-instance v0, Landroidx/compose/ui/focus/FocusChangedNode;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    invoke-direct {v0, p0}, Landroidx/compose/ui/focus/FocusChangedNode;-><init>(Lnl3;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/focus/FocusChangedElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    check-cast p1, Landroidx/compose/ui/focus/FocusChangedElement;

    iget-object p1, p1, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getOnFocusChanged()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/compose/ui/focus/FocusState;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "onFocusChanged"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/InspectorInfo;->getProperties()Landroidx/compose/ui/platform/ValueElementSequence;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/ValueElementSequence;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/ui/focus/FocusChangedNode;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusChangedElement;->update(Landroidx/compose/ui/focus/FocusChangedNode;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/focus/FocusChangedNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusChangedElement;->onFocusChanged:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusChangedNode;->setOnFocusChanged(Lnl3;)V

    return-void
.end method
