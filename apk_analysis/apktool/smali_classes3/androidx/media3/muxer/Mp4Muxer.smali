.class public final Landroidx/media3/muxer/Mp4Muxer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;,
        Landroidx/media3/muxer/Mp4Muxer$Builder;,
        Landroidx/media3/muxer/Mp4Muxer$FileFormat;,
        Landroidx/media3/muxer/Mp4Muxer$LastSampleDurationBehavior;
    }
.end annotation


# static fields
.field public static final FILE_FORMAT_DEFAULT:I = 0x0

.field public static final FILE_FORMAT_MP4_WITH_AUXILIARY_TRACKS_EXTENSION:I = 0x1

.field public static final LAST_SAMPLE_DURATION_BEHAVIOR_SET_FROM_END_OF_STREAM_BUFFER_OR_DUPLICATE_PREVIOUS:I = 0x1

.field public static final LAST_SAMPLE_DURATION_BEHAVIOR_SET_TO_ZERO:I = 0x0

.field public static final SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Mp4Muxer"


# instance fields
.field private final annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

.field private final attemptStreamableOutputEnabled:Z

.field private final auxiliaryTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field

.field private auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;

.field private auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

.field private cacheFilePath:Ljava/lang/String;

.field private final cacheFileSupplier:Lkd8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkd8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

.field private final freeSpaceAfterFtypInBytes:I

.field private final lastSampleDurationBehavior:I

.field private final metadataCollector:Landroidx/media3/muxer/MetadataCollector;

.field private final mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

.field private final mp4Writer:Landroidx/media3/muxer/Mp4Writer;

.field private final muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

.field private nextTrackId:I

.field private final outputFileFormat:I

.field private final sampleBatchingEnabled:Z

.field private final sampleCopyEnabled:Z

