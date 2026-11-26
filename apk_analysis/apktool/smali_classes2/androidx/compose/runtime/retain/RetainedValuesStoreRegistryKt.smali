.class public final Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryKt;->retainRetainedValuesStoreRegistry$lambda$0$0()Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static final retainRetainedValuesStoreRegistry(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/retain/RetainedValuesStoreRegistry;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.retainRetainedValuesStoreRegistry (RetainedValuesStoreRegistry.kt:145)"

    const v2, -0x6b4a25e1

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    new-instance p1, La62;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, La62;-><init>(I)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Lll3;

    const v0, -0x10fed9d3

    const/16 v1, 0x30

    invoke-static {v0, p1, p0, v1}, Landroidx/compose/runtime/retain/RetainKt;->retain(ILll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;->getRetainedValuesStoreRegistry()Landroidx/compose/runtime/retain/RetainedValuesStoreRegistry;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-object p0
.end method

.method private static final retainRetainedValuesStoreRegistry$lambda$0$0()Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;

    invoke-direct {v0}, Landroidx/compose/runtime/retain/RetainedValuesStoreRegistryWrapper;-><init>()V

    return-object v0
.end method
