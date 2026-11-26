.class public final Landroidx/compose/foundation/style/StyleModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OuterNodeKey:Ljava/lang/String; = "StyleOuterNode"

.field private static final StyleableWithNoStyles:Ljava/lang/String; = "The styleable() modifier must provide one or more \'style\' parameter values. Calling it with no style parameter values has no effect."


# direct methods
.method public static final synthetic access$toFlags-uwmK9pY(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/style/StyleModifierKt;->toFlags-uwmK9pY(I)I

    move-result p0

    return p0
.end method

.method private static final addIfSpecified(FF)F
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    add-float/2addr p0, p1

    return p0
.end method

.method private static final addMaxWithMinimum(II)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    add-int/2addr p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return p0
.end method

.method private static final createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;
    .locals 14

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    sub-float v3, v0, p0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v0

    sub-float v4, v0, p0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6, p0}, Landroidx/compose/foundation/style/StyleModifierKt;->shrink-Kibmq7A(JF)J

    move-result-wide v5

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v7

    invoke-static {v7, v8, p0}, Landroidx/compose/foundation/style/StyleModifierKt;->shrink-Kibmq7A(JF)J

    move-result-wide v7

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v9

    invoke-static {v9, v10, p0}, Landroidx/compose/foundation/style/StyleModifierKt;->shrink-Kibmq7A(JF)J

    move-result-wide v11

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v9

    invoke-static {v9, v10, p0}, Landroidx/compose/foundation/style/StyleModifierKt;->shrink-Kibmq7A(JF)J

    move-result-wide v9

    new-instance v0, Landroidx/compose/ui/geometry/RoundRect;

    const/4 v13, 0x0

    move v2, p0

    move v1, p0

    invoke-direct/range {v0 .. v13}, Landroidx/compose/ui/geometry/RoundRect;-><init>(FFFFJJJJLjh2;)V

    return-object v0
.end method

.method private static final createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    if-nez p3, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p3

    invoke-static {p2, p1}, Landroidx/compose/foundation/style/StyleModifierKt;->createInsetRoundedRect(FLandroidx/compose/ui/geometry/RoundRect;)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object p1

    invoke-static {p3, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result p1

    invoke-interface {p0, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    :cond_0
    return-object p0
.end method

.method private static final isSpecified(F)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final isUnspecified(F)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method private static final minus-Kibmq7A(JF)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sub-float/2addr p0, p2

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final shrink-Kibmq7A(JF)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float/2addr v1, p2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    sub-float/2addr p0, p2

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v1, p0

    shl-long p0, p1, v0

    and-long v0, v1, v3

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final styleable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/style/StyleState;)Landroidx/compose/ui/Modifier;
    .locals 0
    .annotation runtime Lul2;
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    .line 22
    const-string p1, "The styleable() modifier must provide one or more \'style\' parameter values. Calling it with no style parameter values has no effect."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final styleable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)Landroidx/compose/ui/Modifier;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/Style;->Companion:Landroidx/compose/foundation/style/Style$Companion;

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/style/StyleElement;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/style/StyleElement;-><init>(Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/foundation/style/StyleInnerElement;->INSTANCE:Landroidx/compose/foundation/style/StyleInnerElement;

    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs styleable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/style/StyleState;[Landroidx/compose/foundation/style/Style;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 21
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/compose/foundation/style/Style;

    invoke-static {p2}, Landroidx/compose/foundation/style/StyleKt;->Style([Landroidx/compose/foundation/style/Style;)Landroidx/compose/foundation/style/Style;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/style/StyleModifierKt;->styleable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic styleable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/style/StyleModifierKt;->styleable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/style/StyleState;Landroidx/compose/foundation/style/Style;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final takeRoundedOrElse(FI)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static final toFlags-uwmK9pY(I)I
    .locals 2

    sget-object v0, Landroidx/compose/foundation/text/modifiers/StylePhase;->Companion:Landroidx/compose/foundation/text/modifiers/StylePhase$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/StylePhase$Companion;->getLayout-oWBPZag()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/text/modifiers/StylePhase;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/foundation/text/modifiers/StylePhase$Companion;->getDraw-oWBPZag()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/text/modifiers/StylePhase;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x40

    return p0

    :cond_1
    const/16 p0, 0x60

    return p0
.end method
