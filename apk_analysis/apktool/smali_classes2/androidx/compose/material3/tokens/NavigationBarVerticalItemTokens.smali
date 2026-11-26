.class public final Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ActiveIndicatorHeight:F

.field private static final ActiveIndicatorWidth:F

.field private static final ContainerBetweenSpace:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;

.field private static final IconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->ActiveIndicatorHeight:F

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->ActiveIndicatorWidth:F

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->ContainerBetweenSpace:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->IconSize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveIndicatorHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->ActiveIndicatorHeight:F

    return p0
.end method

.method public final getActiveIndicatorWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->ActiveIndicatorWidth:F

    return p0
.end method

.method public final getContainerBetweenSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->ContainerBetweenSpace:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarVerticalItemTokens;->IconSize:F

    return p0
.end method
