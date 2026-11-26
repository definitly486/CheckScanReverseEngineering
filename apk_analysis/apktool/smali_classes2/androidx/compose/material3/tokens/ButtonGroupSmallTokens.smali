.class public final Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final BetweenSpace:F

.field private static final ContainerHeight:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;->INSTANCE:Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;->BetweenSpace:F

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;->ContainerHeight:F

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

    sget p0, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;->BetweenSpace:F

    return p0
.end method

.method public final getContainerHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/ButtonGroupSmallTokens;->ContainerHeight:F

    return p0
.end method
