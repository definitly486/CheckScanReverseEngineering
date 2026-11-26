.class public final synthetic Landroidx/media3/exoplayer/drm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/KeyRequestInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/b;->b:Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/b;->b:Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b(Landroidx/media3/exoplayer/drm/KeyRequestInfo;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
