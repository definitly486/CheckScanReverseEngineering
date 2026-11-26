.class final Landroidx/media3/muxer/WebmWriter$WebmFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/muxer/WebmWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebmFrame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/muxer/WebmWriter$WebmFrame;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferInfo:Landroidx/media3/muxer/BufferInfo;

.field private final data:Ljava/nio/ByteBuffer;

.field private final isAudioFrame:Ljava/lang/Boolean;

.field private final trackNumber:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;Landroidx/media3/muxer/BufferInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->trackNumber:I

    iput-object p2, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->data:Ljava/nio/ByteBuffer;

    iput-object p3, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->bufferInfo:Landroidx/media3/muxer/BufferInfo;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->isAudioFrame:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$000(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->isAudioFrame:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic access$100(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Landroidx/media3/muxer/BufferInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->bufferInfo:Landroidx/media3/muxer/BufferInfo;

    return-object p0
.end method

.method public static synthetic access$200(Landroidx/media3/muxer/WebmWriter$WebmFrame;)I
    .locals 0

    iget p0, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->trackNumber:I

    return p0
.end method

.method public static synthetic access$300(Landroidx/media3/muxer/WebmWriter$WebmFrame;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->data:Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public compareTo(Landroidx/media3/muxer/WebmWriter$WebmFrame;)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->bufferInfo:Landroidx/media3/muxer/BufferInfo;

    iget-wide v0, v0, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    iget-object v2, p1, Landroidx/media3/muxer/WebmWriter$WebmFrame;->bufferInfo:Landroidx/media3/muxer/BufferInfo;

    iget-wide v2, v2, Landroidx/media3/muxer/BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroidx/media3/muxer/WebmWriter$WebmFrame;->isAudioFrame:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iget-object p1, p1, Landroidx/media3/muxer/WebmWriter$WebmFrame;->isAudioFrame:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Landroidx/media3/muxer/WebmWriter$WebmFrame;

    invoke-virtual {p0, p1}, Landroidx/media3/muxer/WebmWriter$WebmFrame;->compareTo(Landroidx/media3/muxer/WebmWriter$WebmFrame;)I

    move-result p0

    return p0
.end method
