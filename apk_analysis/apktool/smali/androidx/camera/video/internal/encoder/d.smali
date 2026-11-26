.class public final synthetic Landroidx/camera/video/internal/encoder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

.field public final synthetic c:Landroidx/camera/core/impl/Observable$Observer;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;Landroidx/camera/core/impl/Observable$Observer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/d;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/d;->c:Landroidx/camera/core/impl/Observable$Observer;

    iput-object p3, p0, Landroidx/camera/video/internal/encoder/d;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/d;->c:Landroidx/camera/core/impl/Observable$Observer;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/d;->d:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/camera/video/internal/encoder/d;->b:Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;

    invoke-static {p0, v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;->d(Landroidx/camera/video/internal/encoder/EncoderImpl$ByteBufferInput;Landroidx/camera/core/impl/Observable$Observer;Ljava/util/concurrent/Executor;)V

    return-void
.end method
