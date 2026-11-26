.class public final synthetic Lsd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

.field public final synthetic c:Landroidx/media3/common/MediaItem;

.field public final synthetic d:Lbf6;

.field public final synthetic e:Landroidx/media3/exoplayer/source/preload/PreloadException;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Lbf6;Landroidx/media3/exoplayer/source/preload/PreloadException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsd0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iput-object p2, p0, Lsd0;->c:Landroidx/media3/common/MediaItem;

    iput-object p3, p0, Lsd0;->d:Lbf6;

    iput-object p4, p0, Lsd0;->e:Landroidx/media3/exoplayer/source/preload/PreloadException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lsd0;->d:Lbf6;

    iget-object v1, p0, Lsd0;->e:Landroidx/media3/exoplayer/source/preload/PreloadException;

    iget-object v2, p0, Lsd0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iget-object p0, p0, Lsd0;->c:Landroidx/media3/common/MediaItem;

    invoke-static {v2, p0, v0, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->i(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Lbf6;Landroidx/media3/exoplayer/source/preload/PreloadException;)V

    return-void
.end method
