.class public final synthetic Landroidx/camera/video/internal/encoder/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

.field public final synthetic c:Landroid/media/MediaCodec$BufferInfo;

.field public final synthetic d:Landroid/media/MediaCodec;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/p;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/p;->c:Landroid/media/MediaCodec$BufferInfo;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/p;->d:Landroid/media/MediaCodec;

    iput p4, p0, Landroidx/camera/video/internal/encoder/p;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/p;->d:Landroid/media/MediaCodec;

    iget v1, p0, Landroidx/camera/video/internal/encoder/p;->e:I

    iget-object v2, p0, Landroidx/camera/video/internal/encoder/p;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/p;->c:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;->e(Landroidx/camera/video/internal/encoder/EncoderImpl$MediaCodecCallback;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    return-void
.end method
