.class public final Landroidx/media3/muxer/WebmMuxer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/WebmMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private sampleCopyEnabled:Z

.field private final seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/muxer/SeekableMuxerOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->sampleCopyEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/muxer/WebmMuxer;
    .locals 3

    new-instance v0, Landroidx/media3/muxer/WebmMuxer;

    iget-object v1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->seekableMuxerOutput:Landroidx/media3/muxer/SeekableMuxerOutput;

    iget-boolean p0, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->sampleCopyEnabled:Z

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/muxer/WebmMuxer;-><init>(Landroidx/media3/muxer/SeekableMuxerOutput;ZLandroidx/media3/muxer/WebmMuxer$1;)V

    return-object v0
.end method

.method public setSampleCopyEnabled(Z)Landroidx/media3/muxer/WebmMuxer$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/muxer/WebmMuxer$Builder;->sampleCopyEnabled:Z

    return-object p0
.end method
