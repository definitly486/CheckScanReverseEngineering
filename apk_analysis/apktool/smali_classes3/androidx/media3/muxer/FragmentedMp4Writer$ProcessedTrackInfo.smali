.class Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/FragmentedMp4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessedTrackInfo"
.end annotation


# instance fields
.field public final hasBFrame:Z

.field public final pendingSamplesByteBuffer:Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final pendingSamplesMetadata:Lcom/google/common/collect/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j<",
            "Landroidx/media3/muxer/FragmentedMp4Writer$SampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final totalSamplesSize:I

.field public final trackFormat:Landroidx/media3/common/Format;

.field public final trackId:I


# direct methods
.method public constructor <init>(ILandroidx/media3/common/Format;IZLcom/google/common/collect/j;Lcom/google/common/collect/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "IZ",
            "Lcom/google/common/collect/j<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/google/common/collect/j<",
            "Landroidx/media3/muxer/FragmentedMp4Writer$SampleMetadata;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->trackId:I

    iput-object p2, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->trackFormat:Landroidx/media3/common/Format;

    iput p3, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->totalSamplesSize:I

    iput-boolean p4, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->hasBFrame:Z

    iput-object p5, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->pendingSamplesByteBuffer:Lcom/google/common/collect/j;

    iput-object p6, p0, Landroidx/media3/muxer/FragmentedMp4Writer$ProcessedTrackInfo;->pendingSamplesMetadata:Lcom/google/common/collect/j;

    return-void
.end method
