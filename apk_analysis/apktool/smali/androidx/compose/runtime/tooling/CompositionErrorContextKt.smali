.class public final Landroidx/compose/runtime/tooling/CompositionErrorContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LocalCompositionErrorContext:Landroidx/compose/runtime/CompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/CompositionLocal<",
            "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lju1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lju1;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lll3;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext:Landroidx/compose/runtime/CompositionLocal;

    return-void
.end method

.method private static final LocalCompositionErrorContext$lambda$0()Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a()Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .locals 1

    invoke-static {}, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext$lambda$0()Landroidx/compose/runtime/tooling/CompositionErrorContext;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocalCompositionErrorContext()Landroidx/compose/runtime/CompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext:Landroidx/compose/runtime/CompositionLocal;

    return-object v0
.end method
