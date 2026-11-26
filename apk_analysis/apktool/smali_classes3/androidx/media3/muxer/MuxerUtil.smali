.class public final Landroidx/media3/muxer/MuxerUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP0_MARKER:S = -0x20s

.field private static final APP1_MARKER:S = -0x1fs

.field private static final EOI_MARKER:S = -0x27s

.field private static final JPEG_XMP_IDENTIFIER:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final SEGMENT_MARKER_LENGTH:I = 0x2

.field private static final SEGMENT_SIZE_LENGTH:I = 0x2

.field private static final SOI_MARKER:S = -0x28s

.field private static final SOS_MARKER:S = -0x26s

.field public static final UNSIGNED_INT_MAX_VALUE:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMotionPhotoFromJpegImageAndBmffVideo(Ljava/io/FileInputStream;JLjava/io/FileInputStream;Ljava/lang/String;Ljava/nio/channels/WritableByteChannel;)V
    .locals 13

    move-object/from16 v6, p4

    const-string v0, "video/mp4"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "video/quicktime"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Only MP4 and QUICKTIME container mime types supported"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-object v8, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v9, 0x0

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    const-string v3, "image/jpeg"

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-wide v1, p1

    move-object/from16 v7, p5

    invoke-static/range {v0 .. v7}, Landroidx/media3/muxer/MuxerUtil;->writeImageDataToOutput(Ljava/nio/ByteBuffer;JLjava/lang/String;JLjava/lang/String;Ljava/nio/channels/WritableByteChannel;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    return-void
.end method

.method private static findIndexForNewApp1Segment(Ljava/nio/ByteBuffer;)I
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SOI marker not found"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/16 v3, -0x26

    if-eq v1, v3, :cond_4

    const/16 v3, -0x27

    if-ne v1, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    sub-int/2addr v3, v2

    const/16 v2, -0x20

    if-eq v1, v2, :cond_2

    const/16 v2, -0x1f

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return v0
.end method

.method private static generateMotionPhotoXmp(JLjava/lang/String;Ljava/lang/String;J)[B
    .locals 2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"Adobe XMP Core 5.1.0-jc003\">\n  <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n    <rdf:Description rdf:about=\"\"\n        xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\"\n        xmlns:Container=\"http://ns.google.com/photos/1.0/container/\"\n        xmlns:Item=\"http://ns.google.com/photos/1.0/container/item/\"\n      GCamera:MotionPhoto=\"1\"\n      GCamera:MotionPhotoVersion=\"1\"\n      GCamera:MotionPhotoPresentationTimestampUs=\""

    const-string v1, "\">\n        <Container:Directory>\n          <rdf:Seq>\n            <rdf:li rdf:parseType=\"Resource\">\n              <Container:Item\n                Item:Mime=\""

    invoke-static {p0, p1, v0, v1, p2}, Lah;->d(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\"\n                Item:Semantic=\"Primary\"\n                Item:Length=\"0\"\n                Item:Padding=\"0\"/>\n            </rdf:li>\n            <rdf:li rdf:parseType=\"Resource\">\n              <Container:Item\n                Item:Mime=\""

    const-string p2, "\"\n                Item:Semantic=\"MotionPhoto\"\n                Item:Length=\""

    invoke-static {p0, p1, p3, p2}, Ln1;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\"\n                Item:Padding=\"0\"/>\n            </rdf:li>\n          </rdf:Seq>\n        </Container:Directory>\n      </rdf:Description>\n    </rdf:RDF>\n  </x:xmpmeta>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getApp1SegmentWithMotionPhotoXmpDate([B)Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x1f

    array-length v1, p0

    add-int/2addr v0, v1

    int-to-short v0, v0

    add-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x1f

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-string v0, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-static {v0}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1
.end method

.method public static getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 6

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x7

    :goto_0
    if-ltz v3, :cond_0

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-long/2addr p0, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e

    const-string p1, "auxiliary.tracks.length"

    invoke-direct {v0, p1, v2, p0}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private static getAuxiliaryTracksMapMetadata(Ljava/util/List;)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)",
            "Landroidx/media3/container/MdtaMetadataEntry;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    int-to-byte v4, v0

    aput-byte v4, v1, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/muxer/Track;

    iget-object v6, v5, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget v6, v6, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    if-eq v6, v3, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    iget-object p0, v5, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget p0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const-string v0, "Unsupported auxiliary track type "

    invoke-static {p0, v0}, Ljn;->f(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :cond_3
    :goto_1
    add-int/lit8 v5, v4, 0x2

    int-to-byte v6, v7

    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Landroidx/media3/container/MdtaMetadataEntry;

    const-string v0, "auxiliary.tracks.map"

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object p0
.end method

.method public static getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 6

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x7

    :goto_0
    if-ltz v3, :cond_0

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    shr-long/2addr p0, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e

    const-string p1, "auxiliary.tracks.offset"

    invoke-direct {v0, p1, v2, p0}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private static getAuxiliaryTracksSamplesLocationMetadata(Z)Landroidx/media3/container/MdtaMetadataEntry;
    .locals 3

    new-instance v0, Landroidx/media3/container/MdtaMetadataEntry;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p0, v1, v2

    const/16 p0, 0x4b

    const-string v2, "auxiliary.tracks.interleaved"

    invoke-direct {v0, v2, v1, p0}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method public static getMuxerBufferInfoFromMediaCodecBufferInfo(Landroid/media/MediaCodec$BufferInfo;)Landroidx/media3/muxer/BufferInfo;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/muxer/BufferInfo;

    iget-wide v1, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget p0, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getBufferFlagsFromMediaCodecFlags(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/muxer/BufferInfo;-><init>(JII)V

    return-object v0
.end method

.method public static isAuxiliaryTrack(Landroidx/media3/common/Format;)Z
    .locals 2

    iget v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-lez v0, :cond_1

    iget p0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isMdtaMetadataEntrySupported(Landroidx/media3/container/MdtaMetadataEntry;)Z
    .locals 2

    iget p0, p0, Landroidx/media3/container/MdtaMetadataEntry;->typeIndicator:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v1, 0x17

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z
    .locals 1

    instance-of v0, p0, Landroidx/media3/container/Mp4OrientationData;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/media3/container/Mp4LocationData;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroidx/media3/container/Mp4TimestampData;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroidx/media3/container/Mp4TimestampData;

    invoke-static {v0}, Landroidx/media3/muxer/MuxerUtil;->isMp4TimestampDataSupported(Landroidx/media3/container/Mp4TimestampData;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    instance-of v0, p0, Landroidx/media3/container/MdtaMetadataEntry;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-static {v0}, Landroidx/media3/muxer/MuxerUtil;->isMdtaMetadataEntrySupported(Landroidx/media3/container/MdtaMetadataEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    instance-of p0, p0, Landroidx/media3/container/XmpData;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isMp4TimestampDataSupported(Landroidx/media3/container/Mp4TimestampData;)Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->creationTimestampSeconds:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/container/Mp4TimestampData;->modificationTimestampSeconds:J

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/muxer/MetadataCollector;",
            "Landroidx/media3/container/Mp4TimestampData;",
            "Z",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    invoke-static {p2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksSamplesLocationMetadata(Z)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    invoke-static {p3}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksMapMetadata(Ljava/util/List;)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method private static writeImageDataToOutput(Ljava/nio/ByteBuffer;JLjava/lang/String;JLjava/lang/String;Ljava/nio/channels/WritableByteChannel;)V
    .locals 5

    invoke-static {p0}, Landroidx/media3/muxer/MuxerUtil;->findIndexForNewApp1Segment(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-interface {p7, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-wide v3, p4

    move-object p4, p6

    move-wide p5, v3

    invoke-static/range {p1 .. p6}, Landroidx/media3/muxer/MuxerUtil;->generateMotionPhotoXmp(JLjava/lang/String;Ljava/lang/String;J)[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->getApp1SegmentWithMotionPhotoXmpDate([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {p7, p0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method
