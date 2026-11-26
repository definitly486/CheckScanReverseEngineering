.class public final Landroidx/activity/compose/LocalActivityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LocalActivity:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyc2;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lyc2;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalWithComputedDefaultOf(Lnl3;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalActivity$lambda$0(Landroidx/compose/runtime/CompositionLocalAccessorScope;)Landroid/app/Activity;
    .locals 1

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/runtime/CompositionLocalAccessorScope;->getCurrentValue(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    check-cast p0, Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/runtime/CompositionLocalAccessorScope;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Landroidx/activity/compose/LocalActivityKt;->LocalActivity$lambda$0(Landroidx/compose/runtime/CompositionLocalAccessorScope;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalActivity()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
