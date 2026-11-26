.class public final Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LocalTextSelectionColors:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/foundation/text/selection/TextSelectionColors;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldb7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldb7;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lll3;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method private static final LocalTextSelectionColors$lambda$0()Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 1

    invoke-static {}, Landroidx/compose/foundation/text/selection/DefaultTextSelectionColors_androidKt;->getDefaultTextSelectionColors()Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a()Landroidx/compose/foundation/text/selection/TextSelectionColors;
    .locals 1

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors$lambda$0()Landroidx/compose/foundation/text/selection/TextSelectionColors;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/foundation/text/selection/TextSelectionColors;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->LocalTextSelectionColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
