.class public final Landroidx/compose/foundation/layout/WindowInsetsSizeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bottomCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

.field private static final endCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

.field private static final startCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

.field private static final topCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkh;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lkh;-><init>(I)V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->startCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    new-instance v0, Lxu2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->endCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    new-instance v0, Lad2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->topCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    new-instance v0, Li29;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->bottomCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->bottomCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->topCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method private static final bottomCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->startCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->endCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method private static final endCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    invoke-interface {p0, p2, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0, p2, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method private static final startCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)I
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    invoke-interface {p0, p2, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0, p2, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method private static final topCalc$lambda$0(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)I
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getTop(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    return p0
.end method

.method public static final windowInsetsBottomHeight(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsBottomHeight$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsBottomHeight$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lnl3;

    move-result-object v1

    :goto_0
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->bottomCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lnl3;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final windowInsetsEndWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsEndWidth$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsEndWidth$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lnl3;

    move-result-object v1

    :goto_0
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->endCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lnl3;Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final windowInsetsStartWidth(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsStartWidth$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsStartWidth$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lnl3;

    move-result-object v1

    :goto_0
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->startCalc:Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/DerivedWidthModifierElement;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lnl3;Landroidx/compose/foundation/layout/WindowInsetsWidthCalculator;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final windowInsetsTopHeight(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsTopHeight$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/WindowInsetsSizeKt$windowInsetsTopHeight$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/layout/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lnl3;

    move-result-object v1

    :goto_0
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsSizeKt;->topCalc:Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;

    invoke-direct {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/DerivedHeightModifierElement;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Lnl3;Landroidx/compose/foundation/layout/WindowInsetsHeightCalculator;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
