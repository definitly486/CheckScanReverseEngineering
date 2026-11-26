.class public final Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$estimateRealtimeNsToMonotonicNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;)J
    .locals 2

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimateRealtimeNsToMonotonicNs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$estimateRealtimeNsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;)J
    .locals 2

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimateRealtimeNsToUtcMs()J

    move-result-wide v0

    return-wide v0
.end method

.method private final estimateRealtimeNsToMonotonicNs()J
    .locals 13

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge p0, v4, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v10, v8, v4

    cmp-long v12, v10, v0

    if-gez v12, :cond_0

    add-long/2addr v4, v8

    const-wide/16 v0, 0x2

    div-long/2addr v4, v0

    sub-long/2addr v6, v4

    move-wide v2, v6

    move-wide v0, v10

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method private final estimateRealtimeNsToUtcMs()J
    .locals 13

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge p0, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    sub-long v10, v8, v4

    cmp-long v12, v10, v0

    if-gez v12, :cond_0

    add-long/2addr v4, v8

    const-wide/32 v0, 0x1e8480

    div-long/2addr v4, v0

    sub-long/2addr v4, v6

    move-wide v2, v4

    move-wide v0, v10

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method


# virtual methods
.method public final estimate()Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 6

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimateRealtimeNsToUtcMs()J

    move-result-wide v1

    invoke-direct {p0}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->estimateRealtimeNsToMonotonicNs()J

    move-result-wide v3

    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;-><init>(JJLjh2;)V

    return-object v0
.end method

.method public final fixed(JJ)Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
    .locals 6

    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;

    const/4 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;-><init>(JJLjh2;)V

    return-object v0
.end method

.method public final monotonicMsToRealtimeMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->monotonicMsToRealtimeNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p0

    const-wide/32 p2, 0xf4240

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final monotonicMsToRealtimeNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToMonotonicNs()J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public final monotonicMsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->monotonicMsToRealtimeNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->realtimeNsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final monotonicNsToRealtimeMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->monotonicNsToRealtimeNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p0

    const-wide/32 p2, 0xf4240

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final monotonicNsToRealtimeNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToMonotonicNs()J

    move-result-wide p0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public final monotonicNsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->monotonicNsToRealtimeNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->realtimeNsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final realtimeMsToMonotonicMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->realtimeMsToMonotonicNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p0

    const-wide/32 p2, 0xf4240

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final realtimeMsToMonotonicNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v0, 0xf4240

    mul-long/2addr p2, v0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToMonotonicNs()J

    move-result-wide p0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public final realtimeMsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToUtcMs()J

    move-result-wide p0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public final realtimeNsToMonotonicMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;->realtimeNsToMonotonicNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J

    move-result-wide p0

    const-wide/32 p2, 0xf4240

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public final realtimeNsToMonotonicNs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToMonotonicNs()J

    move-result-wide p0

    sub-long/2addr p2, p0

    return-wide p2
.end method

.method public final realtimeNsToUtcMs(Landroidx/camera/camera2/pipe/core/SystemClockOffsets;J)J
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v0, 0xf4240

    div-long/2addr p2, v0

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->getRealtimeNsToUtcMs()J

    move-result-wide p0

    sub-long/2addr p2, p0

    return-wide p2
.end method
