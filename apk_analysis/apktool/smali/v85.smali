.class public final synthetic Lv85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/muxer/MediaMuxerImpl;

.field public final synthetic c:I

.field public final synthetic d:Ljava/nio/ByteBuffer;

.field public final synthetic e:Landroid/media/MediaCodec$BufferInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv85;->b:Landroidx/camera/video/internal/muxer/MediaMuxerImpl;

    iput p2, p0, Lv85;->c:I

    iput-object p3, p0, Lv85;->d:Ljava/nio/ByteBuffer;

    iput-object p4, p0, Lv85;->e:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lv85;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lv85;->e:Landroid/media/MediaCodec$BufferInfo;

    iget-object v2, p0, Lv85;->b:Landroidx/camera/video/internal/muxer/MediaMuxerImpl;

    iget p0, p0, Lv85;->c:I

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/video/internal/muxer/MediaMuxerImpl;->d(Landroidx/camera/video/internal/muxer/MediaMuxerImpl;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lj59;

    move-result-object p0

    return-object p0
.end method
