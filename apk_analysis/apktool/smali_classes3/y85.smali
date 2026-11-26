.class public final synthetic Ly85;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic c:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic d:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly85;->b:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Ly85;->c:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p3, p0, Ly85;->d:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput p4, p0, Ly85;->e:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Ly85;->e:I

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v1, p0, Ly85;->b:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, p0, Ly85;->c:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object p0, p0, Ly85;->d:Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v1, v2, p0, v0, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;ILandroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method
