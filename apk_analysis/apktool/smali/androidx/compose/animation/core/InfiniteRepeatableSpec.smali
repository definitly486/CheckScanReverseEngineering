.class public final Landroidx/compose/animation/core/InfiniteRepeatableSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationSpec<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final initialStartOffset:J

.field private final repeatMode:Landroidx/compose/animation/core/RepeatMode;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V
    .locals 9
    .annotation runtime Lul2;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-static {v2, v2, v0, v1}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILjh2;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 138
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    .line 139
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V

    return-void
.end method

.method private constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;",
            "Landroidx/compose/animation/core/RepeatMode;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iput-wide p3, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    instance-of p0, p1, Landroidx/compose/animation/core/TweenSpec;

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, Landroidx/compose/animation/core/TweenSpec;

    invoke-virtual {p0}, Landroidx/compose/animation/core/TweenSpec;->getDurationMillis()I

    move-result p0

    if-nez p0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/TweenSpec;

    invoke-virtual {p1}, Landroidx/compose/animation/core/TweenSpec;->getDelay()I

    move-result p0

    if-eqz p0, :cond_7

    :cond_0
    return-void

    :cond_1
    instance-of p0, p1, Landroidx/compose/animation/core/SnapSpec;

    if-eqz p0, :cond_2

    check-cast p1, Landroidx/compose/animation/core/SnapSpec;

    invoke-virtual {p1}, Landroidx/compose/animation/core/SnapSpec;->getDelay()I

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_2
    instance-of p0, p1, Landroidx/compose/animation/core/KeyframesSpec;

    if-eqz p0, :cond_4

    move-object p0, p1

    check-cast p0, Landroidx/compose/animation/core/KeyframesSpec;

    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpec;->getConfig()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDurationMillis()I

    move-result p0

    if-nez p0, :cond_3

    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec;

    invoke-virtual {p1}, Landroidx/compose/animation/core/KeyframesSpec;->getConfig()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDelayMillis()I

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    return-void

    :cond_4
    instance-of p0, p1, Landroidx/compose/animation/core/KeyframesWithSplineSpec;

    if-eqz p0, :cond_6

    move-object p0, p1

    check-cast p0, Landroidx/compose/animation/core/KeyframesWithSplineSpec;

    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->getConfig()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDurationMillis()I

    move-result p0

    if-nez p0, :cond_5

    check-cast p1, Landroidx/compose/animation/core/KeyframesWithSplineSpec;

    invoke-virtual {p1}, Landroidx/compose/animation/core/KeyframesWithSplineSpec;->getConfig()Landroidx/compose/animation/core/KeyframesWithSplineSpec$KeyframesWithSplineSpecConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/core/KeyframesSpecBaseConfig;->getDelayMillis()I

    move-result p0

    if-eqz p0, :cond_7

    :cond_5
    return-void

    :cond_6
    instance-of p0, p1, Landroidx/compose/animation/core/ArcAnimationSpec;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Landroidx/compose/animation/core/ArcAnimationSpec;

    invoke-virtual {p0}, Landroidx/compose/animation/core/ArcAnimationSpec;->getDurationMillis()I

    move-result p0

    if-nez p0, :cond_8

    check-cast p1, Landroidx/compose/animation/core/ArcAnimationSpec;

    invoke-virtual {p1}, Landroidx/compose/animation/core/ArcAnimationSpec;->getDelayMillis()I

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    const-string p0, "Animation to be infinitely repeated cannot have a 0-duration"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjh2;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 135
    sget-object p2, Landroidx/compose/animation/core/RepeatMode;->Restart:Landroidx/compose/animation/core/RepeatMode;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x2

    .line 136
    invoke-static {p3, p3, p4, p2}, Landroidx/compose/animation/core/StartOffset;->constructor-impl$default(IIILjh2;)J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 137
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLjh2;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/InfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-static {v0, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    if-ne v0, v2, :cond_0

    iget-wide v2, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    iget-wide p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/animation/core/StartOffset;->equals-impl0(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final getAnimation()Landroidx/compose/animation/core/DurationBasedAnimationSpec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    return-object p0
.end method

.method public final getInitialStartOffset-Rmkjzm4()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    return-wide v0
.end method

.method public final getRepeatMode()Landroidx/compose/animation/core/RepeatMode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    invoke-static {v2, v3}, Landroidx/compose/animation/core/StartOffset;->hashCode-impl(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->animation:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    invoke-interface {v1, p1}, Landroidx/compose/animation/core/DurationBasedAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->repeatMode:Landroidx/compose/animation/core/RepeatMode;

    iget-wide v3, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->initialStartOffset:J

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JLjh2;)V

    return-object v0
.end method
