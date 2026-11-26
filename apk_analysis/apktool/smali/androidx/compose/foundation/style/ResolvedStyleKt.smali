.class public final Landroidx/compose/foundation/style/ResolvedStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AnimateGroup:I = 0x4e95b218

.field public static final AnimatedFlag:I = 0x10

.field private static final DefaultSpringSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DrawFlag:I = 0x2

.field private static final EmptyResolvedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

.field private static final FontStyleMask:I = 0x3

.field private static final FontStyleShift:I = 0x0

.field private static final FontSynthesisMask:I = 0x3c00

.field private static final FontSynthesisShift:I = 0xa

.field private static final FontWeightMask:I = 0x7fe0000

.field private static final FontWeightShift:I = 0x11

.field private static final HyphensMask:I = 0x300

.field private static final HyphensShift:I = 0x8

.field public static final InheritedFlags:I = 0x60

.field public static final InnerLayoutFlag:I = 0x1

.field public static final LayerFlag:I = 0x4

.field public static final OuterLayoutFlag:I = 0x8

.field private static final TextAlignMask:I = 0x1c

.field private static final TextAlignShift:I = 0x2

.field private static final TextDecorationMask:I = 0x1c000

.field private static final TextDecorationShift:I = 0xe

.field private static final TextDefaultsResolvedStyle:Lj59;

.field private static final TextDirectionMask:I = 0x70

.field private static final TextDirectionShift:I = 0x4

.field public static final TextDrawFlag:I = 0x40

.field public static final TextLayoutFlag:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/style/ResolvedStyleKt;->DefaultSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    new-instance v0, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v0}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    sput-object v0, Landroidx/compose/foundation/style/ResolvedStyleKt;->EmptyResolvedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    new-instance v0, Landroidx/compose/foundation/style/ResolvedStyle;

    invoke-direct {v0}, Landroidx/compose/foundation/style/ResolvedStyle;-><init>()V

    new-instance v1, Ld47;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v1}, Landroidx/compose/foundation/style/StyleScopeKt;->apply(Landroidx/compose/foundation/style/StyleScope;Landroidx/compose/foundation/style/Style;)V

    sget-object v0, Lj59;->a:Lj59;

    sput-object v0, Landroidx/compose/foundation/style/ResolvedStyleKt;->TextDefaultsResolvedStyle:Lj59;

    return-void
.end method

.method private static final TextDefaultsResolvedStyle$lambda$0(Landroidx/compose/foundation/style/StyleScope;)V
    .locals 2

    const/16 v0, 0xe

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/style/StyleScope;->fontSize--R2X_6o(J)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/style/StyleScope;->letterSpacing--R2X_6o(J)V

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/foundation/style/StyleScope;->contentColor-8_81llA(J)V

    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->fontWeight(Landroidx/compose/ui/text/font/FontWeight;)V

    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->fontStyle-nzbMABs(I)V

    sget-object v0, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->fontSynthesis-6p3vJLY(I)V

    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->fontFamily(Landroidx/compose/ui/text/font/FontFamily;)V

    sget-object v0, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getNone-y9eOQZs()F

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->baselineShift-4Dl_Bck(F)V

    sget-object v0, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getNone()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/style/StyleScope;->textDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/style/StyleScope;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/style/ResolvedStyleKt;->TextDefaultsResolvedStyle$lambda$0(Landroidx/compose/foundation/style/StyleScope;)V

    return-void
.end method

.method public static final synthetic access$getDefaultSpringSpec$p()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/ResolvedStyleKt;->DefaultSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    return-object v0
.end method

.method public static final synthetic access$getEmptyResolvedStyle$p()Landroidx/compose/foundation/style/ResolvedStyle;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/ResolvedStyleKt;->EmptyResolvedStyle:Landroidx/compose/foundation/style/ResolvedStyle;

    return-object v0
.end method

