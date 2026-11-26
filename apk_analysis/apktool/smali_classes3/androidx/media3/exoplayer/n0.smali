.class public final synthetic Landroidx/media3/exoplayer/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:Landroidx/media3/common/MediaItem;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/n0;->b:Landroidx/media3/common/MediaItem;

    iput p2, p0, Landroidx/media3/exoplayer/n0;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/n0;->c:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/exoplayer/n0;->b:Landroidx/media3/common/MediaItem;

    invoke-static {p0, v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->k(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method
