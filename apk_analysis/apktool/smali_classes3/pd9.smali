.class public final synthetic Lpd9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(IJLandroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lpd9;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput p1, p0, Lpd9;->c:I

    iput-wide p2, p0, Lpd9;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lpd9;->c:I

    iget-wide v1, p0, Lpd9;->d:J

    iget-object p0, p0, Lpd9;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0, v1, v2, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->c(IJLandroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;)V

    return-void
.end method
