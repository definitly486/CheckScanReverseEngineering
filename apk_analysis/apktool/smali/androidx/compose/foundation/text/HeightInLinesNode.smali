.class final Landroidx/compose/foundation/text/HeightInLinesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# instance fields
.field private dirty:Z

.field private fontResolutionState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private maxLines:I

.field private minLines:I

.field private precomputedMaxLinesHeight:I

.field private precomputedMinLinesHeight:I

.field private resolvedStyle:Landroidx/compose/ui/text/TextStyle;

.field private final shouldAutoInvalidate:Z

.field private textStyle:Landroidx/compose/ui/text/TextStyle;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->textStyle:Landroidx/compose/ui/text/TextStyle;

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->minLines:I

    iput p3, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->maxLines:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->precomputedMinLinesHeight:I

    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->precomputedMaxLinesHeight:I

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/text/HeightInLinesNode;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->onAttach$lambda$0(Landroidx/compose/foundation/text/HeightInLinesNode;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/HeightInLinesNode;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/foundation/text/HeightInLinesNode;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->onFontResolutionStateChanged$lambda$0(Landroidx/compose/foundation/text/HeightInLinesNode;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final computeHeights(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 6

    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->getEmptyTextReplacement()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, p1, p3, v0, v1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->getEmptyTextReplacement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->getEmptyTextReplacement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p2, p1, p3, v2, v3}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    move-result-wide p1

    and-long/2addr p1, v4

    long-to-int p1, p1

    sub-int/2addr p1, v0

    iget p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->minLines:I

    const/4 p3, -0x1

    if-ne p2, v1, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v1

    mul-int/2addr p2, p1

    add-int/2addr p2, v0

    :goto_0
    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->precomputedMinLinesHeight:I

    iget p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->maxLines:I

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p2, v1

    mul-int/2addr p2, p1

    add-int p3, p2, v0

    :goto_1
    iput p3, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->precomputedMaxLinesHeight:I

    return-void
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
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

.method private static final onAttach$lambda$0(Landroidx/compose/foundation/text/HeightInLinesNode;)Lj59;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireFontResolutionState()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final onFontResolutionStateChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->fontResolutionState:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/h;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/h;-><init>(Landroidx/compose/foundation/text/HeightInLinesNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lll3;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    return-void
.end method

.method private static final onFontResolutionStateChanged$lambda$0(Landroidx/compose/foundation/text/HeightInLinesNode;)Lj59;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireFontResolutionState()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final requireFontResolutionState()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->fontResolutionState:Landroidx/compose/runtime/State;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Font resolution state is not set."

    invoke-static {p0}, Lng;->f(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method private final requireResolvedStyle()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->resolvedStyle:Landroidx/compose/ui/text/TextStyle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Resolved style is not set."

    invoke-static {p0}, Lng;->f(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public getShouldAutoInvalidate()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->shouldAutoInvalidate:Z

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireResolvedStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/text/HeightInLinesNode;->computeHeights(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->precomputedMinLinesHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    invoke-static {v0, v2, v3}, Lkx6;->f(III)I

    move-result v0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    goto :goto_0

    :goto_1
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->precomputedMaxLinesHeight:I

    if-eq p0, v1, :cond_2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-static {p0, v0, v1}, Lkx6;->f(III)I

    move-result p0

    :goto_2
    move v7, p0

    goto :goto_3

    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    goto :goto_2

    :goto_3
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p3

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    new-instance v4, Landroidx/compose/foundation/text/i;

    invoke-direct {v4, p0}, Landroidx/compose/foundation/text/i;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public onAttach()V
    .locals 5

    invoke-super {p0}, Landroidx/compose/ui/Modifier$Node;->onAttach()V

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutDirection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->resolvedStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireResolvedStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireResolvedStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireResolvedStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v3

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v3

    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->requireResolvedStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result v4

    goto :goto_1

    :cond_2
    sget-object v4, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result v4

    :goto_1
    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->resolve-DPcqOEQ(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->fontResolutionState:Landroidx/compose/runtime/State;

    new-instance v0, Landroidx/compose/foundation/text/g;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/g;-><init>(Landroidx/compose/foundation/text/HeightInLinesNode;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lll3;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    return-void
.end method

.method public onDensityChange()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->resolvedStyle:Landroidx/compose/ui/text/TextStyle;

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->fontResolutionState:Landroidx/compose/runtime/State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    return-void
.end method

.method public onLayoutDirectionChange()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutDirection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->resolvedStyle:Landroidx/compose/ui/text/TextStyle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    return-void
.end method

.method public onObservedReadsChanged()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->onFontResolutionStateChanged()V

    return-void
.end method

.method public final update(Landroidx/compose/ui/text/TextStyle;II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->minLines:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->maxLines:I

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->textStyle:Landroidx/compose/ui/text/TextStyle;

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->minLines:I

    iput p3, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->maxLines:I

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutDirection(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->resolvedStyle:Landroidx/compose/ui/text/TextStyle;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->dirty:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    return-void
.end method
