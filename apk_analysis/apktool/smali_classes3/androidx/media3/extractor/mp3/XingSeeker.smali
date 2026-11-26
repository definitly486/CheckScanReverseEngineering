.class final Landroidx/media3/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# static fields
.field private static final TAG:Ljava/lang/String; = "XingSeeker"


# instance fields
.field private final bitrate:I

.field private final dataEndPosition:J

.field private final dataSize:J

.field private final dataStartPosition:J

.field private final durationUs:J

.field private final tableOfContents:[J

.field private final xingFrameSize:I


# direct methods
.method private constructor <init>(JIJIJ[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iput p3, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    iput-wide p4, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    iput p6, p0, Landroidx/media3/extractor/mp3/XingSeeker;->bitrate:I

    iput-wide p7, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    iput-object p9, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    const-wide/16 p3, -0x1

    cmp-long p5, p7, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p7

    :goto_0
    iput-wide p3, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-void
.end method

.method public static create(Landroidx/media3/extractor/mp3/XingFrame;J)Landroidx/media3/extractor/mp3/XingSeeker;
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/XingFrame;->computeDurationUs()J

    move-result-wide v4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/extractor/mp3/XingSeeker;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/XingFrame;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v3, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iget v6, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iget-wide v7, p0, Landroidx/media3/extractor/mp3/XingFrame;->dataSize:J

    iget-object v9, p0, Landroidx/media3/extractor/mp3/XingFrame;->tableOfContents:[J

    move-wide v1, p1

    invoke-direct/range {v0 .. v9}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJIJ[J)V

    return-object v0
.end method

.method private getTimeUsForTableIndex(I)J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x64

    div-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public getAverageBitrate()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->bitrate:I

    return p0
.end method

.method public getDataEndPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataEndPosition:J

    return-wide v0
.end method

.method public getDataStartPosition()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget p0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    iget v0, v0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v1, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v1

    :cond_0
    const-wide/16 v9, 0x0

    iget-wide v11, v0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    move-wide/from16 v7, p1

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    long-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    iget-wide v7, v0, Landroidx/media3/extractor/mp3/XingSeeker;->durationUs:J

    long-to-double v7, v7

    div-double/2addr v3, v7

    const-wide/16 v7, 0x0

    cmpg-double v9, v3, v7

    const-wide/high16 v10, 0x4070000000000000L    # 256.0

    if-gtz v9, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v5, v3, v5

    if-ltz v5, :cond_2

    move-wide v7, v10

    goto :goto_1

    :cond_2
    double-to-int v5, v3

    iget-object v6, v0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v7, v6, v5

    long-to-double v14, v7

    const/16 v7, 0x63

    if-ne v5, v7, :cond_3

    move-wide v12, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v5, 0x1

    aget-wide v7, v6, v7

    long-to-double v6, v7

    move-wide v12, v6

    :goto_0
    int-to-double v5, v5

    sub-double v16, v3, v5

    move-wide/from16 v18, v14

    invoke-static/range {v12 .. v19}, Ldh;->b(DDDD)D

    move-result-wide v7

    :goto_1
    div-double/2addr v7, v10

    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v3, v3

    mul-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    iget v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v11, v3

    iget-wide v3, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    const-wide/16 v5, 0x1

    sub-long v13, v3, v5

    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    new-instance v5, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v6, Landroidx/media3/extractor/SeekPoint;

    iget-wide v7, v0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    add-long/2addr v7, v3

    invoke-direct {v6, v1, v2, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v5, v6}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object v5
.end method

.method public getTimeUs(J)J
    .locals 11

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataStartPosition:J

    sub-long/2addr p1, v0

    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->xingFrameSize:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double/2addr p1, v1

    iget-wide v1, p0, Landroidx/media3/extractor/mp3/XingSeeker;->dataSize:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Landroidx/media3/common/util/Util;->binarySearchFloor([JJZZ)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/media3/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v2

    aget-wide v4, v0, v1

    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6}, Landroidx/media3/extractor/mp3/XingSeeker;->getTimeUsForTableIndex(I)J

    move-result-wide v7

    const/16 p0, 0x63

    if-ne v1, p0, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    :cond_1
    aget-wide v9, v0, v6

    move-wide v0, v9

    :goto_0
    cmp-long p0, v4, v0

    if-nez p0, :cond_2

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_2
    long-to-double v9, v4

    sub-double/2addr p1, v9

    sub-long/2addr v0, v4

    long-to-double v0, v0

    div-double p0, p1, v0

    :goto_1
    sub-long/2addr v7, v2

    long-to-double v0, v7

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p0, v2

    return-wide p0

    :cond_3
    :goto_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public isSeekable()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
