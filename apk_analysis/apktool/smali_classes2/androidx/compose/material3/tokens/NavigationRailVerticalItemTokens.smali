.class public final Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ActiveIndicatorHeight:F

.field private static final ActiveIndicatorWidth:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;

.field private static final IconLabelSpace:F

.field private static final LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

.field private static final LeadingSpace:F

.field private static final TrailingSpace:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->INSTANCE:Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->ActiveIndicatorHeight:F

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->ActiveIndicatorWidth:F

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->IconLabelSpace:F

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->LeadingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->TrailingSpace:F

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->LabelMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

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

    sget p0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->ActiveIndicatorHeight:F

    return p0
.end method

.method public final getActiveIndicatorWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->ActiveIndicatorWidth:F

    return p0
.end method

.method public final getIconLabelSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->IconLabelSpace:F

    return p0
.end method

.method public final getLabelTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->LabelTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-object p0
.end method

.method public final getLeadingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->LeadingSpace:F

    return p0
.end method

.method public final getTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/NavigationRailVerticalItemTokens;->TrailingSpace:F

    return p0
.end method
