.class public final Landroidx/compose/runtime/retain/RetainKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RetainedValuesStoreMissingValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/retain/RetainKt;->RetainedValuesStoreMissingValue:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/retain/RetainedValueHolder;Landroidx/compose/runtime/retain/RetainedValuesStore;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/retain/RetainKt;->retainImpl$lambda$1$0(Landroidx/compose/runtime/retain/RetainedValueHolder;Landroidx/compose/runtime/retain/RetainedValuesStore;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final retain(ILll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lll3<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)TT;"
        }
    .end annotation

    .line 43
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.retain (Retain.kt:195)"

    const v2, 0x278565b3

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 44
    :cond_0
    new-instance v0, Landroidx/compose/runtime/retain/RetainKeys;

    const/4 v1, 0x0

    .line 45
    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    const/4 v3, 0x0

    .line 46
    invoke-direct {v0, v3, v1, v2, p0}, Landroidx/compose/runtime/retain/RetainKeys;-><init>([Ljava/lang/Object;JI)V

    and-int/lit8 p0, p3, 0x70

    .line 47
    invoke-static {v0, p1, p2, p0}, Landroidx/compose/runtime/retain/RetainKt;->retainImpl(Landroidx/compose/runtime/retain/RetainKeys;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public static final retain(I[Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Lll3<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)TT;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.retain (Retain.kt:209)"

    const v2, 0x7e53ae06

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    new-instance v0, Landroidx/compose/runtime/retain/RetainKeys;

    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2, p0}, Landroidx/compose/runtime/retain/RetainKeys;-><init>([Ljava/lang/Object;JI)V

    shr-int/lit8 p0, p4, 0x3

    and-int/lit8 p0, p0, 0x70

    invoke-static {v0, p2, p3, p0}, Landroidx/compose/runtime/retain/RetainKt;->retainImpl(Landroidx/compose/runtime/retain/RetainKeys;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public static final retain(Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)TT;"
        }
    .end annotation

    .line 48
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final retain([Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Lll3<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)TT;"
        }
    .end annotation

    .line 49
    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final retainImpl(Landroidx/compose/runtime/retain/RetainKeys;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/retain/RetainKeys;",
            "Lll3<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "I)TT;"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.retainImpl (Retain.kt:222)"

    const v2, 0x22c19a3f

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/retain/LocalRetainedValuesStoreKt;->getLocalRetainedValuesStore()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/retain/RetainedValuesStore;

    and-int/lit8 v1, p3, 0xe

    xor-int/lit8 v1, v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v1, v3, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    and-int/lit8 p3, p3, 0x6

    if-ne p3, v3, :cond_3

    :cond_2
    move p3, v2

    goto :goto_0

    :cond_3
    move p3, v4

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_4

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v1, p3, :cond_6

    :cond_4
    sget-object p3, Landroidx/compose/runtime/retain/RetainKt;->RetainedValuesStoreMissingValue:Ljava/lang/Object;

    invoke-interface {v0, p0, p3}, Landroidx/compose/runtime/retain/RetainedValuesStore;->consumeExitedValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p3, :cond_5

    new-instance p1, Landroidx/compose/runtime/retain/RetainedValueHolder;

    invoke-direct {p1, p0, v1, v0, v4}, Landroidx/compose/runtime/retain/RetainedValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/retain/RetainedValuesStore;Z)V

    move-object v1, p1

    goto :goto_1

    :cond_5
    new-instance p3, Landroidx/compose/runtime/retain/RetainedValueHolder;

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p0, p1, v0, v2}, Landroidx/compose/runtime/retain/RetainedValueHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/retain/RetainedValuesStore;Z)V

    move-object v1, p3

    :goto_1
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v1, Landroidx/compose/runtime/retain/RetainedValueHolder;

    invoke-virtual {v1}, Landroidx/compose/runtime/retain/RetainedValueHolder;->getOwner()Landroidx/compose/runtime/retain/RetainedValuesStore;

    move-result-object p0

    if-eq p0, v0, :cond_9

    const p0, -0x6033b1e4

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_7

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_8

    :cond_7
    new-instance p1, Loa2;

    invoke-direct {p1, v2, v1, v0}, Loa2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_8
    check-cast p1, Lll3;

    invoke-static {p1, p2, v4}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lll3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_2

    :cond_9
    const p0, -0x6032a75d

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_2
    invoke-virtual {v1}, Landroidx/compose/runtime/retain/RetainedValueHolder;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    return-object p0
.end method

.method private static final retainImpl$lambda$1$0(Landroidx/compose/runtime/retain/RetainedValueHolder;Landroidx/compose/runtime/retain/RetainedValuesStore;)Lj59;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/retain/RetainedValueHolder;->readoptUnder$runtime_retain(Landroidx/compose/runtime/retain/RetainedValuesStore;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
