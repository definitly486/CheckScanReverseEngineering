.class public final Landroidx/compose/material3/IndicatorLineNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _colors:Landroidx/compose/material3/TextFieldColors;

.field private _shape:Landroidx/compose/ui/graphics/Shape;

.field private colorAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/graphics/Color;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation
.end field

.field private final drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

.field private enabled:Z

.field private focused:Z

.field private focusedIndicatorWidth:F

.field private interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field private isError:Z

.field private trackFocusStateJob:Lmb4;

.field private unfocusedIndicatorWidth:F

.field private final widthAnimatable:Landroidx/compose/animation/core/Animatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Animatable<",
            "Landroidx/compose/ui/unit/Dp;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FF)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material3/IndicatorLineNode;->isError:Z

    iput-object p3, p0, Landroidx/compose/material3/IndicatorLineNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput p6, p0, Landroidx/compose/material3/IndicatorLineNode;->focusedIndicatorWidth:F

    iput p7, p0, Landroidx/compose/material3/IndicatorLineNode;->unfocusedIndicatorWidth:F

    iput-object p4, p0, Landroidx/compose/material3/IndicatorLineNode;->_colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p5, p0, Landroidx/compose/material3/IndicatorLineNode;->_shape:Landroidx/compose/ui/graphics/Shape;

    move p2, p1

    new-instance p1, Landroidx/compose/animation/core/Animatable;

    iget-boolean p3, p0, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p6, p7

    :goto_0
    invoke-static {p6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p2

    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {p3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p3

    const/16 p6, 0xc

    const/4 p7, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    invoke-direct/range {p1 .. p7}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILjh2;)V

    iput-object p1, p0, Landroidx/compose/material3/IndicatorLineNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Lp88;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lp88;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Landroidx/compose/ui/draw/DrawModifierKt;->CacheDrawModifierNode(Lnl3;)Landroidx/compose/ui/draw/CacheDrawModifierNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/draw/CacheDrawModifierNode;

    iput-object p1, p0, Landroidx/compose/material3/IndicatorLineNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    return-void
.end method

.method public synthetic constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLjh2;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/IndicatorLineNode;-><init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FF)V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/material3/IndicatorLineNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/IndicatorLineNode;->drawWithCacheModifierNode$lambda$3(Landroidx/compose/material3/IndicatorLineNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getColorAnimatable$p(Landroidx/compose/material3/IndicatorLineNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/IndicatorLineNode;->colorAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$getColors(Landroidx/compose/material3/IndicatorLineNode;)Landroidx/compose/material3/TextFieldColors;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/IndicatorLineNode;->getColors()Landroidx/compose/material3/TextFieldColors;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEnabled$p(Landroidx/compose/material3/IndicatorLineNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    return p0
.end method

.method public static final synthetic access$getFocused$p(Landroidx/compose/material3/IndicatorLineNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    return p0
.end method

.method public static final synthetic access$getFocusedIndicatorWidth$p(Landroidx/compose/material3/IndicatorLineNode;)F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/IndicatorLineNode;->focusedIndicatorWidth:F

    return p0
.end method

.method public static final synthetic access$getUnfocusedIndicatorWidth$p(Landroidx/compose/material3/IndicatorLineNode;)F
    .locals 0

    iget p0, p0, Landroidx/compose/material3/IndicatorLineNode;->unfocusedIndicatorWidth:F

    return p0
.end method

.method public static final synthetic access$getWidthAnimatable$p(Landroidx/compose/material3/IndicatorLineNode;)Landroidx/compose/animation/core/Animatable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/IndicatorLineNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    return-object p0
.end method

.method public static final synthetic access$invalidateIndicator(Landroidx/compose/material3/IndicatorLineNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material3/IndicatorLineNode;->invalidateIndicator()V

    return-void
.end method

.method public static final synthetic access$isError$p(Landroidx/compose/material3/IndicatorLineNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/IndicatorLineNode;->isError:Z

    return p0
.end method

.method public static final synthetic access$setFocused$p(Landroidx/compose/material3/IndicatorLineNode;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    return-void
.end method

.method public static final synthetic access$trackFocusState(Landroidx/compose/material3/IndicatorLineNode;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material3/IndicatorLineNode;->trackFocusState(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/graphics/Path;Landroidx/compose/material3/IndicatorLineNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/IndicatorLineNode;->drawWithCacheModifierNode$lambda$3$lambda$2(Landroidx/compose/ui/graphics/Path;Landroidx/compose/material3/IndicatorLineNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private static final drawWithCacheModifierNode$lambda$3(Landroidx/compose/material3/IndicatorLineNode;Landroidx/compose/ui/draw/CacheDrawScope;)Landroidx/compose/ui/draw/DrawResult;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/IndicatorLineNode;->widthAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v1

    invoke-direct {p0}, Landroidx/compose/material3/IndicatorLineNode;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5, p1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/OutlineKt;->addOutline(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Outline;)V

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v4, v0

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    const/16 v0, 0x20

    shr-long/2addr v8, v0

    long-to-int v0, v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/draw/CacheDrawScope;->getSize-NH-jbRc()J

    move-result-wide v8

    and-long v5, v8, v6

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v0, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v0, v4, v0}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    invoke-interface {v2, v1}, Landroidx/compose/ui/graphics/Path;->and(Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    new-instance v1, Lpf3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0}, Lpf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lnl3;)Landroidx/compose/ui/draw/DrawResult;

    move-result-object p0

    return-object p0
.end method

.method private static final drawWithCacheModifierNode$lambda$3$lambda$2(Landroidx/compose/ui/graphics/Path;Landroidx/compose/material3/IndicatorLineNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)Lj59;
    .locals 9

    invoke-interface {p2}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    iget-object p1, p1, Landroidx/compose/material3/IndicatorLineNode;->colorAnimatable:Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {v2, v0, v1, p1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final getColors()Landroidx/compose/material3/TextFieldColors;
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/IndicatorLineNode;->_colors:Landroidx/compose/material3/TextFieldColors;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    invoke-static {}, Landroidx/compose/material3/ColorSchemeKt;->getLocalColorScheme()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material3/ColorScheme;

    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    invoke-virtual {v0, v1, p0}, Landroidx/compose/material3/TextFieldDefaults;->defaultTextFieldColors$material3(Landroidx/compose/material3/ColorScheme;Landroidx/compose/foundation/text/selection/TextSelectionColors;)Landroidx/compose/material3/TextFieldColors;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private final getShape()Landroidx/compose/ui/graphics/Shape;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/IndicatorLineNode;->_shape:Landroidx/compose/ui/graphics/Shape;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/material3/ShapesKt;->getLocalShapes()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/Shapes;

    sget-object v0, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledTextFieldTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/FilledTextFieldTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private final invalidateIndicator()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/IndicatorLineNode$invalidateIndicator$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/material3/IndicatorLineNode$invalidateIndicator$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/IndicatorLineNode$invalidateIndicator$2;

    invoke-direct {v1, p0, v2}, Landroidx/compose/material3/IndicatorLineNode$invalidateIndicator$2;-><init>(Landroidx/compose/material3/IndicatorLineNode;Le02;)V

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final set_shape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/IndicatorLineNode;->_shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/material3/IndicatorLineNode;->_shape:Landroidx/compose/ui/graphics/Shape;

    iget-object p0, p0, Landroidx/compose/material3/IndicatorLineNode;->drawWithCacheModifierNode:Landroidx/compose/ui/draw/CacheDrawModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNode;->invalidateDrawCache()V

    :cond_0
    return-void
.end method

.method private final trackFocusState(Le02;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/compose/material3/IndicatorLineNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    invoke-interface {v1}, Landroidx/compose/foundation/interaction/InteractionSource;->getInteractions()Lhd3;

    move-result-object v1

    new-instance v2, Landroidx/compose/material3/IndicatorLineNode$trackFocusState$2;

    invoke-direct {v2, v0, p0}, Landroidx/compose/material3/IndicatorLineNode$trackFocusState$2;-><init>(Ljava/util/List;Landroidx/compose/material3/IndicatorLineNode;)V

    invoke-interface {v1, v2, p1}, Lhd3;->collect(Lid3;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public getShouldAutoInvalidate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAttach()V
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/IndicatorLineNode$onAttach$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/material3/IndicatorLineNode$onAttach$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/IndicatorLineNode;->trackFocusStateJob:Lmb4;

    iget-object v0, p0, Landroidx/compose/material3/IndicatorLineNode;->colorAnimatable:Landroidx/compose/animation/core/Animatable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/material3/IndicatorLineNode;->getColors()Landroidx/compose/material3/TextFieldColors;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    iget-boolean v2, p0, Landroidx/compose/material3/IndicatorLineNode;->isError:Z

    iget-boolean v3, p0, Landroidx/compose/material3/IndicatorLineNode;->focused:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/material3/TextFieldColors;->indicatorColor-XeAY9LY$material3(ZZZ)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/animation/core/Animatable;

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-static {v4}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lnl3;

    move-result-object v4

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object v0

    invoke-interface {v4, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/compose/animation/core/TwoWayConverter;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILjh2;)V

    iput-object v2, p0, Landroidx/compose/material3/IndicatorLineNode;->colorAnimatable:Landroidx/compose/animation/core/Animatable;

    :cond_0
    return-void
.end method

.method public final update-gv0btCI(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FF)V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/compose/material3/IndicatorLineNode;->enabled:Z

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Landroidx/compose/material3/IndicatorLineNode;->isError:Z

    if-eq v0, p2, :cond_1

    iput-boolean p2, p0, Landroidx/compose/material3/IndicatorLineNode;->isError:Z

    move p1, v1

    :cond_1
    iget-object p2, p0, Landroidx/compose/material3/IndicatorLineNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    if-eq p2, p3, :cond_3

    iput-object p3, p0, Landroidx/compose/material3/IndicatorLineNode;->interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object p2, p0, Landroidx/compose/material3/IndicatorLineNode;->trackFocusStateJob:Lmb4;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2, p3}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Ly22;

    move-result-object p2

    new-instance v0, Landroidx/compose/material3/IndicatorLineNode$update$1;

    invoke-direct {v0, p0, p3}, Landroidx/compose/material3/IndicatorLineNode$update$1;-><init>(Landroidx/compose/material3/IndicatorLineNode;Le02;)V

    const/4 v2, 0x3

    invoke-static {p2, p3, p3, v0, v2}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/material3/IndicatorLineNode;->trackFocusStateJob:Lmb4;

    :cond_3
    iget-object p2, p0, Landroidx/compose/material3/IndicatorLineNode;->_colors:Landroidx/compose/material3/TextFieldColors;

    invoke-static {p2, p4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p4, p0, Landroidx/compose/material3/IndicatorLineNode;->_colors:Landroidx/compose/material3/TextFieldColors;

    move p1, v1

    :cond_4
    iget-object p2, p0, Landroidx/compose/material3/IndicatorLineNode;->_shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {p2, p5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-direct {p0, p5}, Landroidx/compose/material3/IndicatorLineNode;->set_shape(Landroidx/compose/ui/graphics/Shape;)V

    move p1, v1

    :cond_5
    iget p2, p0, Landroidx/compose/material3/IndicatorLineNode;->focusedIndicatorWidth:F

    invoke-static {p2, p6}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p2

    if-nez p2, :cond_6

    iput p6, p0, Landroidx/compose/material3/IndicatorLineNode;->focusedIndicatorWidth:F

    move p1, v1

    :cond_6
    iget p2, p0, Landroidx/compose/material3/IndicatorLineNode;->unfocusedIndicatorWidth:F

    invoke-static {p2, p7}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p2

    if-nez p2, :cond_7

    iput p7, p0, Landroidx/compose/material3/IndicatorLineNode;->unfocusedIndicatorWidth:F

    goto :goto_1

    :cond_7
    move v1, p1

    :goto_1
    if-eqz v1, :cond_8

    invoke-direct {p0}, Landroidx/compose/material3/IndicatorLineNode;->invalidateIndicator()V

    :cond_8
    return-void
.end method
