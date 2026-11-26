.class Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/video/internal/encoder/EncoderImpl$1;->onSuccess(Landroidx/camera/video/internal/encoder/InputBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/utils/futures/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;


# direct methods
.method public constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p1, Landroid/media/MediaCodec$CodecException;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->this$1:Landroidx/camera/video/internal/encoder/EncoderImpl$1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(Landroid/media/MediaCodec$CodecException;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/camera/video/internal/encoder/EncoderImpl$1;->this$0:Landroidx/camera/video/internal/encoder/EncoderImpl;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl;->handleEncodeError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/camera/video/internal/encoder/EncoderImpl$1$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    .line 6
    return-void
.end method
