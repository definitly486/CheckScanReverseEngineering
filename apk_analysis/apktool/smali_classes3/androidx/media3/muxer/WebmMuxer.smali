.class public final Landroidx/media3/muxer/WebmMuxer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/WebmMuxer$Builder;
    }
.end annotation


# instance fields
.field private nextTrackId:I

.field private final seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

.field private final trackIdToTrack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field

.field private final writer:Landroidx/media3/muxer/WebmWriter;


# direct methods
.method private constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/WebmMuxer;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/muxer/WebmMuxer;->trackIdToTrack:Ljava/util/List;

    new-instance v0, Landroidx/media3/muxer/WebmWriter;

    invoke-direct {v0, p1, p2}, Landroidx/media3/muxer/WebmWriter;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;Z)V

    iput-object v0, p0, Landroidx/media3/muxer/WebmMuxer;->writer:Landroidx/media3/muxer/WebmWriter;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;ZLandroidx/media3/muxer/WebmMuxer$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/media3/muxer/WebmMuxer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;Z)V

    return-void
.end method

.method private isMimeTypeSupported(Landroidx/media3/common/Format;)Z
    .locals 1

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "video/x-vnd.on2.vp9"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "video/x-vnd.on2.vp8"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/opus"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p1, "audio/vorbis"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 3

    invoke-direct {p0, p1}, Landroidx/media3/muxer/WebmMuxer;->isMimeTypeSupported(Landroidx/media3/common/Format;)Z

    move-result v0

    invoke-static {v0}, Lo8;->e(Z)V

    iget-object v0, p0, Landroidx/media3/muxer/WebmMuxer;->writer:Landroidx/media3/muxer/WebmWriter;

    iget v1, p0, Landroidx/media3/muxer/WebmMuxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/WebmMuxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1}, Landroidx/media3/muxer/WebmWriter;->addTrack(ILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/muxer/WebmMuxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, p1, Landroidx/media3/muxer/Track;->id:I

    return p0
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/media3/muxer/WebmMuxer;->writer:Landroidx/media3/muxer/WebmWriter;

    invoke-virtual {v0}, Landroidx/media3/muxer/WebmWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p0, p0, Landroidx/media3/muxer/WebmMuxer;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/muxer/MuxerException;

    const-string v1, "Failed to close the output."

    invoke-direct {v0, v1, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Landroidx/media3/muxer/MuxerException;

    const-string v1, "Failed to close the writer."

    invoke-direct {v0, v1, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/muxer/WebmMuxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/muxer/Track;

    :try_start_0
    iget-object p0, p0, Landroidx/media3/muxer/WebmMuxer;->writer:Landroidx/media3/muxer/WebmWriter;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/WebmWriter;->writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/muxer/MuxerException;

    iget-wide v0, p3, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iget p2, p3, Landroidx/media3/muxer/BufferInfo;->size:I

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write sample for presentationTimeUs="

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
