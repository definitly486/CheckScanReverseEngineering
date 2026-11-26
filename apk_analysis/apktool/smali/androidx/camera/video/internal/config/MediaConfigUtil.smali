.class public final Landroidx/camera/video/internal/config/MediaConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/video/internal/config/MediaConfigUtil;

.field private static final OUTPUT_FORMAT_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaConfigUtil"

.field private static supportedAudioEncoderMimesOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static supportedVideoEncoderMimesOverride:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/config/MediaConfigUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/MediaConfigUtil;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/config/MediaConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/MediaConfigUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$mediaRecorderFormatToOutputFormat(Landroidx/camera/video/internal/config/MediaConfigUtil;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/video/internal/config/MediaConfigUtil;->mediaRecorderFormatToOutputFormat(I)I

    move-result p0

    return p0
.end method

.method private final getSupportedAudioEncoderMimes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/video/internal/config/MediaConfigUtil;->supportedAudioEncoderMimesOverride:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/camera/video/internal/utils/CodecUtil;->getAudioEncoderMimeTypes()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final getSupportedVideoEncoderMimes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Landroidx/camera/video/internal/config/MediaConfigUtil;->supportedVideoEncoderMimesOverride:Ljava/util/List;

    if-nez p0, :cond_0

    invoke-static {}, Landroidx/camera/video/internal/utils/CodecUtil;->getVideoEncoderMimeTypes()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final mediaRecorderFormatToOutputFormat(I)I
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final outputFormatToMuxerFormat(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final resolveByDefault(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaInfo;
    .locals 10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "video/*"

    invoke-static {p4, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, v3

    :goto_2
    if-nez p4, :cond_4

    sget-object p4, Landroidx/camera/video/internal/config/VideoConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/VideoConfigUtil;

    invoke-virtual {p4, p2}, Landroidx/camera/video/internal/config/VideoConfigUtil;->getDynamicRangeDefaultMime(Landroidx/camera/core/DynamicRange;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p4, p3}, Landroidx/camera/video/internal/config/VideoConfigUtil;->outputFormatToVideoMime(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_3
    move-object p4, v1

    :cond_4
    :goto_3
    const-string v1, "audio/*"

    invoke-static {p5, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object p5, v3

    :goto_4
    if-nez p5, :cond_6

    sget-object p5, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    invoke-virtual {p5, p3}, Landroidx/camera/video/internal/config/AudioConfigUtil;->outputFormatToAudioMime(I)Ljava/lang/String;

    move-result-object p5

    :cond_6
    move p3, v0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveCompatibleProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    move-result-object p0

    new-instance p1, Landroidx/camera/video/internal/config/MediaInfo;

    new-instance p2, Landroidx/camera/video/internal/config/ContainerInfo;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->getEncoderProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Landroidx/camera/video/internal/config/ContainerInfo;-><init>(ILandroidx/camera/core/impl/EncoderProfilesProxy;)V

    new-instance v4, Landroidx/camera/video/internal/config/VideoMimeInfo;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->getVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v5, p4

    invoke-direct/range {v4 .. v9}, Landroidx/camera/video/internal/config/VideoMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;ILjh2;)V

    new-instance p3, Landroidx/camera/video/internal/config/AudioMimeInfo;

    sget-object p4, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    invoke-virtual {p4, p5}, Landroidx/camera/video/internal/config/AudioConfigUtil;->audioMimeToAudioProfile(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->getAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p0

    invoke-direct {p3, p5, p4, p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    invoke-direct {p1, p2, v4, p3}, Landroidx/camera/video/internal/config/MediaInfo;-><init>(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Resolved MediaInfo by Default: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaConfigUtil"

    invoke-static {p2, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final resolveByEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaInfo;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveCompatibleProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Resolved CompatibleProfiles: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaConfigUtil"

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->isFullyCompatible()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p3

    :goto_0
    if-nez p0, :cond_1

    return-object p3

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->toMediaInfo()Landroidx/camera/video/internal/config/MediaInfo;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Resolved MediaInfo by CompatibleProfiles: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final resolveByFormatCombo(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaInfo;
    .locals 7

    invoke-direct {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil;->getSupportedVideoEncoderMimes()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil;->getSupportedAudioEncoderMimes()Ljava/util/List;

    move-result-object v6

    move-object v0, p0

    move-object v4, p2

    move v1, p3

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v6}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveFormatCombo(ILjava/lang/String;Ljava/lang/String;Landroidx/camera/core/DynamicRange;Ljava/util/List;Ljava/util/List;)Landroidx/camera/video/internal/config/FormatCombo;

    move-result-object p0

    move-object v2, v4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Resolved FormatCombo: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MediaConfigUtil"

    invoke-static {p3, p2}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatCombo;->getContainer()I

    move-result v3

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatCombo;->getVideoMime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatCombo;->getAudioMime()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    const-string p4, "audio/*"

    :cond_1
    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveCompatibleProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    move-result-object p1

    new-instance p4, Landroidx/camera/video/internal/config/ContainerInfo;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatCombo;->getContainer()I

    move-result p5

    invoke-virtual {p1}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->getEncoderProfiles()Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object v0

    invoke-direct {p4, p5, v0}, Landroidx/camera/video/internal/config/ContainerInfo;-><init>(ILandroidx/camera/core/impl/EncoderProfilesProxy;)V

    new-instance v1, Landroidx/camera/video/internal/config/VideoMimeInfo;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatCombo;->getVideoMime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->getVideoProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/camera/video/internal/config/VideoMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;ILjh2;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/FormatCombo;->getAudioMime()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p2, Landroidx/camera/video/internal/config/AudioMimeInfo;

    sget-object p5, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    invoke-virtual {p5, p0}, Landroidx/camera/video/internal/config/AudioConfigUtil;->audioMimeToAudioProfile(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p1}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->getAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p1

    invoke-direct {p2, p0, p5, p1}, Landroidx/camera/video/internal/config/AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    :cond_2
    new-instance p0, Landroidx/camera/video/internal/config/MediaInfo;

    invoke-direct {p0, p4, v1, p2}, Landroidx/camera/video/internal/config/MediaInfo;-><init>(Landroidx/camera/video/internal/config/ContainerInfo;Landroidx/camera/video/internal/config/VideoMimeInfo;Landroidx/camera/video/internal/config/AudioMimeInfo;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Resolved MediaInfo by FormatCombo: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final resolveCompatibleEncoderProfiles(ILandroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;
    .locals 2

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    sget-object v0, Landroidx/camera/video/internal/config/MediaConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/MediaConfigUtil;

    invoke-interface {p2}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getRecommendedFileFormat()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/config/MediaConfigUtil;->mediaRecorderFormatToOutputFormat(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private final resolveCompatibleProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;->Companion:Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles$Companion;->getEMPTY()Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p3, p1}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveCompatibleEncoderProfiles(ILandroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/core/impl/EncoderProfilesProxy;

    move-result-object p0

    sget-object p3, Landroidx/camera/video/internal/config/VideoConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/VideoConfigUtil;

    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getVideoProfiles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p4, p2, v0}, Landroidx/camera/video/internal/config/VideoConfigUtil;->resolveCompatibleVideoProfile(Ljava/lang/String;Landroidx/camera/core/DynamicRange;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;

    move-result-object p2

    sget-object p3, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    invoke-interface {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy;->getAudioProfiles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p5, p1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveCompatibleAudioProfile(Ljava/lang/String;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p1

    new-instance p3, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;

    invoke-direct {p3, p0, p2, p1}, Landroidx/camera/video/internal/config/MediaConfigUtil$CompatibleProfiles;-><init>(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$VideoProfileProxy;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    return-object p3
.end method

.method private final resolveFormatCombo(ILjava/lang/String;Ljava/lang/String;Landroidx/camera/core/DynamicRange;Ljava/util/List;Ljava/util/List;)Landroidx/camera/video/internal/config/FormatCombo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/camera/core/DynamicRange;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/camera/video/internal/config/FormatCombo;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "resolveFormatCombo - supportedVideoEncoderMimes: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", supportedAudioEncoderMimes: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaConfigUtil"

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->INSTANCE:Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;

    invoke-virtual {p0, p4}, Landroidx/camera/video/internal/config/DynamicRangeFormatComboRegistry;->getRegistry(Landroidx/camera/core/DynamicRange;)Landroidx/camera/video/internal/config/FormatComboRegistry;

    move-result-object p0

    const/4 p4, 0x0

    if-nez p0, :cond_0

    return-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/video/internal/config/FormatComboRegistry;->getCombos(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroidx/camera/video/internal/config/FormatCombo;

    invoke-virtual {p3}, Landroidx/camera/video/internal/config/FormatCombo;->getVideoMime()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "eligibleFormatCombos: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p4

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroidx/camera/video/internal/config/FormatCombo;

    move-object v0, p5

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p3}, Landroidx/camera/video/internal/config/FormatCombo;->getVideoMime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p6

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p3}, Landroidx/camera/video/internal/config/FormatCombo;->getAudioMime()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_5
    move-object p2, p4

    :goto_1
    check-cast p2, Landroidx/camera/video/internal/config/FormatCombo;

    if-nez p2, :cond_9

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroidx/camera/video/internal/config/FormatCombo;

    move-object p6, p5

    check-cast p6, Ljava/lang/Iterable;

    invoke-virtual {p3}, Landroidx/camera/video/internal/config/FormatCombo;->getVideoMime()Ljava/lang/String;

    move-result-object v0

    invoke-static {p6, v0}, Lqn1;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_6

    invoke-virtual {p3}, Landroidx/camera/video/internal/config/FormatCombo;->getAudioMime()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    move-object p4, p2

    :cond_7
    check-cast p4, Landroidx/camera/video/internal/config/FormatCombo;

    if-nez p4, :cond_8

    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/internal/config/FormatCombo;

    return-object p0

    :cond_8
    return-object p4

    :cond_9
    return-object p2
.end method

.method public static final resolveMediaInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/core/DynamicRange;Landroidx/camera/core/impl/EncoderProfilesProxy;)Landroidx/camera/video/internal/config/MediaInfo;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Resolving MediaInfo for MediaSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", DynamicRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", EncoderProfiles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaConfigUtil"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result v5

    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getVideoSpec()Landroidx/camera/video/VideoSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/VideoSpec;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getAudioSpec()Landroidx/camera/video/AudioSpec;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/video/AudioSpec;->getMimeType()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Landroidx/camera/video/internal/config/MediaConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/MediaConfigUtil;

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveByEncoderProfiles(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveByFormatCombo(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/internal/config/MediaConfigUtil;->resolveByDefault(Landroidx/camera/core/impl/EncoderProfilesProxy;Landroidx/camera/core/DynamicRange;ILjava/lang/String;Ljava/lang/String;)Landroidx/camera/video/internal/config/MediaInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final setSupportedEncoderMimeTypes(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Landroidx/camera/video/internal/config/MediaConfigUtil;->supportedVideoEncoderMimesOverride:Ljava/util/List;

    sput-object p2, Landroidx/camera/video/internal/config/MediaConfigUtil;->supportedAudioEncoderMimesOverride:Ljava/util/List;

    return-void
.end method
