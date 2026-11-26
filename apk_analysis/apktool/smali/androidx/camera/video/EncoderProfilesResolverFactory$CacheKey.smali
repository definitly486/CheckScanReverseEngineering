.class final Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/EncoderProfilesResolverFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheKey"
.end annotation


# instance fields
.field private final cameraConfig:Ljava/lang/Object;

.field private final cameraId:Ljava/lang/String;

.field private final videoCapabilitiesSource:I

.field private final videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field private final videoRecordingType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    iput p3, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    iput p4, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    iput-object p5, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;ILjava/lang/Object;)Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    :cond_4
    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->copy(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    return p0
.end method

.method public final component5()Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    invoke-direct/range {p0 .. p5}, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;-><init>(Ljava/lang/String;Ljava/lang/Object;IILandroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    iget v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    iget v3, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    iget-object p1, p1, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCameraConfig()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCameraId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public final getVideoCapabilitiesSource()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    return p0
.end method

.method public final getVideoEncoderInfoFinder()Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-object p0
.end method

.method public final getVideoRecordingType()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    invoke-static {v0, v2, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheKey(cameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->cameraConfig:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoRecordingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoRecordingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCapabilitiesSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoCapabilitiesSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoEncoderInfoFinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/EncoderProfilesResolverFactory$CacheKey;->videoEncoderInfoFinder:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