.field private final trackIdToTrack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/muxer/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/j$b;

    const-string v1, "video/av01"

    const-string v2, "video/3gpp"

    const-string v3, "video/avc"

    const-string v4, "video/hevc"

    const-string v5, "video/mp4v-es"

    const-string v6, "video/x-vnd.on2.vp9"

    const-string v7, "video/apv"

    const-string v8, "video/dolby-vision"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Lm96;->b(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/google/common/collect/j;->k(I[Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v0

    sput-object v0, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/j;

    const-string v1, "audio/mp4a-latm"

    const-string v2, "audio/3gpp"

    const-string v3, "audio/amr-wb"

    const-string v4, "audio/opus"

    const-string v5, "audio/vorbis"

    const-string v6, "audio/raw"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lm96;->b(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/google/common/collect/j;->k(I[Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object v0

    sput-object v0, Landroidx/media3/muxer/Mp4Muxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/j;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;Lkd8;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/muxer/SeekableMuxerOutput;",
            "Lkd8<",
            "Ljava/lang/String;",
            ">;I",
            "Landroidx/media3/muxer/AnnexBToAvccConverter;",
            "ZZZI",
            "Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFileSupplier:Lkd8;

    iput p3, p0, Landroidx/media3/muxer/Mp4Muxer;->lastSampleDurationBehavior:I

    iput-object p4, p0, Landroidx/media3/muxer/Mp4Muxer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/muxer/Mp4Muxer;->sampleCopyEnabled:Z

    iput-boolean p6, p0, Landroidx/media3/muxer/Mp4Muxer;->sampleBatchingEnabled:Z

    move/from16 v7, p7

    iput-boolean v7, p0, Landroidx/media3/muxer/Mp4Muxer;->attemptStreamableOutputEnabled:Z

    move/from16 p2, p8

    iput p2, p0, Landroidx/media3/muxer/Mp4Muxer;->outputFileFormat:I

    move-object/from16 p2, p9

    iput-object p2, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    move/from16 v8, p10

    iput v8, p0, Landroidx/media3/muxer/Mp4Muxer;->freeSpaceAfterFtypInBytes:I

    new-instance v2, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v2}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    iput-object v2, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    new-instance v0, Landroidx/media3/muxer/Mp4Writer;

    move-object v1, p1

    move v4, p3

    move-object v3, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroidx/media3/muxer/Mp4Writer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;IZZZI)V

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;Lkd8;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;ILandroidx/media3/muxer/Mp4Muxer$1;)V
    .locals 0

    .line 72
    invoke-direct/range {p0 .. p10}, Landroidx/media3/muxer/Mp4Muxer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;Lkd8;ILandroidx/media3/muxer/AnnexBToAvccConverter;ZZZILandroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;I)V

    return-void
.end method

.method private appendAuxiliaryTracksDataToTheOutputFile()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/muxer/SeekableMuxerOutput;->setPosition(J)V

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-static {v5, v6}, Landroidx/media3/muxer/Boxes;->getAxteBoxHeader(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v7, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private ensureSetupForAuxiliaryTracks()V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "auxiliaryTracksMp4Writer"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFileSupplier:Lkd8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/muxer/SeekableMuxerOutput;->of(Ljava/lang/String;)Landroidx/media3/muxer/SeekableMuxerOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    new-instance v3, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v3}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    iput-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;

    new-instance v1, Landroidx/media3/muxer/Mp4Writer;

    iget-object v2, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-object v4, p0, Landroidx/media3/muxer/Mp4Muxer;->annexBToAvccConverter:Landroidx/media3/muxer/AnnexBToAvccConverter;

    iget v5, p0, Landroidx/media3/muxer/Mp4Muxer;->lastSampleDurationBehavior:I

    iget-boolean v6, p0, Landroidx/media3/muxer/Mp4Muxer;->sampleCopyEnabled:Z

    iget-boolean v7, p0, Landroidx/media3/muxer/Mp4Muxer;->sampleBatchingEnabled:Z

    iget-boolean v8, p0, Landroidx/media3/muxer/Mp4Muxer;->attemptStreamableOutputEnabled:Z

    iget v9, p0, Landroidx/media3/muxer/Mp4Muxer;->freeSpaceAfterFtypInBytes:I

    invoke-direct/range {v1 .. v9}, Landroidx/media3/muxer/Mp4Writer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;IZZZI)V

    iput-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    :cond_0
    return-void
.end method

.method private finishWritingAuxiliaryTracks()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMetadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    iget-object v1, v1, Landroidx/media3/muxer/MetadataCollector;->timestampData:Landroidx/media3/container/Mp4TimestampData;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/muxer/MuxerUtil;->populateAuxiliaryTracksMetadata(Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/container/Mp4TimestampData;ZLjava/util/List;)V

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/muxer/Mp4Writer;->finishWritingSamplesAndFinalizeMoovBox()V

    return-void
.end method

.method private finishWritingPrimaryVideoTracks()V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-static {v1, v2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksLengthMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v1, v0}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {v1}, Landroidx/media3/muxer/Mp4Writer;->finishWritingSamplesAndFinalizeMoovBox()V

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v1}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {v3, v0}, Landroidx/media3/muxer/MetadataCollector;->removeMdtaMetadataEntry(Landroidx/media3/container/MdtaMetadataEntry;)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-static {v1, v2}, Landroidx/media3/muxer/MuxerUtil;->getAuxiliaryTracksOffsetMetadata(J)Landroidx/media3/container/MdtaMetadataEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {v0}, Landroidx/media3/muxer/Mp4Writer;->finalizeMoovBox()V

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {p0}, Landroidx/media3/muxer/SeekableMuxerOutput;->getSize()J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "The auxiliary tracks offset should remain the same"

    invoke-static {p0, v0}, Lo8;->s(ZLjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z

    move-result v0

    const-string v1, "Unsupported metadata"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public addTrack(ILandroidx/media3/common/Format;)I
    .locals 3

    iget v0, p0, Landroidx/media3/muxer/Mp4Muxer;->outputFileFormat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Landroidx/media3/muxer/MuxerUtil;->isAuxiliaryTrack(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4AtFileParameters:Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Landroidx/media3/muxer/Mp4Muxer$Mp4AtFileParameters;->shouldInterleaveSamples:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    iget v1, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/muxer/Mp4Writer;->addAuxiliaryTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->ensureSetupForAuxiliaryTracks()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    iget v1, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/muxer/Mp4Writer;->addTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/media3/muxer/MuxerException;

    const-string p2, "Cache file not found"

    invoke-direct {p1, p2, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    iget v1, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/muxer/Mp4Muxer;->nextTrackId:I

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media3/muxer/Mp4Writer;->addTrack(IILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p0, p1, Landroidx/media3/muxer/Track;->id:I

    return p0
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 1

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, v0, p1}, Landroidx/media3/muxer/Mp4Muxer;->addTrack(ILandroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 4

    const-string v0, "Mp4Muxer"

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->finishWritingAuxiliaryTracks()V

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->finishWritingPrimaryVideoTracks()V

    invoke-direct {p0}, Landroidx/media3/muxer/Mp4Muxer;->appendAuxiliaryTracksDataToTheOutputFile()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroidx/media3/muxer/MuxerException;

    const-string v3, "Failed to finish writing data"

    invoke-direct {v2, v3, v1}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    :goto_0
    :try_start_1
    iget-object v2, p0, Landroidx/media3/muxer/Mp4Muxer;->muxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    invoke-interface {v2}, Ljava/nio/channels/Channel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Failed to close output stream"

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/muxer/MuxerException;

    invoke-direct {v1, v3, v2}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-static {v0, v3, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->cacheMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    if-nez v1, :cond_1

    new-instance v1, Landroidx/media3/muxer/MuxerException;

    const-string v0, "Failed to close the cache file output stream"

    invoke-direct {v1, v0, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const-string v2, "Failed to close cache file output stream"

    invoke-static {v0, v2, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    throw v1
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Track id is invalid"

    invoke-static {v0, v3}, Lo8;->f(ZLjava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v3, p3, Landroidx/media3/muxer/BufferInfo;->size:I

    if-ne v0, v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lo8;->e(Z)V

    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->trackIdToTrack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/muxer/Track;

    :try_start_0
    iget-object v0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->auxiliaryTracksMp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/Mp4Writer;->writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/media3/muxer/Mp4Muxer;->mp4Writer:Landroidx/media3/muxer/Mp4Writer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/muxer/Mp4Writer;->writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
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
