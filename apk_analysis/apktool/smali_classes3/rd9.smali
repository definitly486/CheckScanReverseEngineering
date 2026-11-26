.class public final synthetic Lrd9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(IJLandroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lrd9;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-wide p2, p0, Lrd9;->c:J

    iput p1, p0, Lrd9;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lrd9;->c:J

    iget v2, p0, Lrd9;->d:I

    iget-object p0, p0, Lrd9;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v2, v0, v1, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->g(IJLandroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;)V

    return-void
.end method
