.class public final Landroidx/camera/video/internal/config/AudioConfigUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AAC_DEFAULT_PROFILE:I = 0x2

.field public static final AUDIO_CHANNEL_COUNT_DEFAULT:I = 0x1

.field private static final AUDIO_ENCODER_MIME_MPEG4_DEFAULT:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final AUDIO_ENCODER_MIME_WEBM_DEFAULT:Ljava/lang/String; = "audio/vorbis"

.field public static final AUDIO_SAMPLE_RATE_DEFAULT:I = 0xac44

.field public static final AUDIO_SOURCE_DEFAULT:I = 0x5

.field public static final AUDIO_SOURCE_FORMAT_DEFAULT:I = 0x2

.field public static final INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

.field private static final TAG:Ljava/lang/String; = "AudioConfigUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/video/internal/config/AudioConfigUtil;

    invoke-direct {v0}, Landroidx/camera/video/internal/config/AudioConfigUtil;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lst;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/config/AudioConfigUtil;->selectSampleRateOrNearestSupported$lambda$1(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(III)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/camera/video/internal/config/AudioConfigUtil;->selectSampleRateOrNearestSupported$lambda$0(III)I

    move-result p0

    return p0
.end method

.method public static final resolveAudioEncoderConfig(Landroidx/camera/video/internal/config/AudioMimeInfo;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/video/AudioSpec;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/camera/video/internal/config/AudioEncoderConfigAudioProfileResolver;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getProfile()I

    move-result v3

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v7

    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Landroidx/camera/video/internal/config/AudioEncoderConfigAudioProfileResolver;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    goto :goto_0

    :cond_0
    move-object v4, p1

    move-object v6, p2

    move-object v5, p3

    new-instance v2, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getProfile()I

    move-result p0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, p0

    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;)V

    move-object v1, v2

    :goto_0
    invoke-interface {v1}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    return-object p0
.end method

.method public static final resolveAudioMimeInfo(Landroidx/camera/video/MediaSpec;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;)Landroidx/camera/video/internal/config/AudioMimeInfo;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/video/MediaSpec;->Companion:Landroidx/camera/video/MediaSpec$Companion;

    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToAudioMime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToAudioProfile(I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;->getDefaultAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getProfile()I

    move-result v4

    const-string v5, "audio/none"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ")]"

    const-string v7, "AudioConfigUtil"

    const-string v8, "(profile: "

    if-eqz v5, :cond_0

    const-string p0, "EncoderProfiles contains undefined AUDIO mime type so cannot be used. May rely on fallback defaults to derive settings [chosen mime type: "

    invoke-static {v0, p0, v1, v8, v6}, Lhg;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/camera/video/MediaSpec;->getOutputFormat()I

    move-result p0

    const/4 v5, -0x1

    if-ne p0, v5, :cond_1

    const-string p0, "MediaSpec contains OUTPUT_FORMAT_UNSPECIFIED. Using EncoderProfiles to derive AUDIO settings [mime type: "

    invoke-static {v4, p0, v3, v8, v6}, Lhg;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v1, v3

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-ne v0, v4, :cond_2

    const-string p0, "MediaSpec audio mime/profile matches EncoderProfiles. Using EncoderProfiles to derive AUDIO settings [mime type: "

    invoke-static {v0, p0, v3, v8, v6}, Lhg;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v1, v3

    goto :goto_0

    :cond_2
    const-string p0, "MediaSpec audio mime or profile does not match EncoderProfiles, so EncoderProfiles settings cannot be used. May rely on fallback defaults to derive AUDIO settings [EncoderProfiles mime type: "

    const-string p1, "), chosen mime type: "

    invoke-static {v4, p0, v3, v8, p1}, Lmz0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    new-instance p0, Landroidx/camera/video/internal/config/AudioMimeInfo;

    invoke-direct {p0, v1, v0, v2}, Landroidx/camera/video/internal/config/AudioMimeInfo;-><init>(Ljava/lang/String;ILandroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;)V

    return-object p0
.end method

.method public static final resolveAudioSettings(Landroidx/camera/video/internal/config/AudioMimeInfo;Landroidx/camera/video/AudioSpec;Landroid/util/Rational;)Landroidx/camera/video/internal/audio/AudioSettings;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioMimeInfo;->getCompatibleAudioProfile()Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Landroidx/camera/video/internal/config/AudioSettingsAudioProfileResolver;-><init>(Landroidx/camera/video/AudioSpec;Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;Landroid/util/Rational;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;

    invoke-direct {v0, p1, p2}, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;-><init>(Landroidx/camera/video/AudioSpec;Landroid/util/Rational;)V

    :goto_0
    invoke-interface {v0}, Landroidx/core/util/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/camera/video/internal/audio/AudioSettings;

    return-object p0
.end method

.method private static final selectSampleRateOrNearestSupported$lambda$0(III)I
    .locals 1

    sub-int v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int p0, p2, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr v0, p0

    if-nez v0, :cond_0

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->signum(I)I

    move-result p0

    return p0
.end method

.method private static final selectSampleRateOrNearestSupported$lambda$1(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final audioMimeToAudioProfile(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "audio/mp4a-latm"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final outputFormatToAudioMime(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "audio/vorbis"

    return-object p0

    :cond_0
    const-string p0, "audio/mp4a-latm"

    return-object p0
.end method

.method public final resolveAudioSource(Landroidx/camera/video/AudioSpec;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/video/AudioSpec;->getSource()I

    move-result p0

    const/4 p1, -0x1

    const-string v0, "AudioConfigUtil"

    if-ne p0, p1, :cond_0

    const-string p0, "Using default AUDIO source: 5"

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x5

    return p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Using provided AUDIO source: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final resolveAudioSourceFormat(Landroidx/camera/video/AudioSpec;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/camera/video/AudioSpec;->getSourceFormat()I

    move-result p0

    const/4 p1, -0x1

    const-string v0, "AudioConfigUtil"

    if-ne p0, p1, :cond_0

    const-string p0, "Using default AUDIO source format: 2"

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Using provided AUDIO source format: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final resolveCompatibleAudioProfile(Ljava/lang/String;Ljava/util/List;)Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;",
            ">;)",
            "Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->audioMimeToAudioProfile(Ljava/lang/String;)I

    move-result p0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    const-string v2, "audio/*"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;->getProfile()I

    move-result v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    check-cast v0, Landroidx/camera/core/impl/EncoderProfilesProxy$AudioProfileProxy;

    return-object v0
.end method

.method public final resolveSampleRates$camera_video(IIILandroid/util/Rational;)Landroidx/camera/video/internal/config/CaptureEncodeRates;
    .locals 4

    if-nez p4, :cond_0

    invoke-virtual {p0, p2, p3, p1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->selectSampleRateOrNearestSupported(III)I

    move-result p0

    move v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p4}, Landroidx/camera/video/internal/config/CaptureEncodeRatesKt;->toCaptureRate(ILandroid/util/Rational;)I

    move-result v0

    invoke-virtual {p0, p2, p3, v0}, Landroidx/camera/video/internal/config/AudioConfigUtil;->selectSampleRateOrNearestSupported(III)I

    move-result p0

    invoke-static {p0, p4}, Landroidx/camera/video/internal/config/CaptureEncodeRatesKt;->toEncodeRate(ILandroid/util/Rational;)I

    move-result v0

    :goto_0
    const-string v1, "Hz/"

    const-string v2, "Hz, [target sample rate: "

    const-string v3, "Resolved capture/encode sample rate "

    invoke-static {p0, v0, v3, v1, v2}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel count: "

    const-string v3, ", source format: "

    invoke-static {v1, p1, v2, p2, v3}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", capture to encode sample rate ratio: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioConfigUtil"

    invoke-static {p2, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroidx/camera/video/internal/config/CaptureEncodeRates;

    invoke-direct {p1, p0, v0}, Landroidx/camera/video/internal/config/CaptureEncodeRates;-><init>(II)V

    return-object p1
.end method

.method public final scaleBitrate(IIIII)I
    .locals 5

    new-instance p0, Landroid/util/Rational;

    invoke-direct {p0, p2, p3}, Landroid/util/Rational;-><init>(II)V

    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, p4, p5}, Landroid/util/Rational;-><init>(II)V

    int-to-double v1, p1

    invoke-virtual {p0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int p0, v0

    const-string v0, "AudioConfigUtil"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Base Bitrate("

    const-string v2, "bps) * Channel Count Ratio("

    const-string v3, " / "

    invoke-static {p1, p2, v1, v2, v3}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") * Sample Rate Ratio("

    invoke-static {p1, p3, p2, p4, v3}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {v0, p1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final selectSampleRateOrNearestSupported(III)I
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p3

    :goto_0
    invoke-static {v1, p1, p2}, Landroidx/camera/video/internal/audio/AudioSource;->isSettingsSupported(III)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string v2, " Hz is not supported by audio source with channel count "

    const-string v3, " and source format "

    const-string v4, "Sample rate "

    invoke-static {v1, p1, v4, v2, v3}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioConfigUtil"

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Trying common sample rates in proximity order to target "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Hz"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/camera/video/internal/audio/AudioSettings;->COMMON_SAMPLE_RATES:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lst;

    invoke-direct {v1, p3}, Lst;-><init>(I)V

    new-instance v3, Ltt;

    invoke-direct {v3, v1}, Ltt;-><init>(Lst;)V

    invoke-static {v3, p0}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0

    :cond_2
    const-string p0, "No sample rate found or supported by audio source. Falling back to default sample rate of 44100 Hz"

    invoke-static {v2, p0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xac44

    return p0
.end method
