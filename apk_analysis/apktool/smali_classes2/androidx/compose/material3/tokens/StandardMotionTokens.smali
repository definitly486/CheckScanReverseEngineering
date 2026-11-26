.class public final Landroidx/compose/material3/tokens/StandardMotionTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

.field private static final SpringDefaultEffectsDamping:F

.field private static final SpringDefaultEffectsStiffness:F

.field private static final SpringDefaultSpatialDamping:F

.field private static final SpringDefaultSpatialStiffness:F

.field private static final SpringFastEffectsDamping:F

.field private static final SpringFastEffectsStiffness:F

.field private static final SpringFastSpatialDamping:F

.field private static final SpringFastSpatialStiffness:F

.field private static final SpringSlowEffectsDamping:F

.field private static final SpringSlowEffectsStiffness:F

.field private static final SpringSlowSpatialDamping:F

.field private static final SpringSlowSpatialStiffness:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/material3/tokens/StandardMotionTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/StandardMotionTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/StandardMotionTokens;->INSTANCE:Landroidx/compose/material3/tokens/StandardMotionTokens;

    const v0, 0x3f666666    # 0.9f

    sput v0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultSpatialDamping:F

    const/high16 v1, 0x442f0000    # 700.0f

    sput v1, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultSpatialStiffness:F

    const/high16 v1, 0x3f800000    # 1.0f

    sput v1, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultEffectsDamping:F

    const/high16 v2, 0x44c80000    # 1600.0f

    sput v2, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultEffectsStiffness:F

    sput v0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastSpatialDamping:F

    const/high16 v2, 0x44af0000    # 1400.0f

    sput v2, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastSpatialStiffness:F

    sput v1, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastEffectsDamping:F

    const v2, 0x456d8000    # 3800.0f

    sput v2, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastEffectsStiffness:F

    sput v0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowSpatialDamping:F

    const/high16 v0, 0x43960000    # 300.0f

    sput v0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowSpatialStiffness:F

    sput v1, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowEffectsDamping:F

    const/high16 v0, 0x44480000    # 800.0f

    sput v0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowEffectsStiffness:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpringDefaultEffectsDamping()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultEffectsDamping:F

    return p0
.end method

.method public final getSpringDefaultEffectsStiffness()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultEffectsStiffness:F

    return p0
.end method

.method public final getSpringDefaultSpatialDamping()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultSpatialDamping:F

    return p0
.end method

.method public final getSpringDefaultSpatialStiffness()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringDefaultSpatialStiffness:F

    return p0
.end method

.method public final getSpringFastEffectsDamping()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastEffectsDamping:F

    return p0
.end method

.method public final getSpringFastEffectsStiffness()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastEffectsStiffness:F

    return p0
.end method

.method public final getSpringFastSpatialDamping()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastSpatialDamping:F

    return p0
.end method

.method public final getSpringFastSpatialStiffness()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringFastSpatialStiffness:F

    return p0
.end method

.method public final getSpringSlowEffectsDamping()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowEffectsDamping:F

    return p0
.end method

.method public final getSpringSlowEffectsStiffness()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowEffectsStiffness:F

    return p0
.end method

.method public final getSpringSlowSpatialDamping()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowSpatialDamping:F

    return p0
.end method

.method public final getSpringSlowSpatialStiffness()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/StandardMotionTokens;->SpringSlowSpatialStiffness:F

    return p0
.end method
