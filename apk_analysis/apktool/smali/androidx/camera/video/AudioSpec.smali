.class public final Landroidx/camera/video/AudioSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/AudioSpec$Builder;,
        Landroidx/camera/video/AudioSpec$ChannelCount;,
        Landroidx/camera/video/AudioSpec$Companion;,
        Landroidx/camera/video/AudioSpec$Source;,
        Landroidx/camera/video/AudioSpec$SourceFormat;
    }
.end annotation


# static fields
.field public static final BITRATE_UNSPECIFIED:I = 0x0

.field public static final CHANNEL_COUNT_MONO:I = 0x1

.field public static final CHANNEL_COUNT_NONE:I = 0x0

.field public static final CHANNEL_COUNT_STEREO:I = 0x2

.field public static final CHANNEL_COUNT_UNSPECIFIED:I = -0x1

.field public static final Companion:Landroidx/camera/video/AudioSpec$Companion;

.field private static final DEFAULT:Landroidx/camera/video/AudioSpec;

.field public static final MIME_TYPE_UNSPECIFIED:Ljava/lang/String; = "audio/*"

.field public static final SAMPLE_RATE_UNSPECIFIED:I = 0x0

.field public static final SOURCE_CAMCORDER:I = 0x5

.field public static final SOURCE_DEFAULT:I = 0x0

.field public static final SOURCE_FORMAT_PCM_16BIT:I = 0x2

.field public static final SOURCE_FORMAT_UNSPECIFIED:I = -0x1

.field public static final SOURCE_MIC:I = 0x1

.field public static final SOURCE_UNPROCESSED:I = 0x9

.field public static final SOURCE_UNSPECIFIED:I = -0x1

.field public static final SOURCE_VOICE_COMMUNICATION:I = 0x7

.field public static final SOURCE_VOICE_PERFORMANCE:I = 0xa

.field public static final SOURCE_VOICE_RECOGNITION:I = 0x6


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final mimeType:Ljava/lang/String;

.field private final sampleRate:I

.field private final source:I

.field private final sourceFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/AudioSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/AudioSpec$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/AudioSpec;->Companion:Landroidx/camera/video/AudioSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec$Companion;->builder()Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec$Builder;->build()Landroidx/camera/video/AudioSpec;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/AudioSpec;->DEFAULT:Landroidx/camera/video/AudioSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 49
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .line 37
    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9

    .line 38
    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 9

    .line 39
    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 9

    .line 40
    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    .line 41
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    .line 44
    iput p2, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    .line 45
    iput p3, p0, Landroidx/camera/video/AudioSpec;->source:I

    .line 46
    iput p4, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    .line 47
    iput p5, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    .line 48
    iput-object p6, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIIIILjava/lang/String;ILjh2;)V
    .locals 2

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v1, -0x1

    if-eqz p8, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const-string p6, "audio/*"

    :cond_5
    invoke-direct/range {p0 .. p6}, Landroidx/camera/video/AudioSpec;-><init>(IIIIILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Landroidx/camera/video/AudioSpec;
    .locals 1

    sget-object v0, Landroidx/camera/video/AudioSpec;->DEFAULT:Landroidx/camera/video/AudioSpec;

    return-object v0
.end method

.method public static final builder()Landroidx/camera/video/AudioSpec$Builder;
    .locals 1

    sget-object v0, Landroidx/camera/video/AudioSpec;->Companion:Landroidx/camera/video/AudioSpec$Companion;

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec$Companion;->builder()Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/video/AudioSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    check-cast p1, Landroidx/camera/video/AudioSpec;

    iget v3, p1, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/video/AudioSpec;->source:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->source:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->channelCount:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->bitrate:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    iget v3, p1, Landroidx/camera/video/AudioSpec;->sampleRate:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getBitrate()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    return p0
.end method

.method public final getChannelCount()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    return p0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSampleRate()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    return p0
.end method

.method public final getSource()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/AudioSpec;->source:I

    return p0
.end method

.method public final getSourceFormat()I
    .locals 0

    iget p0, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroidx/camera/video/AudioSpec;->source:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toBuilder()Landroidx/camera/video/AudioSpec$Builder;
    .locals 2

    new-instance v0, Landroidx/camera/video/AudioSpec$Builder;

    invoke-direct {v0}, Landroidx/camera/video/AudioSpec$Builder;-><init>()V

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/AudioSpec$Builder;->setSampleRate(I)Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/AudioSpec$Builder;->setBitrate(I)Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/AudioSpec$Builder;->setChannelCount(I)Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/AudioSpec;->source:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/AudioSpec$Builder;->setSource(I)Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    invoke-virtual {v0, v1}, Landroidx/camera/video/AudioSpec$Builder;->setSourceFormat(I)Landroidx/camera/video/AudioSpec$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/camera/video/AudioSpec$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/AudioSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioSpec{bitrate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/AudioSpec;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sourceFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AudioSpec;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AudioSpec;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/video/AudioSpec;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/video/AudioSpec;->mimeType:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
