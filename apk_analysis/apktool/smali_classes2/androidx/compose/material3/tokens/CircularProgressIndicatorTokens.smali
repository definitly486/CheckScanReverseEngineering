.class public final Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field private static final ActiveThickness:F

.field private static final ActiveWaveAmplitude:F

.field private static final ActiveWaveWavelength:F

.field public static final INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

.field private static final Size:F

.field private static final TrackActiveSpace:F

.field private static final TrackThickness:F

.field private static final WaveSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveThickness:F

    const v1, 0x3fcccccd    # 1.6f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveWaveAmplitude:F

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveWaveWavelength:F

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->Size:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    sput v1, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->TrackActiveSpace:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->TrackThickness:F

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->WaveSize:F

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

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveThickness:F

    return p0
.end method

.method public final getActiveWaveAmplitude-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveWaveAmplitude:F

    return p0
.end method

.method public final getActiveWaveWavelength-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveWaveWavelength:F

    return p0
.end method

.method public final getSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->Size:F

    return p0
.end method

.method public final getTrackActiveSpace-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->TrackActiveSpace:F

    return p0
.end method

.method public final getTrackThickness-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->TrackThickness:F

    return p0
.end method

.method public final getWaveSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->WaveSize:F

    return p0
.end method
