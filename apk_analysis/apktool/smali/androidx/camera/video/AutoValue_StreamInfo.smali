.class final Landroidx/camera/video/AutoValue_StreamInfo;
.super Landroidx/camera/video/StreamInfo;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final inProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

.field private final streamState:Landroidx/camera/video/StreamInfo$StreamState;


# direct methods
.method public constructor <init>(ILandroidx/camera/video/StreamInfo$StreamState;Landroidx/camera/core/SurfaceRequest$TransformationInfo;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/video/StreamInfo;-><init>()V

    iput p1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->id:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Landroidx/camera/video/AutoValue_StreamInfo;->streamState:Landroidx/camera/video/StreamInfo$StreamState;

    iput-object p3, p0, Landroidx/camera/video/AutoValue_StreamInfo;->inProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-void

    :cond_0
    const-string p0, "Null streamState"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/StreamInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/camera/video/StreamInfo;

    iget v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->id:I

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getId()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->streamState:Landroidx/camera/video/StreamInfo$StreamState;

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getStreamState()Landroidx/camera/video/StreamInfo$StreamState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->inProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/camera/video/StreamInfo;->getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->id:I

    return p0
.end method

.method public getInProgressTransformationInfo()Landroidx/camera/core/SurfaceRequest$TransformationInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->inProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    return-object p0
.end method

.method public getStreamState()Landroidx/camera/video/StreamInfo$StreamState;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->streamState:Landroidx/camera/video/StreamInfo$StreamState;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->id:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/video/AutoValue_StreamInfo;->streamState:Landroidx/camera/video/StreamInfo$StreamState;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->inProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamInfo{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", streamState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/AutoValue_StreamInfo;->streamState:Landroidx/camera/video/StreamInfo$StreamState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inProgressTransformationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/AutoValue_StreamInfo;->inProgressTransformationInfo:Landroidx/camera/core/SurfaceRequest$TransformationInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
