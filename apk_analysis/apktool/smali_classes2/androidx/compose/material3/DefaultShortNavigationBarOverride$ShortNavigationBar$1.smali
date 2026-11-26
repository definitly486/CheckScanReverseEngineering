.class final Landroidx/compose/material3/DefaultShortNavigationBarOverride$ShortNavigationBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DefaultShortNavigationBarOverride;->ShortNavigationBar(Landroidx/compose/material3/ShortNavigationBarOverrideScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbm3<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_ShortNavigationBar:Landroidx/compose/material3/ShortNavigationBarOverrideScope;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/ShortNavigationBarOverrideScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DefaultShortNavigationBarOverride$ShortNavigationBar$1;->$this_ShortNavigationBar:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 217
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/DefaultShortNavigationBarOverride$ShortNavigationBar$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.DefaultShortNavigationBarOverride.ShortNavigationBar.<anonymous> (ShortNavigationBar.kt:124)"

    const v4, 0xe14aee7

    invoke-static {v4, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-object v0, p0, Landroidx/compose/material3/DefaultShortNavigationBarOverride$ShortNavigationBar$1;->$this_ShortNavigationBar:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

    invoke-virtual {v0}, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->getWindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->windowInsetsPadding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    sget-object v0, Landroidx/compose/material3/tokens/NavigationBarTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/NavigationBarTokens;->getContainerHeight-D9Ej5fM()F

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v4, v0, v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/material3/DefaultShortNavigationBarOverride$ShortNavigationBar$1;->$this_ShortNavigationBar:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

    invoke-virtual {v0}, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->getContent()Lbm3;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/material3/DefaultShortNavigationBarOverride$ShortNavigationBar$1;->$this_ShortNavigationBar:Landroidx/compose/material3/ShortNavigationBarOverrideScope;

    invoke-virtual {p0}, Landroidx/compose/material3/ShortNavigationBarOverrideScope;->getArrangement-LnnQw40()I

    move-result p0

    sget-object v1, Landroidx/compose/material3/ShortNavigationBarArrangement;->Companion:Landroidx/compose/material3/ShortNavigationBarArrangement$Companion;

    invoke-virtual {v1}, Landroidx/compose/material3/ShortNavigationBarArrangement$Companion;->getEqualWeight-LnnQw40()I

    move-result v3

    invoke-static {p0, v3}, Landroidx/compose/material3/ShortNavigationBarArrangement;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p0, Landroidx/compose/material3/EqualWeightContentMeasurePolicy;

    invoke-direct {p0}, Landroidx/compose/material3/EqualWeightContentMeasurePolicy;-><init>()V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/material3/ShortNavigationBarArrangement$Companion;->getCentered-LnnQw40()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/material3/ShortNavigationBarArrangement;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Landroidx/compose/material3/CenteredContentMeasurePolicy;

    invoke-direct {p0}, Landroidx/compose/material3/CenteredContentMeasurePolicy;-><init>()V

    :goto_1
    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v3

    invoke-static {p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v5

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_2
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    invoke-static {v4, v5, p0, v5, v3}, Lcc;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/layout/MeasurePolicy;Landroidx/compose/runtime/Composer;Landroidx/compose/runtime/CompositionLocalMap;)Lbm3;

    move-result-object p0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    invoke-static {p0, v1, v5, v1}, Ldc;->b(Lbm3;ILandroidx/compose/runtime/Composer;I)V

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lbm3;

    move-result-object p0

    invoke-static {v5, p2, p0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endNode()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-void

    :cond_8
    const-string p0, "Invalid ItemsArrangement value."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    return-void
.end method
