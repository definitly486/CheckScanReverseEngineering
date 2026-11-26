.class public abstract Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/TraversableNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field private consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->onAttach$lambda$0(Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;Landroidx/compose/ui/node/TraversableNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->invalidateChildConsumedInsets$lambda$0(Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    move-result-object p0

    return-object p0
.end method

.method private final invalidateChildConsumedInsets()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcz0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcz0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseDescendants(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lnl3;)V

    return-void
.end method

.method private static final invalidateChildConsumedInsets$lambda$0(Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->setAncestorConsumedInsets(Landroidx/compose/foundation/layout/WindowInsets;)V

    sget-object p0, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->SkipSubtreeAndContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    return-object p0
.end method

.method private static final onAttach$lambda$0(Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;Landroidx/compose/ui/node/TraversableNode;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;

    iget-object p1, p1, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    const/4 p0, 0x0

    return p0
.end method

.method private final setAncestorConsumedInsets(Landroidx/compose/foundation/layout/WindowInsets;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->insetsInvalidated()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
.end method

.method public final getAncestorConsumedInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

.method public final getConsumedInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

.method public getTraverseKey()Ljava/lang/Object;
    .locals 0

    const-string p0, "androidx.compose.foundation.layout.ConsumedInsetsProvider"

    return-object p0
.end method

.method public insetsInvalidated()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->invalidateChildConsumedInsets()V

    return-void
.end method

.method public onAttach()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->getTraverseKey()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lw54;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw54;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/TraversableNodeKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lnl3;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->insetsInvalidated()V

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onAttach()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->consumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->invalidateChildConsumedInsets()V

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onDetach()V

    return-void
.end method

.method public onReset()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onReset()V

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->ancestorConsumedInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method
