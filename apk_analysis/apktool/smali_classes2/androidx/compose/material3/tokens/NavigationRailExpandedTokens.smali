.class public final Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerElevation:F

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerWidthMaximum:F

.field private static final ContainerWidthMinimum:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;

.field private static final ModalContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ModalContainerElevation:F

.field private static final ModalContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final TopSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel0-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerNone:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v1, 0x43b40000    # 360.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerWidthMaximum:F

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerWidthMinimum:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel2-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ModalContainerElevation:F

    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerLarge:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ModalContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->TopSpace:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ModalContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerElevation:F

    return p0
.end method

.method public final getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getContainerWidthMaximum-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerWidthMaximum:F

    return p0
.end method

.method public final getContainerWidthMinimum-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ContainerWidthMinimum:F

    return p0
.end method

.method public final getModalContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ModalContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getModalContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ModalContainerElevation:F

    return p0
.end method

.method public final getModalContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->ModalContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getTopSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailExpandedTokens;->TopSpace:F

    return p0
.end method
