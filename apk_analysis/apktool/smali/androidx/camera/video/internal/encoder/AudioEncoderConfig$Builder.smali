.class public abstract Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract autoBuild()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
.end method

.method public build()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;->autoBuild()Landroidx/camera/video/internal/encoder/AudioEncoderConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mp4a-latm"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/AudioEncoderConfig;->getProfile()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Encoder mime set to AAC, but no AAC profile was provided."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public abstract setBitrate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method

.method public abstract setCaptureSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method

.method public abstract setChannelCount(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method

.method public abstract setEncodeSampleRate(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method

.method public abstract setInputTimebase(Landroidx/camera/core/impl/Timebase;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method

.method public abstract setMimeType(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method

.method public abstract setProfile(I)Landroidx/camera/video/internal/encoder/AudioEncoderConfig$Builder;
.end method
