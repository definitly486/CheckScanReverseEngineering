.class public final synthetic Leu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

.field public final synthetic c:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

.field public final synthetic d:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/BufferedAudioStream;Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leu0;->b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    iput-object p2, p0, Leu0;->c:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iput-object p3, p0, Leu0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leu0;->c:Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;

    iget-object v1, p0, Leu0;->d:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Leu0;->b:Landroidx/camera/video/internal/audio/BufferedAudioStream;

    invoke-static {p0, v0, v1}, Landroidx/camera/video/internal/audio/BufferedAudioStream;->e(Landroidx/camera/video/internal/audio/BufferedAudioStream;Landroidx/camera/video/internal/audio/AudioStream$AudioStreamCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
