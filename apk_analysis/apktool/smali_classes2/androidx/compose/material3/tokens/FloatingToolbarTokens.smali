.class public final Landroidx/compose/material3/tokens/FloatingToolbarTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerBetweenSpace:F

.field private static final ContainerExternalPadding:F

.field private static final ContainerHeight:F

.field private static final ContainerLeadingSpace:F

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final ContainerTrailingSpace:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/FloatingToolbarTokens;

.field private static final StandardContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final VibrantButtonSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final VibrantButtonSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final VibrantButtonSelectedTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final VibrantButtonUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final VibrantButtonUnselectedTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final VibrantContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/FloatingToolbarTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/FloatingToolbarTokens;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerBetweenSpace:F

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerExternalPadding:F

    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerHeight:F

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerLeadingSpace:F

    sget-object v1, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerFull:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v1, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerTrailingSpace:F

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->SurfaceContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->StandardContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonSelectedTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OnPrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonUnselectedTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->PrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerBetweenSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerBetweenSpace:F

    return p0
.end method

.method public final getContainerExternalPadding-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerExternalPadding:F

    return p0
.end method

.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerHeight:F

    return p0
.end method

.method public final getContainerLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerLeadingSpace:F

    return p0
.end method

.method public final getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getContainerTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->ContainerTrailingSpace:F

    return p0
.end method

.method public final getStandardContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->StandardContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getVibrantButtonSelectedContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonSelectedContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getVibrantButtonSelectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonSelectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getVibrantButtonSelectedTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonSelectedTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getVibrantButtonUnselectedIconColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonUnselectedIconColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getVibrantButtonUnselectedTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantButtonUnselectedTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getVibrantContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/FloatingToolbarTokens;->VibrantContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method
