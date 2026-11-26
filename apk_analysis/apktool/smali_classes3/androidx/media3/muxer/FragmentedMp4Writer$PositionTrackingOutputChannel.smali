.class Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/FragmentedMp4Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionTrackingOutputChannel"
.end annotation


# instance fields
.field private final outputChannel:Ljava/nio/channels/WritableByteChannel;

.field private position:J


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    return-wide v0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result p0

    return p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->outputChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    iget-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/muxer/FragmentedMp4Writer$PositionTrackingOutputChannel;->position:J

    return p1
.end method
