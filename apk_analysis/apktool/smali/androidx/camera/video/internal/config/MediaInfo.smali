.class public final Landroidx/camera/video/internal/config/MediaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

.field private final containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

.field private final videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    iput-object p2, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    iput-object p3, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/video/internal/config/MediaInfo;Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;ILjava/lang/Object;)Landroidx/camera/video/internal/config/MediaInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/MediaInfo;->copy(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)Landroidx/camera/video/internal/config/MediaInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/video/internal/config/ContainerInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    return-object p0
.end method

.method public final component2()Landroidx/camera/video/internal/config/VideoMimeInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    return-object p0
.end method

.method public final component3()Landroidx/camera/video/internal/config/AudioMimeInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    return-object p0
.end method

.method public final copy(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)Landroidx/camera/video/internal/config/MediaInfo;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/video/internal/config/MediaInfo;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/MediaInfo;-><init>(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/MediaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/MediaInfo;

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    iget-object v3, p1, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    iget-object v3, p1, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    iget-object p1, p1, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAudioMimeInfo()Landroidx/camera/video/internal/config/AudioMimeInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    return-object p0
.end method

.method public final getContainerInfo()Landroidx/camera/video/internal/config/ContainerInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    return-object p0
.end method

.method public final getVideoMimeInfo()Landroidx/camera/video/internal/config/VideoMimeInfo;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    invoke-virtual {v0}, Landroidx/camera/video/internal/config/ContainerInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    invoke-virtual {v1}, Landroidx/camera/video/internal/config/VideoMimeInfo;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaInfo(containerInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaInfo;->containerInfo:Landroidx/camera/video/internal/config/ContainerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoMimeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaInfo;->videoMimeInfo:Landroidx/camera/video/internal/config/VideoMimeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioMimeInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaInfo;->audioMimeInfo:Landroidx/camera/video/internal/config/AudioMimeInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
