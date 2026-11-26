.class final Landroidx/compose/foundation/layout/DerivedWidthModifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/DerivedWidthModifierNode;",
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

.field private final widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Lnl3;Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/WindowInsets;",
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lj59;",
            ">;",
            "Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->inspectorInfo:Lnl3;

    iput-object p3, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/DerivedWidthModifierNode;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/layout/DerivedWidthModifierNode;

    iget-object v1, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    invoke-direct {v0, v1, p0}, Landroidx/compose/foundation/layout/DerivedWidthModifierNode;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 10
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->create()Landroidx/compose/foundation/layout/DerivedWidthModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    check-cast p1, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;

    iget-object v3, p1, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    iget-object p1, p1, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->inspectorInfo:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/DerivedWidthModifierNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->widthCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/foundation/layout/DerivedWidthModifierNode;->update(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 8
    check-cast p1, Landroidx/compose/foundation/layout/DerivedWidthModifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;->update(Landroidx/compose/foundation/layout/DerivedWidthModifierNode;)V

    return-void
.end method
