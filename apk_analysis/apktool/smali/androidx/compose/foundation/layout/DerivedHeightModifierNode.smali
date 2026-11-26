.class final Landroidx/compose/foundation/layout/DerivedHeightModifierNode;
.super Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# instance fields
.field private heightCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

.field private heightInsets:Landroidx/compose/foundation/layout/WindowInsets;

.field private insets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsKt;->WindowInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightInsets:Landroidx/compose/foundation/layout/WindowInsets;

    return-void
.end method

.method public static synthetic c(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->measure_3p2s80s$lambda$1(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final measure_3p2s80s$lambda$1(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public calculateInsets(Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    return-object p1
.end method

.method public insetsInvalidated()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->getAncestorConsumedInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->exclude(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-super {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->insetsInvalidated()V

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    return-void
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {v0, p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;->calculate(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v8, Landroidx/compose/foundation/layout/g;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    move-object p0, p1

    const/4 v7, 0x3

    const/4 v8, 0x0

    move v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v5

    move-wide v1, p3

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v2

    move v3, v5

    new-instance v5, Landroidx/compose/foundation/layout/h;

    invoke-direct {v5, p1}, Landroidx/compose/foundation/layout/h;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/InsetsConsumingModifierNode;->getAncestorConsumedInsets()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->exclude(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifierNode;->heightInsets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    return-void
.end method
