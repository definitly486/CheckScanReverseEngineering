.class public final Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Supplier<",
        "Landroidx/camera/video/internal/audio/AudioSettings;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver$Companion;

.field private static final TAG:Ljava/lang/String; = "DefAudioResolver"


# instance fields
.field private final audioSpec:Landroidx/camera/video/AudioSpec;

.field private final captureToEncodeRatio:Landroid/util/Rational;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->Companion:Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/video/AudioSpec;Landroid/util/Rational;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    iput-object p2, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->captureToEncodeRatio:Landroid/util/Rational;

    return-void
.end method


# virtual methods
.method public get()Landroidx/camera/video/internal/audio/AudioSettings;
    .locals 7

    sget-object v0, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    iget-object v1, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioSource(Landroidx/camera/video/AudioSpec;)I

    move-result v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0, v2}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveAudioSourceFormat(Landroidx/camera/video/AudioSpec;)I

    move-result v2

    iget-object v3, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v3}, Landroidx/camera/video/AudioSpec;->getChannelCount()I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "DefAudioResolver"

    if-ne v3, v4, :cond_0

    const-string v3, "Using fallback AUDIO channel count: 1"

    invoke-static {v5, v3}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Using supplied AUDIO channel count: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v4}, Landroidx/camera/video/AudioSpec;->getSampleRate()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0xac44

    :goto_1
    iget-object p0, p0, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->captureToEncodeRatio:Landroid/util/Rational;

    invoke-virtual {v0, v4, v3, v2, p0}, Landroidx/camera/video/internal/config/AudioConfigUtil;->resolveSampleRates$camera_video(IIILandroid/util/Rational;)Landroidx/camera/video/internal/config/CaptureEncodeRates;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Using AUDIO sample rate resolved from AudioSpec: Capture sample rate: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getCaptureRate()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Hz. Encode sample rate: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getEncodeRate()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Hz."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroidx/camera/video/internal/audio/AudioSettings;->builder()Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setAudioSource(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setAudioFormat(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setChannelCount(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getCaptureRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setCaptureSampleRate(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/camera/video/internal/config/CaptureEncodeRates;->getEncodeRate()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->setEncodeSampleRate(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->build()Landroidx/camera/video/internal/audio/AudioSettings;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioSettingsDefaultResolver;->get()Landroidx/camera/video/internal/audio/AudioSettings;

    move-result-object p0

    return-object p0
.end method
