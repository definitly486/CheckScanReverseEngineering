.class public final Landroidx/camera/video/MediaSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/MediaSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/video/MediaSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final builder()Landroidx/camera/video/MediaSpec$Builder;
    .locals 0

    new-instance p0, Landroidx/camera/video/MediaSpec$Builder;

    invoke-direct {p0}, Landroidx/camera/video/MediaSpec$Builder;-><init>()V

    return-object p0
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

.method public final outputFormatToAudioProfile(I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/camera/video/MediaSpec$Companion;->outputFormatToAudioMime(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "audio/mp4a-latm"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final outputFormatToMuxerFormat(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final outputFormatToVideoMime(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    :cond_0
    const-string p0, "video/avc"

    return-object p0
.end method
