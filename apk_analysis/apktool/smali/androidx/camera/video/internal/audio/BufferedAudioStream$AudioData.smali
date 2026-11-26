.class Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/video/internal/audio/BufferedAudioStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioData"
.end annotation


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mBytesPerFrame:I

.field private final mSampleRate:I

.field private mTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput p3, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mBytesPerFrame:I

    iput p4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mSampleRate:I

    iput-object p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getTimestampNs()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Byte buffer size is not match with packet info: "

    const-string p3, " != "

    invoke-static {v0, p1, p3}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->getSizeInBytes()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRemainingBufferSizeInBytes()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    return p0
.end method

.method public read(Ljava/nio/ByteBuffer;)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;
    .locals 9

    iget-wide v0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    iget-object v2, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget-object v4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v5, v4

    iget v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mBytesPerFrame:I

    invoke-static {v5, v6, v7}, Landroidx/camera/video/internal/audio/AudioUtils;->sizeToFrameCount(JI)J

    move-result-wide v5

    iget v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mSampleRate:I

    invoke-static {v5, v6, v7}, Landroidx/camera/video/internal/audio/AudioUtils;->frameCountToDurationNs(JI)J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mTimestampNs:J

    iget-object v5, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    add-int v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int v5, v3, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    iget-object v5, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    add-int v5, v3, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    iget-object p0, p0, Landroidx/camera/video/internal/audio/BufferedAudioStream$AudioData;->mByteBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v4, v0, v1}, Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;->of(IJ)Landroidx/camera/video/internal/audio/AudioStream$PacketInfo;

    move-result-object p0

    return-object p0
.end method
