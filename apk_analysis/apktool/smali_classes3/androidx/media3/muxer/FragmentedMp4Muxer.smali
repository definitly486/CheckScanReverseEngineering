.class public final Landroidx/media3/muxer/FragmentedMp4Muxer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/muxer/Muxer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/muxer/FragmentedMp4Muxer$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FRAGMENT_DURATION_MS:J = 0x7d0L

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


# instance fields
.field private final fragmentedMp4Writer:Landroidx/media3/muxer/FragmentedMp4Writer;

.field private final metadataCollector:Landroidx/media3/muxer/MetadataCollector;

.field private final trackIdToTrack:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
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

    sput-object v0, Landroidx/media3/muxer/FragmentedMp4Muxer;->SUPPORTED_VIDEO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/j;

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

    sput-object v0, Landroidx/media3/muxer/FragmentedMp4Muxer;->SUPPORTED_AUDIO_SAMPLE_MIME_TYPES:Lcom/google/common/collect/j;

    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/WritableByteChannel;JZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroidx/media3/muxer/MetadataCollector;

    invoke-direct {v2}, Landroidx/media3/muxer/MetadataCollector;-><init>()V

    iput-object v2, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    new-instance v0, Landroidx/media3/muxer/FragmentedMp4Writer;

    sget-object v3, Landroidx/media3/muxer/AnnexBToAvccConverter;->DEFAULT:Landroidx/media3/muxer/AnnexBToAvccConverter;

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/muxer/FragmentedMp4Writer;-><init>(Ljava/nio/channels/WritableByteChannel;Landroidx/media3/muxer/MetadataCollector;Landroidx/media3/muxer/AnnexBToAvccConverter;JZ)V

    iput-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->fragmentedMp4Writer:Landroidx/media3/muxer/FragmentedMp4Writer;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->trackIdToTrack:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/channels/WritableByteChannel;JZLandroidx/media3/muxer/FragmentedMp4Muxer$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/muxer/FragmentedMp4Muxer;-><init>(Ljava/nio/channels/WritableByteChannel;JZ)V

    return-void
.end method


# virtual methods
.method public addMetadataEntry(Landroidx/media3/common/Metadata$Entry;)V
    .locals 2

    invoke-static {p1}, Landroidx/media3/muxer/MuxerUtil;->isMetadataSupported(Landroidx/media3/common/Metadata$Entry;)Z

    move-result v0

    const-string v1, "Unsupported metadata"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->metadataCollector:Landroidx/media3/muxer/MetadataCollector;

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/MetadataCollector;->addMetadata(Landroidx/media3/common/Metadata$Entry;)V

    return-void
.end method

.method public addTrack(Landroidx/media3/common/Format;)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->fragmentedMp4Writer:Landroidx/media3/muxer/FragmentedMp4Writer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroidx/media3/muxer/FragmentedMp4Writer;->addTrack(ILandroidx/media3/common/Format;)Landroidx/media3/muxer/Track;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->trackIdToTrack:Landroid/util/SparseArray;

    iget v0, p1, Landroidx/media3/muxer/Track;->id:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget p0, p1, Landroidx/media3/muxer/Track;->id:I

    return p0
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->fragmentedMp4Writer:Landroidx/media3/muxer/FragmentedMp4Writer;

    invoke-virtual {p0}, Landroidx/media3/muxer/FragmentedMp4Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Landroidx/media3/muxer/MuxerException;

    const-string v1, "Failed to close the muxer"

    invoke-direct {v0, v1, p0}, Landroidx/media3/muxer/MuxerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->fragmentedMp4Writer:Landroidx/media3/muxer/FragmentedMp4Writer;

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Muxer;->trackIdToTrack:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/muxer/Track;

    invoke-virtual {v0, p0, p2, p3}, Landroidx/media3/muxer/FragmentedMp4Writer;->writeSampleData(Landroidx/media3/muxer/Track;Ljava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;)V
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
