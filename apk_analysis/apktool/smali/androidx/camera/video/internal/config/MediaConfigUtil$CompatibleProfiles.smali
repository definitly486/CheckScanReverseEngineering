.class final Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/config/MediaConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompatibleProfiles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;

.field private static final EMPTY:Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;


# instance fields
.field private final audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

.field private final encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

.field private final videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->Companion:Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;

    new-instance v2, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;-><init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjh2;)V

    sput-object v2, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->EMPTY:Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 24
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;-><init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    .line 22
    iput-object p2, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    .line 23
    iput-object p3, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;-><init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;
    .locals 1

    sget-object v0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->EMPTY:Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    return-object v0
.end method

.method public static synthetic copy$default(Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;ILjava/lang/Object;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->copy(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p0
.end method

.method public final component2()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    return-object p0
.end method

.method public final component3()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    return-object p0
.end method

.method public final copy(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;
    .locals 0

    new-instance p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;-><init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    iget-object v3, p1, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    iget-object v3, p1, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    iget-object p1, p1, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    return-object p0
.end method

.method public final getEncoderProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    return-object p0
.end method

.method public final getVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isFullyCompatible()Z
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toMediaInfo()Landroidx/camera/video/internal/config/MediaInfo;
    .locals 10

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->isFullyCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/camera/video/internal/config/MediaInfo;

    new-instance v1, Landroidx/camera/video/internal/config/ContainerInfo;

    sget-object v2, Landroidx/camera/video/internal/config/MediaConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/MediaConfigUtil;

    iget-object v3, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/camera/video/internal/config/MediaConfigUtil;->access$mediaRecorderFormatToOutputFormat(Landroidx/camera/video/internal/config/MediaConfigUtil;I)I

    move-result v2

    iget-object v3, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    invoke-direct {v1, v2, v3}, Landroidx/camera/video/internal/config/ContainerInfo;-><init>(ILandroidx/camera/core/impl/EncoderProfilesProxy;)V

    new-instance v4, Landroidx/camera/video/internal/config/VideoMimeInfo;

    iget-object v2, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Landroidx/camera/video/internal/config/VideoMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;ILjh2;)V

    new-instance v2, Landroidx/camera/video/internal/config/AudioMimeInfo;

    iget-object v3, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-virtual {v5}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getProfile()I

    move-result v5

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-direct {v2, v3, v5, p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    invoke-direct {v0, v1, v4, v2}, Landroidx/camera/video/internal/config/MediaInfo;-><init>(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)V

    return-object v0

    :cond_0
    const-string p0, "Check failed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompatibleProfiles(encoderProfiles="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->encoderProfiles:Landroidx/camera/core/impl/EncoderProfilesProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->videoProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->audioProfile:Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
