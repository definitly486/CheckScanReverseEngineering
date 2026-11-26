.class final Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final block:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private final inspectorInfo:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->block:Lnl3;

    iput-object p2, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->inspectorInfo:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->block:Lnl3;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;-><init>(Lnl3;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->create()Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;

    iget-object p1, p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->block:Lnl3;

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->block:Lnl3;

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->block:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->inspectorInfo:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->block:Lnl3;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;->update(Lnl3;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/ConsumedInsetsModifierElement;->update(Landroidx/compose/foundation/layout/ConsumedInsetsModifierNode;)V

    return-void
.end method
