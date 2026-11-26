.class public final Landroidx/media3/common/audio/DefaultGainProvider$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/audio/DefaultGainProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final defaultGain:F

.field private final gainMap:Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "Ljava/lang/Long;",
            "Llm3<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/collect/e0;

    invoke-direct {v0}, Lcom/google/common/collect/e0;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->gainMap:Lcom/google/common/collect/e0;

    iput p1, p0, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->defaultGain:F

    sget-object p0, Lgx6;->d:Lgx6;

    new-instance p1, Lmh2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/e0;->c(Lgx6;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(JLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;JLandroid/util/Pair;)Ljava/lang/Float;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->lambda$addFadeAt$1(JLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;JLandroid/util/Pair;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/util/Pair;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->lambda$new$0(Landroid/util/Pair;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addFadeAt$1(JLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;JLandroid/util/Pair;)Ljava/lang/Float;
    .locals 3

    iget-object v0, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p5, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide p0

    sub-long/2addr v1, p0

    invoke-static {p3, p4, v0}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide p0

    invoke-interface {p2, v1, v2, p0, p1}, Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;->getGainFactorAt(JJ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/util/Pair;)Ljava/lang/Float;
    .locals 0

    const p0, -0x800001

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addFadeAt(JJLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;)Landroidx/media3/common/audio/DefaultGainProvider$Builder;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lo8;->e(Z)V

    const-wide/16 v3, 0x1

    cmp-long v0, p3, v3

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lo8;->e(Z)V

    iget-object v0, p0, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->gainMap:Lcom/google/common/collect/e0;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    add-long v2, p1, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ll72$d;

    invoke-direct {v3, v1}, Ll72;-><init>(Ljava/lang/Comparable;)V

    new-instance v1, Ll72$d;

    invoke-direct {v1, v2}, Ll72;-><init>(Ljava/lang/Comparable;)V

    new-instance v2, Lgx6;

    invoke-direct {v2, v3, v1}, Lgx6;-><init>(Ll72;Ll72;)V

    new-instance v4, Lnh2;

    move-wide v5, p1

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lnh2;-><init>(JJLandroidx/media3/common/audio/DefaultGainProvider$FadeProvider;)V

    invoke-virtual {v0, v2, v4}, Lcom/google/common/collect/e0;->c(Lgx6;Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Landroidx/media3/common/audio/DefaultGainProvider;
    .locals 3

    new-instance v0, Landroidx/media3/common/audio/DefaultGainProvider;

    iget-object v1, p0, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->gainMap:Lcom/google/common/collect/e0;

    iget p0, p0, Landroidx/media3/common/audio/DefaultGainProvider$Builder;->defaultGain:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/common/audio/DefaultGainProvider;-><init>(Lcom/google/common/collect/e0;FLandroidx/media3/common/audio/DefaultGainProvider$1;)V

    return-object v0
.end method
