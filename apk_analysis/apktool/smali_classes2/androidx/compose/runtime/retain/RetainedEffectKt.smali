.class public final Landroidx/compose/runtime/retain/RetainedEffectKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final InternalRetainedEffectScope:Landroidx/compose/runtime/retain/RetainedEffectScope;

.field private static final RetainedEffectNoParamError:Ljava/lang/String; = "RetainedEffect must provide one or more \'key\' parameters that define the identity of the RetainedEffect and determine when its previous effect should be disposed and a new effect started for the new key."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/RetainedEffectScope;

    invoke-direct {v0}, Landroidx/compose/runtime/retain/RetainedEffectScope;-><init>()V

    sput-object v0, Landroidx/compose/runtime/retain/RetainedEffectKt;->InternalRetainedEffectScope:Landroidx/compose/runtime/retain/RetainedEffectScope;

    return-void
.end method

.method public static final RetainedEffect(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/retain/RetainedEffectScope;",
            "+",
            "Landroidx/compose/runtime/retain/RetainedEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 96
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:243)"

    const v2, 0x7ce8d5b

    invoke-static {v2, p5, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 97
    :cond_0
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    and-int/lit16 p1, p5, 0x1c00

    xor-int/lit16 p1, p1, 0xc00

    const/4 p2, 0x0

    const/16 v0, 0x800

    if-le p1, v0, :cond_1

    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    and-int/lit16 p1, p5, 0xc00

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, p2

    .line 98
    :goto_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    const/4 v0, 0x3

    if-nez p1, :cond_4

    .line 99
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p5, p1, :cond_5

    .line 100
    :cond_4
    new-instance p5, Lb11;

    invoke-direct {p5, p3, v0}, Lb11;-><init>(Ljava/lang/Object;I)V

    .line 101
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 102
    :cond_5
    check-cast p5, Lll3;

    const p1, 0x69e3e6c7

    .line 103
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, p5, p4, p2}, Landroidx/compose/runtime/retain/RetainKt;->retain(I[Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void
.end method

.method public static final RetainedEffect(Ljava/lang/Object;Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/retain/RetainedEffectScope;",
            "+",
            "Landroidx/compose/runtime/retain/RetainedEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 88
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:190)"

    const v2, -0x2360d145

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 89
    :cond_0
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    and-int/lit16 p1, p4, 0x380

    xor-int/lit16 p1, p1, 0x180

    const/4 v0, 0x0

    const/16 v1, 0x100

    if-le p1, v1, :cond_1

    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    and-int/lit16 p1, p4, 0x180

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    .line 90
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p1, :cond_4

    .line 91
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_5

    .line 92
    :cond_4
    new-instance p4, Luj;

    const/4 p1, 0x6

    invoke-direct {p4, p2, p1}, Luj;-><init>(Ljava/lang/Object;I)V

    .line 93
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 94
    :cond_5
    check-cast p4, Lll3;

    const p1, 0x69e3e6c7

    const/4 p2, 0x2

    .line 95
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, p4, p3, v0}, Landroidx/compose/runtime/retain/RetainKt;->retain(I[Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void
.end method

.method public static final RetainedEffect(Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/retain/RetainedEffectScope;",
            "+",
            "Landroidx/compose/runtime/retain/RetainedEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:138)"

    const v2, 0x2b7801b

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    and-int/lit8 v0, p3, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-le v0, v2, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v2, :cond_3

    :cond_2
    move p3, v3

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_4

    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_5

    :cond_4
    new-instance v0, Lf80;

    const/4 p3, 0x5

    invoke-direct {v0, p1, p3}, Lf80;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v0, Lll3;

    const p1, 0x69e3e6c7

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0, v0, p2, v1}, Landroidx/compose/runtime/retain/RetainKt;->retain(I[Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void
.end method

.method public static final RetainedEffect(Lnl3;Landroidx/compose/runtime/Composer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/retain/RetainedEffectScope;",
            "+",
            "Landroidx/compose/runtime/retain/RetainedEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    .line 87
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string p1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:87)"

    const v0, 0x316f817b

    invoke-static {v0, p2, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RetainedEffect must provide one or more \'key\' parameters that define the identity of the RetainedEffect and determine when its previous effect should be disposed and a new effect started for the new key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final RetainedEffect([Ljava/lang/Object;Lnl3;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lnl3<",
            "-",
            "Landroidx/compose/runtime/retain/RetainedEffectScope;",
            "+",
            "Landroidx/compose/runtime/retain/RetainedEffectResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 104
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.retain.RetainedEffect (RetainedEffect.kt:293)"

    const v2, 0x2a7f6988

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 105
    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    and-int/lit8 v0, p3, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v2, :cond_3

    :cond_2
    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    move p3, v1

    .line 106
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_4

    .line 107
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_5

    .line 108
    :cond_4
    new-instance v0, Lh67;

    invoke-direct {v0, p1, v1}, Lh67;-><init>(Ljava/lang/Object;I)V

    .line 109
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 110
    :cond_5
    check-cast v0, Lll3;

    .line 111
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const p1, 0x69e3e6c7

    invoke-static {p1, p0, v0, p2, v1}, Landroidx/compose/runtime/retain/RetainKt;->retain(I[Ljava/lang/Object;Lll3;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    return-void
.end method

.method private static final RetainedEffect$lambda$0$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/RetainedEffectImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/retain/RetainedEffectImpl;-><init>(Lnl3;)V

    return-object v0
.end method

.method private static final RetainedEffect$lambda$1$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/RetainedEffectImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/retain/RetainedEffectImpl;-><init>(Lnl3;)V

    return-object v0
.end method

.method private static final RetainedEffect$lambda$2$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/RetainedEffectImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/retain/RetainedEffectImpl;-><init>(Lnl3;)V

    return-object v0
.end method

.method private static final RetainedEffect$lambda$3$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/RetainedEffectImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/retain/RetainedEffectImpl;-><init>(Lnl3;)V

    return-object v0
.end method

.method public static synthetic a(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->RetainedEffect$lambda$3$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInternalRetainedEffectScope$p()Landroidx/compose/runtime/retain/RetainedEffectScope;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/retain/RetainedEffectKt;->InternalRetainedEffectScope:Landroidx/compose/runtime/retain/RetainedEffectScope;

    return-object v0
.end method

.method public static synthetic b(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->RetainedEffect$lambda$0$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->RetainedEffect$lambda$1$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/retain/RetainedEffectKt;->RetainedEffect$lambda$2$0(Lnl3;)Landroidx/compose/runtime/retain/RetainedEffectImpl;

    move-result-object p0

    return-object p0
.end method
