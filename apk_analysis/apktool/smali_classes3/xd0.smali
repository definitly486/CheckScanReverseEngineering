.class public final synthetic Lxd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

.field public final synthetic c:Landroidx/media3/common/MediaItem;

.field public final synthetic d:Lbf6;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Lbf6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    iput-object p2, p0, Lxd0;->c:Landroidx/media3/common/MediaItem;

    iput-object p3, p0, Lxd0;->d:Lbf6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lxd0;->c:Landroidx/media3/common/MediaItem;

    iget-object v1, p0, Lxd0;->d:Lbf6;

    iget-object p0, p0, Lxd0;->b:Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->c(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/common/MediaItem;Lbf6;)V

    return-void
.end method
