.class public final synthetic Landroidx/camera/video/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/video/VideoEncoderSession;

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic d:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/v;->b:Landroidx/camera/video/VideoEncoderSession;

    iput-object p2, p0, Landroidx/camera/video/v;->c:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/v;->d:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/v;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, p0, Landroidx/camera/video/v;->d:Landroidx/camera/video/internal/encoder/VideoEncoderConfig;

    iget-object p0, p0, Landroidx/camera/video/v;->b:Landroidx/camera/video/VideoEncoderSession;

    invoke-static {p0, v0, v1, p1}, Landroidx/camera/video/VideoEncoderSession;->e(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/video/internal/encoder/VideoEncoderConfig;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
