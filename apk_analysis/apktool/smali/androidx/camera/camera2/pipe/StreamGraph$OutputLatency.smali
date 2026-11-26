.class public final Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/StreamGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputLatency"
.end annotation


# instance fields
.field private final estimatedCaptureLatencyNs:J

.field private final estimatedProcessingLatencyNs:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    iput-wide p3, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;JJILjava/lang/Object;)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->copy(JJ)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    return-wide v0
.end method

.method public final copy(JJ)Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;
    .locals 0

    new-instance p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;-><init>(JJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;

    iget-wide v3, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    iget-wide v5, p1, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    iget-wide p0, p1, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEstimatedCaptureLatencyNs()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    return-wide v0
.end method

.method public final getEstimatedLatencyNs()J
    .locals 4

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    iget-wide v2, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEstimatedProcessingLatencyNs()J
    .locals 2

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputLatency(estimatedCaptureLatencyNs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedCaptureLatencyNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", estimatedProcessingLatencyNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/camera/camera2/pipe/StreamGraph$OutputLatency;->estimatedProcessingLatencyNs:J

    const/16 p0, 0x29

    invoke-static {v0, v1, v2, p0}, Llg;->f(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
