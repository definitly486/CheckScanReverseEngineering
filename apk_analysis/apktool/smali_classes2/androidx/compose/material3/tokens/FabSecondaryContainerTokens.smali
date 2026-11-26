.class public final Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ContainerElevation:F

.field private static final FocusedContainerElevation:F

.field private static final FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final HoveredContainerElevation:F

.field private static final HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;

.field private static final IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final PressedContainerElevation:F

.field private static final PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->INSTANCE:Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ElevationTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevationTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel3-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->ContainerElevation:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel3-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->FocusedContainerElevation:F

    sget-object v1, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSecondaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel4-D9Ej5fM()F

    move-result v2

    sput v2, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->HoveredContainerElevation:F

    sput-object v1, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevationTokens;->getLevel3-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->PressedContainerElevation:F

    sput-object v1, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->ContainerElevation:F

    return p0
.end method

.method public final getFocusedContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->FocusedContainerElevation:F

    return p0
.end method

.method public final getFocusedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->FocusedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getHoveredContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->HoveredContainerElevation:F

    return p0
.end method

.method public final getHoveredIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->HoveredIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->IconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getPressedContainerElevation-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->PressedContainerElevation:F

    return p0
.end method

.method public final getPressedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FabSecondaryContainerTokens;->PressedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method
