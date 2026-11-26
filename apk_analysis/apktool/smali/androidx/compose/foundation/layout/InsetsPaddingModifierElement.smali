.class final Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final insets:Landroidx/compose/foundation/layout/WindowInsets;

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
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->inspectorInfo:Lnl3;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->create()Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;

    iget-object p1, p1, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p1, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->inspectorInfo:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;)V
    .locals 0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;->update(Landroidx/compose/foundation/layout/WindowInsets;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/InsetsPaddingModifierElement;->update(Landroidx/compose/foundation/layout/InsetsPaddingModifierNode;)V

    return-void
.end method
