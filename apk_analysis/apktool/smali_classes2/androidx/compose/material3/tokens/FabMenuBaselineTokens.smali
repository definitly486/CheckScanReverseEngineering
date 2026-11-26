.class public final Landroidx/compose/material3/tokens/FabMenuBaselineTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final CloseButtonBetweenSpace:F

.field private static final CloseButtonContainerElevation:F

.field private static final CloseButtonContainerHeight:F

.field private static final CloseButtonContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final CloseButtonContainerWidth:F

.field private static final CloseButtonIconSize:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/FabMenuBaselineTokens;

.field private static final ListItemBetweenSpace:F

.field private static final ListItemContainerElevation:F

.field private static final ListItemContainerHeight:F

.field private static final ListItemContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ListItemIconLabelSpace:F

.field private static final ListItemIconSize:F

.field private static final ListItemLeadingSpace:F

.field private static final ListItemTrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->INSTANCE:Landroidx/compose/material3/tokens/FabMenuBaselineTokens;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonBetweenSpace:F

    sget-object v1, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel3-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerElevation:F

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    sput v3, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerHeight:F

    sget-object v3, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v3, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    sput v4, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerWidth:F

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    sput v4, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonIconSize:F

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    sput v4, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemBetweenSpace:F

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel3-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemContainerElevation:F

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemContainerHeight:F

    sput-object v3, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemIconLabelSpace:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemIconSize:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemLeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemTrailingSpace:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCloseButtonBetweenSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonBetweenSpace:F

    return p0
.end method

.method public final getCloseButtonContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerElevation:F

    return p0
.end method

.method public final getCloseButtonContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerHeight:F

    return p0
.end method

.method public final getCloseButtonContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getCloseButtonContainerWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonContainerWidth:F

    return p0
.end method

.method public final getCloseButtonIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->CloseButtonIconSize:F

    return p0
.end method

.method public final getListItemBetweenSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemBetweenSpace:F

    return p0
.end method

.method public final getListItemContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemContainerElevation:F

    return p0
.end method

.method public final getListItemContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemContainerHeight:F

    return p0
.end method

.method public final getListItemContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getListItemIconLabelSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemIconLabelSpace:F

    return p0
.end method

.method public final getListItemIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemIconSize:F

    return p0
.end method

.method public final getListItemLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemLeadingSpace:F

    return p0
.end method

.method public final getListItemTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabMenuBaselineTokens;->ListItemTrailingSpace:F

    return p0
.end method
