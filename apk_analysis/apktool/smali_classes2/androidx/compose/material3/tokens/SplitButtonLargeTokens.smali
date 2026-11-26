.class public final Landroidx/compose/material3/tokens/SplitButtonLargeTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final BetweenSpace:F

.field private static final ContainerHeight:F

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SplitButtonLargeTokens;

.field private static final InnerCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

.field private static final InnerHoveredCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

.field private static final InnerPressedCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

.field private static final LeadingButtonLeadingSpace:F

.field private static final LeadingButtonTrailingSpace:F

.field private static final TrailingButtonLeadingSpace:F

.field private static final TrailingButtonTrailingSpace:F

.field private static final TrailingIconSize:F

.field private static final TrailingInnerSelectedCornerCornerSizePercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->INSTANCE:Landroidx/compose/material3/tokens/SplitButtonLargeTokens;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->BetweenSpace:F

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->ContainerHeight:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueSmall()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->InnerCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueLargeIncreased()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->InnerHoveredCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueLargeIncreased()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->InnerPressedCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->LeadingButtonLeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->LeadingButtonTrailingSpace:F

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingIconSize:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingInnerSelectedCornerCornerSizePercent:F

    const/high16 v0, 0x41e80000    # 29.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingButtonLeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingButtonTrailingSpace:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBetweenSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->BetweenSpace:F

    return p0
.end method

.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getInnerCornerCornerSize()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->InnerCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getInnerHoveredCornerCornerSize()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->InnerHoveredCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getInnerPressedCornerCornerSize()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->InnerPressedCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getLeadingButtonLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->LeadingButtonLeadingSpace:F

    return p0
.end method

.method public final getLeadingButtonTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->LeadingButtonTrailingSpace:F

    return p0
.end method

.method public final getTrailingButtonLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingButtonLeadingSpace:F

    return p0
.end method

.method public final getTrailingButtonTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingButtonTrailingSpace:F

    return p0
.end method

.method public final getTrailingIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingIconSize:F

    return p0
.end method

.method public final getTrailingInnerSelectedCornerCornerSizePercent()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonLargeTokens;->TrailingInnerSelectedCornerCornerSizePercent:F

    return p0
.end method
