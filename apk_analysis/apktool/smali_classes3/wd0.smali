.class public final synthetic Lwd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

.field public final synthetic c:Landroidx/media3/exoplayer/source/MediaSource;

.field public final synthetic d:Lbf6;

.field public final synthetic e:Landroidx/media3/exoplayer/source/preload/PreloadException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lbf6;Landroidx/media3/exoplayer/source/preload/PreloadException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iput-object p2, p0, Lwd0;->c:Landroidx/media3/exoplayer/source/MediaSource;

    iput-object p3, p0, Lwd0;->d:Lbf6;

    iput-object p4, p0, Lwd0;->e:Landroidx/media3/exoplayer/source/preload/PreloadException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwd0;->d:Lbf6;

    iget-object v1, p0, Lwd0;->e:Landroidx/media3/exoplayer/source/preload/PreloadException;

    iget-object v2, p0, Lwd0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iget-object p0, p0, Lwd0;->c:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v2, p0, v0, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->j(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lbf6;Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    return-void
.end method
