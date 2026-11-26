.class public final Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ActiveThickness:F

.field private static final ActiveWaveAmplitude:F

.field private static final ActiveWaveWavelength:F

.field private static final Height:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

.field private static final IndeterminateActiveWaveWavelength:F

.field private static final StopSize:F

.field private static final StopTrailingSpace:F

.field private static final TrackActiveSpace:F

.field private static final TrackThickness:F

.field private static final WaveHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->ActiveThickness:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->ActiveWaveAmplitude:F

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->ActiveWaveWavelength:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->Height:F

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->IndeterminateActiveWaveWavelength:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->StopSize:F

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->StopTrailingSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->TrackActiveSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->TrackThickness:F

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->WaveHeight:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveThickness-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->ActiveThickness:F

    return p0
.end method

.method public final getActiveWaveAmplitude-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->ActiveWaveAmplitude:F

    return p0
.end method

.method public final getActiveWaveWavelength-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->ActiveWaveWavelength:F

    return p0
.end method

.method public final getHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->Height:F

    return p0
.end method

.method public final getIndeterminateActiveWaveWavelength-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->IndeterminateActiveWaveWavelength:F

    return p0
.end method

.method public final getStopSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->StopSize:F

    return p0
.end method

.method public final getStopTrailingSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->StopTrailingSpace:F

    return p0
.end method

.method public final getTrackActiveSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->TrackActiveSpace:F

    return p0
.end method

.method public final getTrackThickness-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->TrackThickness:F

    return p0
.end method

.method public final getWaveHeight-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;->WaveHeight:F

    return p0
.end method
