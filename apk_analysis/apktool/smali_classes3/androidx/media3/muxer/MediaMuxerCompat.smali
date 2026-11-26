.class public final Landroidx/media3/muxer/MediaMuxerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/MediaMuxerCompat$OutputFormat;
    }
.end annotation


# static fields
.field public static final OUTPUT_FORMAT_MP4:I


# instance fields
.field private closedMuxer:Z

.field private final fileDescriptor:Ljava/io/FileDescriptor;

.field private final muxer:Landroidx/media3/muxer/Muxer;

.field private startedMuxer:Z


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/MediaMuxerCompat;->fileDescriptor:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p2}, Landroidx/media3/muxer/MediaMuxerCompat;->createMuxer(Ljava/io/FileOutputStream;I)Landroidx/media3/muxer/Muxer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create a copy of FileDescriptor"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->fileDescriptor:Ljava/io/FileDescriptor;

    .line 32
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroidx/media3/muxer/MediaMuxerCompat;->createMuxer(Ljava/io/FileOutputStream;I)Landroidx/media3/muxer/Muxer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    return-void
.end method

.method private closeMuxer()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v0}, Landroidx/media3/muxer/Muxer;->close()V

    iget-object v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->fileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->closedMuxer:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z
    :try_end_0
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static createMuxer(Ljava/io/FileOutputStream;I)Landroidx/media3/muxer/Muxer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lo8;->e(Z)V

    new-instance p1, Landroidx/media3/muxer/Mp4Muxer$Builder;

    invoke-static {p0}, Landroidx/media3/muxer/SeekableMuxerOutput;->of(Ljava/io/FileOutputStream;)Landroidx/media3/muxer/SeekableMuxerOutput;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/muxer/Mp4Muxer$Builder;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;)V

    invoke-virtual {p1}, Landroidx/media3/muxer/Mp4Muxer$Builder;->build()Landroidx/media3/muxer/Mp4Muxer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo8;->r(Z)V

    :try_start_0
    const-string v0, "capture-rate"

    const v1, -0x800001

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/MediaFormatUtil;->getFloatFromIntOrFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/container/MdtaMetadataEntry;

    const-string v2, "com.android.capture.fps"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->toByteArray(F)[B

    move-result-object v0

    const/16 v3, 0x17

    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    iget-object v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-interface {v0, v1}, Landroidx/media3/muxer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-static {p1}, Landroidx/media3/common/util/MediaFormatUtil;->createFormatFromMediaFormat(Landroid/media/MediaFormat;)Landroidx/media3/common/Format;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/media3/muxer/Muxer;->addTrack(Landroidx/media3/common/Format;)I

    move-result p0
    :try_end_0
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->closedMuxer:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/muxer/MediaMuxerCompat;->closeMuxer()V

    :cond_0
    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo8;->r(Z)V

    iget-object p0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    new-instance v0, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v0, p1, p2}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    invoke-interface {p0, v0}, Landroidx/media3/muxer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public setOrientationHint(I)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo8;->r(Z)V

    iget-object p0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    new-instance v0, Landroidx/media3/container/Mp4OrientationData;

    invoke-direct {v0, p1}, Landroidx/media3/container/Mp4OrientationData;-><init>(I)V

    invoke-interface {p0, v0}, Landroidx/media3/muxer/Muxer;->addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo8;->r(Z)V

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->closedMuxer:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo8;->r(Z)V

    iput-boolean v1, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    invoke-static {v0}, Lo8;->r(Z)V

    invoke-direct {p0}, Landroidx/media3/muxer/MediaMuxerCompat;->closeMuxer()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->startedMuxer:Z

    invoke-static {v0}, Lo8;->r(Z)V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/muxer/MediaMuxerCompat;->muxer:Landroidx/media3/muxer/Muxer;

    invoke-static {p3}, Landroidx/media3/muxer/MuxerUtil;->getMuxerBufferInfoFromMediaCodecBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroidx/media3/muxer/BufferInfo;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/muxer/Muxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    :try_end_0
    .catch Landroidx/media3/muxer/MuxerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void
.end method
