.class public final Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Supplier<",
        "Landroidx/camera/video/internal/encoder/AudioEncoderConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUDIO_BITRATE_BASE:I = 0x26160

.field private static final AUDIO_CHANNEL_COUNT_BASE:I = 0x2

.field private static final AUDIO_SAMPLE_RATE_BASE:I = 0xbb80

.field public static final Companion:Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver$Companion;

.field private static final TAG:Ljava/lang/String; = "AudioEncCfgDefaultRslvr"


# instance fields
.field private final audioProfile:I

.field private final audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

.field private final audioSpec:Landroidx/camera/video/AudioSpec;

.field private final inputTimeBase:Landroidx/camera/core/impl/Timebase;

.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->Companion:Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroidx/camera/core/impl/Timebase;Landroidx/camera/video/AudioSpec;Landroidx/camera/video/internal/audio/AudioSettings;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mimeType:Ljava/lang/String;

    iput p2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioProfile:I

    iput-object p3, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->inputTimeBase:Landroidx/camera/core/impl/Timebase;

    iput-object p4, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    iput-object p5, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    return-void
.end method


# virtual methods
.method public get()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 8

    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSpec:Landroidx/camera/video/AudioSpec;

    invoke-virtual {v0}, Landroidx/camera/video/AudioSpec;->getBitrate()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "AudioEncCfgDefaultRslvr"

    const-string v1, "Using fallback AUDIO bitrate"

    invoke-static {v0, v1}, Landroidx/camera/core/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroidx/camera/video/internal/config/AudioConfigUtil;->INSTANCE:Landroidx/camera/video/internal/config/AudioConfigUtil;

    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    move-result v4

    iget-object v0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    invoke-virtual {v0}, Landroidx/camera/video/internal/audio/AudioSettings;->getEncodeSampleRate()I

    move-result v6

    const v7, 0xbb80

    const v3, 0x26160

    const/4 v5, 0x2

    invoke-virtual/range {v2 .. v7}, Landroidx/camera/video/internal/config/AudioConfigUtil;->scaleBitrate(IIIII)I

    move-result v0

    :goto_0
    invoke-static {}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->builder()Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioProfile:I

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setProfile(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->inputTimeBase:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    invoke-virtual {v2}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setChannelCount(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    invoke-virtual {v2}, Landroidx/camera/video/internal/audio/AudioSettings;->getCaptureSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setCaptureSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    iget-object p0, p0, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->audioSettings:Landroidx/camera/video/internal/audio/AudioSettings;

    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getEncodeSampleRate()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setEncodeSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->setBitrate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->build()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroidx/camera/video/internal/config/AudioEncoderConfigDefaultResolver;->get()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    move-result-object p0

    return-object p0
.end method
