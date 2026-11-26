.class public final Landroidx/camera/video/MediaSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/MediaSpec$Builder;,
        Landroidx/camera/video/MediaSpec$Companion;,
        Landroidx/camera/video/MediaSpec$OutputFormat;
    }
.end annotation


# static fields
.field private static final AAC_DEFAULT_PROFILE:I = 0x2

.field private static final AUDIO_ENCODER_MIME_MPEG4_DEFAULT:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final AUDIO_ENCODER_MIME_WEBM_DEFAULT:Ljava/lang/String; = "audio/vorbis"

.field public static final Companion:Landroidx/camera/video/MediaSpec$Companion;

.field public static final OUTPUT_FORMAT_MPEG_4:I = 0x0

.field public static final OUTPUT_FORMAT_UNSPECIFIED:I = -0x1

.field public static final OUTPUT_FORMAT_WEBM:I = 0x1

.field private static final VIDEO_ENCODER_MIME_MPEG4_DEFAULT:Ljava/lang/String; = "video/avc"

.field private static final VIDEO_ENCODER_MIME_WEBM_DEFAULT:Ljava/lang/String; = "video/x-vnd.on2.vp8"


# instance fields
.field private final audioSpec:Landroidx/camera/video/AudioSpec;

.field private final outputFormat:I

.field private final videoSpec:Landroidx/camera/video/VideoSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/MediaSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/MediaSpec$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 35
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/MediaSpec;-><init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoSpec;)V
    .locals 6

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/MediaSpec;-><init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;)V
    .locals 6

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/camera/video/MediaSpec;-><init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;IILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    .line 33
    iput-object p2, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    .line 34
    iput p3, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;IILjh2;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Landroidx/camera/video/VideoSpec;->Companion:Landroidx/camera/video/VideoSpec$Companion;

    invoke-virtual {p1}, Landroidx/camera/video/VideoSpec$Companion;->getDEFAULT()Landroidx/camera/video/VideoSpec;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Landroidx/camera/video/AudioSpec;->Companion:Landroidx/camera/video/AudioSpec$Companion;

    invoke-virtual {p2}, Landroidx/camera/video/AudioSpec$Companion;->getDEFAULT()Landroidx/camera/video/AudioSpec;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, -0x1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/video/MediaSpec;-><init>(Landroidx/camera/video/VideoSpec;Landroidx/camera/video/AudioSpec;I)V

    return-void
.end method

.method public static final builder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/MediaSpec$Companion;->builder()Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final outputFormatToAudioMime(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToAudioMime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final outputFormatToAudioProfile(I)I
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToAudioProfile(I)I

    move-result p0

    return p0
.end method

.method public static final outputFormatToMuxerFormat(I)I
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToMuxerFormat(I)I

    move-result p0

    return p0
.end method

.method public static final outputFormatToVideoMime(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToVideoMime(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/MediaSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    check-cast p1, Landroidx/camera/video/MediaSpec;

    iget-object v3, p1, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    iget-object v3, p1, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    iget p1, p1, Landroidx/camera/video/MediaSpec;->outputFormat:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAudioSpec()Landroidx/camera/video/AudioSpec;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    return-object p0
.end method

.method public final getOutputFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    return p0
.end method

.method public final getVideoSpec()Landroidx/camera/video/VideoSpec;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    iget p0, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toBuilder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/video/MediaSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/MediaSpec$Builder;-><init>()V

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Builder;->setVideoSpec(Landroidx/camera/video/VideoSpec;)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Builder;->setAudioSpec(Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    invoke-virtual {v0, p0}, Landroidx/camera/video/MediaSpec$Builder;->setOutputFormat(I)Landroidx/camera/video/MediaSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaSpec{videoSpec="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->videoSpec:Landroidx/camera/video/VideoSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/video/MediaSpec;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/video/MediaSpec;->outputFormat:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
