.class public final Landroidx/compose/material3/tokens/AppBarLargeTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ContainerHeight:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/AppBarLargeTokens;

.field private static final TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/AppBarLargeTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/AppBarLargeTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/AppBarLargeTokens;->INSTANCE:Landroidx/compose/material3/tokens/AppBarLargeTokens;

    const/high16 v0, 0x43180000    # 152.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/AppBarLargeTokens;->ContainerHeight:F

    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->HeadlineMedium:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/AppBarLargeTokens;->TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

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

    sget p0, Landroidx/compose/material3/tokens/AppBarLargeTokens;->ContainerHeight:F

    return p0
.end method

.method public final getTitleFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/AppBarLargeTokens;->TitleFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-object p0
.end method
