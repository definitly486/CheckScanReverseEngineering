.class public final Landroidx/camera/video/internal/audio/AudioUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channelCountToChannelConfig(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method public static channelCountToChannelMask(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/16 p0, 0xc

    return p0
.end method

.method public static computeInterpolatedTimeNs(IJLandroid/media/AudioTimestamp;)J
    .locals 6

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v5, "sampleRate must be greater than 0."

    invoke-static {v0, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    move v1, v4

    :cond_1
    const-string v0, "framePosition must be no less than 0."

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-wide v0, p3, Landroid/media/AudioTimestamp;->framePosition:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2, p0}, Landroidx/camera/video/internal/audio/AudioUtils;->frameCountToDurationNs(JI)J

    move-result-wide p0

    iget-wide p2, p3, Landroid/media/AudioTimestamp;->nanoTime:J

    add-long/2addr p2, p0

    cmp-long p0, p2, v2

    if-gez p0, :cond_2

    return-wide v2

    :cond_2
    return-wide p2
.end method

.method public static frameCountToDurationNs(JI)J
    .locals 4

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v2, "sampleRate must be greater than 0."

    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v2, p0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static frameCountToSize(JI)J
    .locals 4

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v2, "bytesPerFrame must be greater than 0."

    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static getBytesPerFrame(II)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid channel count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v1, 0x2

    if-eq p0, v1, :cond_5

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/4 v2, 0x4

    if-eq p0, v2, :cond_3

    const/16 v3, 0x15

    if-eq p0, v3, :cond_2

    const/16 v1, 0x16

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "Invalid audio encoding: "

    invoke-static {p0, p1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v0

    :cond_2
    mul-int/2addr p1, v1

    return p1

    :cond_3
    :goto_1
    mul-int/2addr p1, v2

    :cond_4
    return p1

    :cond_5
    mul-int/2addr p1, v1

    return p1
.end method

.method public static sizeToFrameCount(JI)J
    .locals 4

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v2, "bytesPerFrame must be greater than 0."

    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    div-long/2addr p0, v0

    return-wide p0
.end method
