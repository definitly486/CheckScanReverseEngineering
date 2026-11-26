.class public final Landroidx/camera/video/internal/config/CaptureEncodeRates;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final captureRate:I

.field private final encodeRate:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    iput p2, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/video/internal/config/CaptureEncodeRates;IIILjava/lang/Object;)Landroidx/camera/video/internal/config/CaptureEncodeRates;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->copy(II)Landroidx/camera/video/internal/config/CaptureEncodeRates;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    return p0
.end method

.method public final copy(II)Landroidx/camera/video/internal/config/CaptureEncodeRates;
    .locals 0

    new-instance p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;

    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/config/CaptureEncodeRates;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/CaptureEncodeRates;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/CaptureEncodeRates;

    iget v1, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    iget v3, p1, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    iget p1, p1, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCaptureRate()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    return p0
.end method

.method public final getEncodeRate()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureEncodeRates(captureRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->captureRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodeRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/video/internal/config/CaptureEncodeRates;->encodeRate:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
