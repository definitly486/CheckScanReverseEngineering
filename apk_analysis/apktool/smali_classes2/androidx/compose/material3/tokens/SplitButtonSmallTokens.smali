.class public final Landroidx/compose/material3/tokens/SplitButtonSmallTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final BetweenSpace:F

.field private static final ContainerHeight:F

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/SplitButtonSmallTokens;

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

    new-instance v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/SplitButtonSmallTokens;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->BetweenSpace:F

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->ContainerHeight:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueExtraSmall()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->InnerCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueMedium()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v1

    sput-object v1, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->InnerHoveredCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerValueMedium()Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->InnerPressedCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->LeadingButtonLeadingSpace:F

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->LeadingButtonTrailingSpace:F

    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingIconSize:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingInnerSelectedCornerCornerSizePercent:F

    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingButtonLeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingButtonTrailingSpace:F

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

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->BetweenSpace:F

    return p0
.end method

.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getInnerCornerCornerSize()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->InnerCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getInnerHoveredCornerCornerSize()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->InnerHoveredCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getInnerPressedCornerCornerSize()Landroidx/compose/foundation/shape/CornerSize;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->InnerPressedCornerCornerSize:Landroidx/compose/foundation/shape/CornerSize;

    return-object p0
.end method

.method public final getLeadingButtonLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->LeadingButtonLeadingSpace:F

    return p0
.end method

.method public final getLeadingButtonTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->LeadingButtonTrailingSpace:F

    return p0
.end method

.method public final getTrailingButtonLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingButtonLeadingSpace:F

    return p0
.end method

.method public final getTrailingButtonTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingButtonTrailingSpace:F

    return p0
.end method

.method public final getTrailingIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingIconSize:F

    return p0
.end method

.method public final getTrailingInnerSelectedCornerCornerSizePercent()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/SplitButtonSmallTokens;->TrailingInnerSelectedCornerCornerSizePercent:F

    return p0
.end method