.method public static final synthetic access$updateHashEnter(II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->updateHashEnter(II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$updateHashExit(II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/style/ResolvedStyleKt;->updateHashExit(II)I

    move-result p0

    return p0
.end method

.method public static final applyTextEnum(II)I
    .locals 2

    and-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p0, -0x4

    if-eqz v0, :cond_0

    move p0, v0

    :cond_0
    or-int/2addr p0, v1

    and-int/lit8 v0, p1, 0x1c

    and-int/lit8 v1, p0, -0x1d

    if-eqz v0, :cond_1

    move p0, v0

    :cond_1
    or-int/2addr p0, v1

    and-int/lit8 v0, p1, 0x70

    and-int/lit8 v1, p0, -0x71

    if-eqz v0, :cond_2

    move p0, v0

    :cond_2
    or-int/2addr p0, v1

    and-int/lit16 v0, p1, 0x300

    and-int/lit16 v1, p0, -0x301

    if-eqz v0, :cond_3

    move p0, v0

    :cond_3
    or-int/2addr p0, v1

    and-int/lit16 v0, p1, 0x3c00

    and-int/lit16 v1, p0, -0x3c01

    if-eqz v0, :cond_4

    move p0, v0

    :cond_4
    or-int/2addr p0, v1

    const/high16 v0, 0x7fe0000

    and-int/2addr p1, v0

    const v0, -0x7fe0001

    and-int/2addr v0, p0

    if-eqz p1, :cond_5

    move p0, p1

    :cond_5
    or-int/2addr p0, v0

    return p0
.end method

.method public static final flagsAsString(Landroidx/compose/foundation/style/ResolvedStyle;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    invoke-static {p0}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final floorToNearest100(I)I
    .locals 0

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public static final getBits(III)I
    .locals 0

    and-int/2addr p0, p1

    shr-int/2addr p0, p2

    return p0
.end method

.method public static final getTextDefaultsResolvedStyle()Lj59;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/style/ResolvedStyleKt;->TextDefaultsResolvedStyle:Lj59;

    return-object v0
.end method

.method private static final lerp(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;F)Landroidx/compose/ui/graphics/Brush;
    .locals 1

    .line 51
    sget-object v0, Landroidx/compose/ui/graphics/Interpolatable;->Companion:Landroidx/compose/ui/graphics/Interpolatable$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/Interpolatable$Companion;->lerp(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroidx/compose/ui/graphics/Brush;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/compose/ui/graphics/Brush;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final lerp(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;F)Landroidx/compose/ui/graphics/Shape;
    .locals 1

    .line 52
    sget-object v0, Landroidx/compose/ui/graphics/Interpolatable;->Companion:Landroidx/compose/ui/graphics/Interpolatable$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/Interpolatable$Companion;->lerp(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroidx/compose/ui/graphics/Shape;

    if-eqz p1, :cond_0

    check-cast p0, Landroidx/compose/ui/graphics/Shape;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final lerp(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FILandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    iget v1, p1, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    or-int/2addr v0, v1

    iput v0, p4, Landroidx/compose/foundation/style/ResolvedStyle;->flags:I

    and-int/2addr p3, v0

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p4}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpOuterLayout(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p4}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpInnerLayout(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p4}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpDraw(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3

    invoke-static {p0, p1, p2, p4}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpLayer(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_3
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_4

    invoke-static {p0, p1, p2, p4}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpTextDraw(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_4
    and-int/lit8 p3, p3, 0x20

    if-eqz p3, :cond_5

    invoke-static {p0, p1, p2, p4}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpTextLayout(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V

    :cond_5
    return-void
.end method

.method private static final lerp-wffgcV4(Landroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JF)Landroidx/compose/ui/graphics/Brush;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    new-instance p3, Landroidx/compose/ui/graphics/SolidColor;

    invoke-direct {p3, p4, p5, v0}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLjh2;)V

    :cond_2
    :goto_0
    sget-object p1, Landroidx/compose/ui/graphics/Interpolatable;->Companion:Landroidx/compose/ui/graphics/Interpolatable$Companion;

    invoke-virtual {p1, p0, p3, p6}, Landroidx/compose/ui/graphics/Interpolatable$Companion;->lerp(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroidx/compose/ui/graphics/Brush;

    if-eqz p1, :cond_3

    check-cast p0, Landroidx/compose/ui/graphics/Brush;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static final lerpArrayShadows([Landroidx/compose/ui/graphics/shadow/Shadow;[Landroidx/compose/ui/graphics/shadow/Shadow;F)[Landroidx/compose/ui/graphics/shadow/Shadow;
    .locals 5

    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [Landroidx/compose/ui/graphics/shadow/Shadow;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    invoke-static {v2, p0}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-static {v2, p1}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-static {v3, v4, p2}, Landroidx/compose/ui/graphics/shadow/ShadowKt;->lerp(Landroidx/compose/ui/graphics/shadow/Shadow;Landroidx/compose/ui/graphics/shadow/Shadow;F)Landroidx/compose/ui/graphics/shadow/Shadow;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static final lerpDraw(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderWidth$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setBorderWidth$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderColor-0d7_KjU$foundation()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderColor-0d7_KjU$foundation()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setBorderColor-8_81llA$foundation(J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderColor-0d7_KjU$foundation()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBorderColor-0d7_KjU$foundation()J

    move-result-wide v6

    move v8, p2

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerp-wffgcV4(Landroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JF)Landroidx/compose/ui/graphics/Brush;

    move-result-object p2

    move v6, v8

    invoke-virtual {p3, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->setBorderBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundColor-0d7_KjU$foundation()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundColor-0d7_KjU$foundation()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v6}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setBackgroundColor-8_81llA$foundation(J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundColor-0d7_KjU$foundation()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBackgroundColor-0d7_KjU$foundation()J

    move-result-wide v4

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerp-wffgcV4(Landroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JF)Landroidx/compose/ui/graphics/Brush;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->setBackgroundBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getForegroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v0

    sget-object p2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getForegroundBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerp-wffgcV4(Landroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JF)Landroidx/compose/ui/graphics/Brush;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->setForegroundBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getInnerShadow$foundation()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getInnerShadow$foundation()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0, v6}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpShadows(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroidx/compose/foundation/style/ResolvedStyle;->setInnerShadow$foundation(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getDropShadow$foundation()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getDropShadow$foundation()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1, v6}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpShadows(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->setDropShadow$foundation(Ljava/lang/Object;)V

    return-void
.end method

.method public static final lerpInnerLayout(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingStart$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingStart$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setContentPaddingStart$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingEnd$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingEnd$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setContentPaddingEnd$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingTop$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingTop$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setContentPaddingTop$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingBottom$foundation()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentPaddingBottom$foundation()F

    move-result p1

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->setContentPaddingBottom$foundation(F)V

    return-void
.end method

.method public static final lerpLayer(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getAlpha$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getAlpha$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setAlpha$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getScaleX$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getScaleX$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setScaleX$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getScaleY$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getScaleY$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setScaleY$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTranslationX$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTranslationX$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setTranslationX$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTranslationY$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTranslationY$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setTranslationY$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationX$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationX$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setRotationX$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationY$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationY$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setRotationY$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationZ$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getRotationZ$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setRotationZ$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTransformOrigin-SzJe1aQ$foundation()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTransformOrigin-SzJe1aQ$foundation()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTransformOrigin-SzJe1aQ$foundation()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTransformOrigin-SzJe1aQ$foundation()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v2

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOriginKt;->TransformOrigin(FF)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setTransformOrigin-__ExYCQ$foundation(J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getZIndex$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getZIndex$foundation()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setZIndex$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getShape$foundation()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getShape$foundation()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerp(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;F)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setShape$foundation(Landroidx/compose/ui/graphics/Shape;)V

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getClip$foundation()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getClip$foundation()Z

    move-result p0

    :goto_0
    invoke-virtual {p3, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->setClip$foundation(Z)V

    return-void
.end method

.method public static final lerpMaybeNan(FFF)F
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float/2addr v2, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v2

    if-eqz v0, :cond_0

    return p1

    :cond_0
    if-eqz v1, :cond_1

    return p0

    :cond_1
    return p2
.end method

.method public static final lerpOuterLayout(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingStart$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingStart$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setExternalPaddingStart$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingEnd$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingEnd$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setExternalPaddingEnd$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingTop$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingTop$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v6

    :goto_2
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setExternalPaddingTop$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingBottom$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getExternalPaddingBottom$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v0, v6

    :goto_3
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setExternalPaddingBottom$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLeft$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLeft$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v0, v6

    :goto_4
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setLeft$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTop$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTop$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    move v0, v6

    :goto_5
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setTop$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getRight$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getRight$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_c

    move v0, v1

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_d

    goto :goto_6

    :cond_d
    move v0, v6

    :goto_6
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setRight$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBottom$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBottom$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    move v0, v6

    :goto_7
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setBottom$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidth$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidth$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_8

    :cond_10
    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    move v0, v6

    :goto_8
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setWidth$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeight$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeight$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_12

    move v0, v1

    goto :goto_9

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_9

    :cond_13
    move v0, v6

    :goto_9
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setHeight$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidthFraction$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getWidthFraction$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_a

    :cond_14
    if-eqz v3, :cond_15

    goto :goto_a

    :cond_15
    move v0, v6

    :goto_a
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setWidthFraction$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeightFraction$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getHeightFraction$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_16

    move v0, v1

    goto :goto_b

    :cond_16
    if-eqz v3, :cond_17

    goto :goto_b

    :cond_17
    move v0, v6

    :goto_b
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setHeightFraction$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMinWidth$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getMinWidth$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_18

    move v0, v1

    goto :goto_c

    :cond_18
    if-eqz v3, :cond_19

    goto :goto_c

    :cond_19
    move v0, v6

    :goto_c
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setMinWidth$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMaxWidth$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getMaxWidth$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_1a

    move v0, v1

    goto :goto_d

    :cond_1a
    if-eqz v3, :cond_1b

    goto :goto_d

    :cond_1b
    move v0, v6

    :goto_d
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setMaxWidth$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMinHeight$foundation()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getMinHeight$foundation()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    mul-float v5, v4, v0

    mul-float v6, p2, v1

    add-float/2addr v6, v5

    if-eqz v2, :cond_1c

    move v0, v1

    goto :goto_e

    :cond_1c
    if-eqz v3, :cond_1d

    goto :goto_e

    :cond_1d
    move v0, v6

    :goto_e
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setMinHeight$foundation(F)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getMaxHeight$foundation()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getMaxHeight$foundation()F

    move-result p1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    mul-float/2addr v4, p0

    mul-float/2addr p2, p1

    add-float/2addr p2, v4

    if-eqz v0, :cond_1e

    move p0, p1

    goto :goto_f

    :cond_1e
    if-eqz v1, :cond_1f

    goto :goto_f

    :cond_1f
    move p0, p2

    :goto_f
    invoke-virtual {p3, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->setMaxHeight$foundation(F)V

    return-void
.end method

.method public static final lerpShadows(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    instance-of v1, p0, Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/compose/ui/graphics/shadow/Shadow;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/shadow/Shadow;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/shadow/Shadow;

    :cond_2
    invoke-static {p0, v0, p2}, Landroidx/compose/ui/graphics/shadow/ShadowKt;->lerp(Landroidx/compose/ui/graphics/shadow/Shadow;Landroidx/compose/ui/graphics/shadow/Shadow;F)Landroidx/compose/ui/graphics/shadow/Shadow;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    check-cast p0, [Landroidx/compose/ui/graphics/shadow/Shadow;

    goto :goto_1

    :cond_4
    new-array v1, v3, [Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object p0, v1, v0

    move-object p0, v1

    :goto_1
    if-eqz v2, :cond_5

    check-cast p1, [Landroidx/compose/ui/graphics/shadow/Shadow;

    goto :goto_2

    :cond_5
    new-array v1, v3, [Landroidx/compose/ui/graphics/shadow/Shadow;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object p1, v1, v0

    move-object p1, v1

    :goto_2
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerpArrayShadows([Landroidx/compose/ui/graphics/shadow/Shadow;[Landroidx/compose/ui/graphics/shadow/Shadow;F)[Landroidx/compose/ui/graphics/shadow/Shadow;

    move-result-object p0

    return-object p0
.end method

.method public static final lerpTextDraw(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentColor-0d7_KjU$foundation()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentColor-0d7_KjU$foundation()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setContentColor-8_81llA$foundation(J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentColor-0d7_KjU$foundation()J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentBrush$foundation()Landroidx/compose/ui/graphics/Brush;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getContentColor-0d7_KjU$foundation()J

    move-result-wide v6

    move v8, p2

    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/style/ResolvedStyleKt;->lerp-wffgcV4(Landroidx/compose/ui/graphics/Brush;JLandroidx/compose/ui/graphics/Brush;JF)Landroidx/compose/ui/graphics/Brush;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->setContentBrush$foundation(Landroidx/compose/ui/graphics/Brush;)V

    return-void
.end method

.method public static final lerpTextLayout(Landroidx/compose/foundation/style/ResolvedStyle;Landroidx/compose/foundation/style/ResolvedStyle;FLandroidx/compose/foundation/style/ResolvedStyle;)V
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSize-XSAIIZE$foundation()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSize-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSize-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontSize-XSAIIZE$foundation()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p2}, Landroidx/compose/ui/unit/TextUnitKt;->lerp-C3pnCVY(JJF)J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Landroidx/compose/foundation/style/ResolvedStyle;->setFontSize--R2X_6o$foundation(J)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLineHeight-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLineHeight-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLineHeight-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLineHeight-XSAIIZE$foundation()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, p2}, Landroidx/compose/ui/unit/TextUnitKt;->lerp-C3pnCVY(JJF)J

    move-result-wide v5

    invoke-virtual {p3, v5, v6}, Landroidx/compose/foundation/style/ResolvedStyle;->setLineHeight--R2X_6o$foundation(J)V

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLetterSpacing-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLetterSpacing-XSAIIZE$foundation()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_7

    move v1, v4

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLetterSpacing-XSAIIZE$foundation()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLetterSpacing-XSAIIZE$foundation()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Landroidx/compose/ui/unit/TextUnitKt;->lerp-C3pnCVY(JJF)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setLetterSpacing--R2X_6o$foundation(J)V

    :cond_8
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontFamily$foundation()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getFontFamily$foundation()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v1

    :goto_5
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setFontFamily$foundation(Landroidx/compose/ui/text/font/FontFamily;)V

    if-gez v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextIndent$foundation()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object v1

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextIndent$foundation()Landroidx/compose/ui/text/style/TextIndent;

    move-result-object v1

    :goto_6
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setTextIndent$foundation(Landroidx/compose/ui/text/style/TextIndent;)V

    if-gez v0, :cond_b

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getBaselineShift-y9eOQZs$foundation()F

    move-result v1

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getBaselineShift-y9eOQZs$foundation()F

    move-result v1

    :goto_7
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setBaselineShift-4Dl_Bck$foundation(F)V

    if-gez v0, :cond_c

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getLineBreak-rAG3T2k$foundation()I

    move-result v1

    goto :goto_8

    :cond_c
    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getLineBreak-rAG3T2k$foundation()I

    move-result v1

    :goto_8
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/style/ResolvedStyle;->setLineBreak-CZqVlQI$foundation(I)V

    if-gez v0, :cond_d

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextEnums$foundation()I

    move-result v0

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextEnums$foundation()I

    move-result v0

    :goto_9
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/style/ResolvedStyle;->setTextEnums$foundation(I)V

    invoke-virtual {p0}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextEnums$foundation()I

    move-result p0

    const/high16 v0, 0x7fe0000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x11

    invoke-virtual {p1}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextEnums$foundation()I

    move-result p1

    and-int/2addr p1, v0

    shr-int/lit8 p1, p1, 0x11

    if-lez p0, :cond_e

    if-lez p1, :cond_e

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    mul-int/lit8 p0, p0, 0x64

    invoke-virtual {p3}, Landroidx/compose/foundation/style/ResolvedStyle;->getTextEnums$foundation()I

    move-result p1

    const p2, -0x7fe0001

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x11

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    invoke-virtual {p3, p0}, Landroidx/compose/foundation/style/ResolvedStyle;->setTextEnums$foundation(I)V

    :cond_e
    return-void
.end method

.method private static final pop(Landroidx/collection/MutableIntList;)I
    .locals 1

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableIntList;->removeAt(I)I

    move-result p0

    return p0
.end method

.method private static final push(Landroidx/collection/MutableIntList;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)Z

    move-result p0

    return p0
.end method

.method public static final resolvedStyleFlagsToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ln07;

    invoke-direct {v1}, Ln07;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Ln07;->b:Z

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    const-string v2, "InnerLayoutFlag"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_1

    const-string v2, "DrawFlag"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_2

    const-string v2, "LayerFlag"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_3

    const-string v2, "OuterLayoutFlag"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_4

    const-string v2, "AnimatedFlag"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_5

    const-string v2, "TextLayoutFlag"

    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_6

    const-string p0, "TextDrawFlag"

    invoke-static {v1, v0, p0}, Landroidx/compose/foundation/style/ResolvedStyleKt;->resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final resolvedStyleFlagsToString$lambda$0$emit(Ln07;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Ln07;->b:Z

    if-nez v0, :cond_0

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ln07;->b:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final setBits(IIII)I
    .locals 1

    not-int v0, p1

    and-int/2addr p0, v0

    shl-int p2, p3, p2

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static final setBitsIfNonZero(III)I
    .locals 0

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, p0

    if-eqz p1, :cond_0

    move p0, p1

    :cond_0
    or-int/2addr p0, p2

    return p0
.end method

.method public static final takeOrElse--OWjLjI(JJ)J
    .locals 2

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static final takeOrElse-NB67dxo(JJ)J
    .locals 4

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->getRawType-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-wide p0

    :cond_1
    return-wide p2
.end method

.method public static final takeOrElse-w1xZEK0(II)I
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/LineBreak;->Companion:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/LineBreak$Companion;->getUnspecified-rAG3T2k()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/LineBreak;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static final takeOrElse-y00tBZM(FF)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getUnspecified-y9eOQZs()F

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private static final updateHashEnter(II)I
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method private static final updateHashExit(II)I
    .locals 0

    xor-int/2addr p0, p1

    const/4 p1, 0x3

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    return p0
.end method
