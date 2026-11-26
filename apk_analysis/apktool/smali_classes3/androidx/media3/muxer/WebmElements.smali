.class final Landroidx/media3/muxer/WebmElements;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_CHROMATICITY:I = 0xc350

.field private static final TIMESTAMP_SCALE:I = 0xf4240


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAudioTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;
    .locals 5

    const/4 v0, 0x2

    invoke-static {v0, p0, v0, p1}, Landroidx/media3/muxer/WebmElements;->getCommonTrackEntry(IIILandroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    int-to-long v1, v1

    const-wide/16 v3, 0x9f

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p1, Landroidx/media3/common/Format;->sampleRate:I

    int-to-float v1, v1

    const-wide/16 v2, 0xb5

    invoke-static {v2, v3, v1}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    int-to-float v1, v1

    const-wide/16 v2, 0x6264

    invoke-static {v2, v3, v1}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "audio/vorbis"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->getVorbisInitializationData(Landroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    const-wide/16 v1, 0xe1

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x63a2

    invoke-static {v1, v2, p1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xae

    invoke-static {v0, v1, p0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createColorElement(Landroidx/media3/common/ColorInfo;)Ljava/nio/ByteBuffer;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorSpaceToIsoColorPrimaries(I)I

    move-result v1

    const-wide/16 v2, 0x55bb

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorTransferToIsoTransferCharacteristics(I)I

    move-result v1

    const-wide/16 v2, 0x55ba

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->colorSpaceToIsoMatrixCoefficients(I)I

    move-result v1

    const-wide/16 v2, 0x55b1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroidx/media3/common/ColorInfo;->colorRange:I

    const-wide/16 v2, 0x55b9

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    const v3, 0x47435000    # 50000.0f

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d1

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d2

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d3

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d4

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d5

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d6

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v4, 0x55d7

    invoke-static {v4, v5, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const-wide/16 v3, 0x55d8

    invoke-static {v3, v4, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    const-wide/16 v3, 0x55d9

    invoke-static {v3, v4, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    int-to-float v2, v2

    const v3, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v2, v3

    const-wide/16 v3, 0x55da

    invoke-static {v3, v4, v2}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const-wide/16 v3, 0x55bc

    int-to-long v5, v2

    invoke-static {v3, v4, v5, v6}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x55bd

    int-to-long v4, p0

    invoke-static {v2, v3, v4, v5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x55d0

    invoke-static {v2, v3, v1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v1, 0x55b0

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createCuePointElement(JIJ)Ljava/nio/ByteBuffer;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0xb3

    invoke-static {v1, v2, p0, p1}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0xf7

    int-to-long p1, p2

    invoke-static {v1, v2, p1, p2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p1, 0xf1

    invoke-static {p1, p2, p3, p4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p1, 0xb7

    invoke-static {p1, p2, p0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0xbb

    invoke-static {p0, p1, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createEbmlHeaderElement()Ljava/nio/ByteBuffer;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x4286

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x42f7

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x42f2

    const-wide/16 v3, 0x4

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x42f3

    const-wide/16 v3, 0x8

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4282

    const-string v3, "webm"

    invoke-static {v1, v2, v3}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4287

    const-wide/16 v3, 0x2

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4285

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x1a45dfa3

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static createFloatElement(JF)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p2}, Landroidx/media3/common/util/Util;->toByteArray(F)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createInfoElement(F)Ljava/nio/ByteBuffer;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x4489

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createFloatElement(JF)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x2ad7b1

    const-wide/32 v3, 0xf4240

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x4d80

    const-string p0, "android"

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x5741

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0x1549a966

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createSeekHeadElement(JJJ)Ljava/nio/ByteBuffer;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v2, 0x1549a966

    const-wide/16 v4, 0x53ab

    invoke-static {v4, v5, v2, v3}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v2, 0x53ac

    invoke-static {v2, v3, p0, p1}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x4dbb

    invoke-static {p0, p1, v1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v6, 0x1654ae6b

    invoke-static {v4, v5, v6, v7}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3, p2, p3}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, v1}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-wide/32 v6, 0x1c53bb6b

    invoke-static {v4, v5, v6, v7}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2, v3, p4, p5}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 p0, 0x114d9b74

    invoke-static {p0, p1, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createSimpleBlockElement(IJZLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    int-to-long v0, p0

    invoke-static {v0, v1}, Landroidx/media3/muxer/EbmlUtils;->encodeVInt(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 v0, 0x8

    shr-long v0, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    and-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    if-eqz p3, :cond_0

    const/16 p2, 0x80

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    add-int/lit8 p3, p3, 0x3

    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 p0, 0xa3

    invoke-static {p0, p1, p3}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p2}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createTrackElements(Ljava/util/List;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/muxer/Track;

    iget-object v3, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroidx/media3/muxer/Track;->id:I

    iget-object v2, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v3, v2}, Landroidx/media3/muxer/WebmElements;->createVideoTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object p0, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "Track MimeType "

    const-string v1, " is not supported in WebM."

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v3, v2, Landroidx/media3/muxer/Track;->id:I

    iget-object v2, v2, Landroidx/media3/muxer/Track;->format:Landroidx/media3/common/Format;

    invoke-static {v3, v2}, Landroidx/media3/muxer/WebmElements;->createAudioTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v1, 0x1654ae6b

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p2, p3}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createVideoElement(Landroidx/media3/common/Format;)Ljava/nio/ByteBuffer;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroidx/media3/common/Format;->width:I

    int-to-long v1, v1

    const-wide/16 v3, 0xb0

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    int-to-long v1, v1

    const-wide/16 v3, 0xba

    invoke-static {v3, v4, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroidx/media3/muxer/WebmElements;->createColorElement(Landroidx/media3/common/ColorInfo;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v1, 0xe0

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static createVideoTrackEntryElement(ILandroidx/media3/common/Format;)Ljava/nio/ByteBuffer;
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0, p0, v0, p1}, Landroidx/media3/muxer/WebmElements;->getCommonTrackEntry(IIILandroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v1, 0x63a2

    invoke-static {v1, v2, v0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p1}, Landroidx/media3/muxer/WebmElements;->createVideoElement(Landroidx/media3/common/Format;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xae

    invoke-static {v0, v1, p0}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createVoidElement(I)Ljava/nio/ByteBuffer;
    .locals 6

    const-wide/16 v0, 0xec

    invoke-static {v0, v1}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt p0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lo8;->e(Z)V

    const/16 v2, 0x9

    if-ge p0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    sub-int v1, p0, v1

    sub-int/2addr v1, v3

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    int-to-long v4, v1

    invoke-static {v4, v5, v3}, Landroidx/media3/muxer/EbmlUtils;->encodeVIntWithWidth(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method private static getCodecId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "audio/opus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "audio/vorbis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "Unsupported mime type: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "V_VP9"

    return-object p0

    :pswitch_1
    const-string p0, "V_VP8"

    return-object p0

    :pswitch_2
    const-string p0, "A_OPUS"

    return-object p0

    :pswitch_3
    const-string p0, "A_VORBIS"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bd43e14 -> :sswitch_3
        0x59b2d2d8 -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getCommonTrackEntry(IIILandroidx/media3/common/Format;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0xd7

    int-to-long v3, p0

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v1, 0x73c5

    int-to-long p0, p1

    invoke-static {v1, v2, p0, p1}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x9c

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p3, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v1, 0x22b59c

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/media3/muxer/WebmElements;->getCodecId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x86

    invoke-static {v1, v2, p0}, Landroidx/media3/muxer/WebmElements;->createStringElement(JLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 p0, 0x83

    int-to-long p2, p2

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/muxer/WebmElements;->createUnsignedIntElement(JJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x47

    div-int/2addr v0, v1

    :goto_0
    new-array v3, v0, [B

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_1

    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    ushr-long/2addr p0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static wrapIntoElement(JLjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 76
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroidx/media3/muxer/WebmElements;->wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static wrapIntoElement(JLjava/util/List;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/muxer/WebmElements;->uintToMinimumLengthByteBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroidx/media3/muxer/EbmlUtils;->encodeVInt(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
