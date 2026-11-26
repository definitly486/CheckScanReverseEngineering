.class public final Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ActiveIndicatorHeight:F

.field private static final ActiveIndicatorLeadingSpace:F

.field private static final ActiveIndicatorTrailingSpace:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;

.field private static final IconSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->ActiveIndicatorHeight:F

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->ActiveIndicatorLeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->ActiveIndicatorTrailingSpace:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->IconSize:F

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

    sget p0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->ActiveIndicatorHeight:F

    return p0
.end method

.method public final getActiveIndicatorLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->ActiveIndicatorLeadingSpace:F

    return p0
.end method

.method public final getActiveIndicatorTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->ActiveIndicatorTrailingSpace:F

    return p0
.end method

.method public final getIconSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationBarHorizontalItemTokens;->IconSize:F

    return p0
.end method
