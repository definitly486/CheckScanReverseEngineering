.class public final Landroidx/compose/foundation/MarqueeDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/foundation/MarqueeDefaults;

.field private static final Iterations:I

.field private static final RepeatDelayMillis:I

.field private static final Spacing:Landroidx/compose/foundation/MarqueeSpacing;

.field private static final Velocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/MarqueeDefaults;

    invoke-direct {v0}, Landroidx/compose/foundation/MarqueeDefaults;-><init>()V

    sput-object v0, Landroidx/compose/foundation/MarqueeDefaults;->INSTANCE:Landroidx/compose/foundation/MarqueeDefaults;

    const/4 v0, 0x3

    sput v0, Landroidx/compose/foundation/MarqueeDefaults;->Iterations:I

    const/16 v0, 0x4b0

    sput v0, Landroidx/compose/foundation/MarqueeDefaults;->RepeatDelayMillis:I

    sget-object v0, Landroidx/compose/foundation/MarqueeSpacing;->Companion:Landroidx/compose/foundation/MarqueeSpacing$Companion;

    const v1, 0x3eaaaaab

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/MarqueeSpacing$Companion;->fractionOfContainer(F)Landroidx/compose/foundation/MarqueeSpacing;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/MarqueeDefaults;->Spacing:Landroidx/compose/foundation/MarqueeSpacing;

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/MarqueeDefaults;->Velocity:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getIterations$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRepeatDelayMillis$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getIterations()I
    .locals 0

    sget p0, Landroidx/compose/foundation/MarqueeDefaults;->Iterations:I

    return p0
.end method

.method public final getRepeatDelayMillis()I
    .locals 0

    sget p0, Landroidx/compose/foundation/MarqueeDefaults;->RepeatDelayMillis:I

    return p0
.end method

.method public final getSpacing()Landroidx/compose/foundation/MarqueeSpacing;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/MarqueeDefaults;->Spacing:Landroidx/compose/foundation/MarqueeSpacing;

    return-object p0
.end method

.method public final getVelocity-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/foundation/MarqueeDefaults;->Velocity:F

    return p0
.end method
