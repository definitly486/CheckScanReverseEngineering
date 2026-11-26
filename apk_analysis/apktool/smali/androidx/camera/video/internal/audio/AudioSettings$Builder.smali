.class public abstract Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/AudioSettings;
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
.method public abstract autoBuild()Landroidx/camera/video/internal/audio/AudioSettings;
.end method

.method public final build()Landroidx/camera/video/internal/audio/AudioSettings;
    .locals 3

    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings$Builder;->autoBuild()Landroidx/camera/video/internal/audio/AudioSettings;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getAudioSource()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, " audioSource"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getCaptureSampleRate()I

    move-result v2

    if-gtz v2, :cond_1

    const-string v2, " captureSampleRate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getEncodeSampleRate()I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, " encodeSampleRate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    move-result v2

    if-gtz v2, :cond_3

    const-string v2, " channelCount"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0}, Landroidx/camera/video/internal/audio/AudioSettings;->getAudioFormat()I

    move-result v2

    if-ne v2, v1, :cond_4

    const-string v1, " audioFormat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p0

    :cond_5
    const-string p0, "Required settings missing or non-positive:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract setAudioFormat(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract setAudioSource(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract setCaptureSampleRate(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract setChannelCount(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method

.method public abstract setEncodeSampleRate(I)Landroidx/camera/video/internal/audio/AudioSettings$Builder;
.end method
