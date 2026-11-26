.class public final Landroidx/camera/video/internal/config/ContainerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

.field private final outputFormat:I


# direct methods
.method public constructor <init>(ILandroidx/camera/core/impl/EncoderProfilesProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    iput-object p2, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/video/internal/config/ContainerInfo;ILandroidx/camera/core/impl/EncoderProfilesProxy;ILjava/lang/Object;)Landroidx/camera/video/internal/config/ContainerInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/video/internal/config/ContainerInfo;->copy(ILandroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/video/internal/config/ContainerInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getOutputFormat$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    return p0
.end method

.method public final component2()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p0
.end method

.method public final copy(ILandroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/video/internal/config/ContainerInfo;
    .locals 0

    new-instance p0, Landroidx/camera/video/internal/config/ContainerInfo;

    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/config/ContainerInfo;-><init>(ILandroidx/camera/core/impl/EncoderProfilesProxy;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/ContainerInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/ContainerInfo;

    iget v1, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    iget v3, p1, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    iget-object p1, p1, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCompatibleEncoderProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p0
.end method

.method public final getOutputFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContainerInfo(outputFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/internal/config/ContainerInfo;->outputFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compatibleEncoderProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/internal/config/ContainerInfo;->compatibleEncoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
