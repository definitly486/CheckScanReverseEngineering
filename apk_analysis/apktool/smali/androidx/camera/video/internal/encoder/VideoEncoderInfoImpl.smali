.class public final Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;
.super Landroidx/camera/video/internal/encoder/EncoderInfoImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/internal/encoder/VideoEncoderInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

.field public static final FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

.field private static final TAG:Ljava/lang/String; = "VideoEncoderInfoImpl"


# instance fields
.field private final videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    new-instance v0, Lmd9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER:Landroidx/camera/video/internal/encoder/VideoEncoderInfo$Finder;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroidx/camera/video/internal/encoder/EncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/camera/video/internal/encoder/EncoderInfoImpl;->getCodecCapabilities()Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    return-void
.end method

.method private static final FINDER$lambda$0(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;

    invoke-static {p0}, Landroidx/camera/video/internal/utils/CodecUtil;->findCodecAndGetCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;-><init>(Landroid/media/MediaCodecInfo;Ljava/lang/String;)V

    sget-object p0, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper;->Companion:Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;

    invoke-virtual {p0, v1, v0}, Landroidx/camera/video/internal/workaround/VideoEncoderInfoWrapper$Companion;->from(Landroidx/camera/video/internal/encoder/VideoEncoderInfo;Landroid/util/Size;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0
    :try_end_0
    .catch Landroidx/camera/video/internal/encoder/InvalidConfigException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "VideoEncoderInfoImpl"

    const-string v2, "Unable to find a VideoEncoderInfoImpl"

    invoke-static {v1, v2, p0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;
    .locals 0

    invoke-static {p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->FINDER$lambda$0(Ljava/lang/String;)Landroidx/camera/video/internal/encoder/VideoEncoderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canSwapWidthHeight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getHeightAlignment()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    return p0
.end method

.method public getSupportedBitrateRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    invoke-static {p1, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;->access$toIllegalArgumentException(Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidthsFor(I)Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->Companion:Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;

    invoke-static {p1, p0}, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;->access$toIllegalArgumentException(Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl$Companion;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public getWidthAlignment()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result p0

    return p0
.end method

.method public isSizeSupported(II)Z
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/VideoEncoderInfoImpl;->videoCapabilities:Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method
