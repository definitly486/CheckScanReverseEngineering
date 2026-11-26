.class public final Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerHeight:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;

.field private static final IconLabelSpace:F

.field private static final IconSize:F

.field private static final LeadingSpace:F

.field private static final TrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->INSTANCE:Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->ContainerHeight:F

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->IconLabelSpace:F

    const/high16 v0, 0x41e00000    # 28.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->IconSize:F

    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->LeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->TrailingSpace:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->ContainerHeight:F

    return p0
.end method

.method public final getIconLabelSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->IconLabelSpace:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->IconSize:F

    return p0
.end method

.method public final getLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->LeadingSpace:F

    return p0
.end method

.method public final getTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ExtendedFabMediumTokens;->TrailingSpace:F

    return p0
.end method
