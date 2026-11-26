.class public final synthetic Lru5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:Landroidx/media3/exoplayer/drm/DrmSession;

.field public final synthetic d:Lnr7;


# direct methods
.method public synthetic constructor <init>(Lnr7;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lru5;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lru5;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p1, p0, Lru5;->d:Lnr7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lru5;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v1, p0, Lru5;->d:Lnr7;

    iget-object p0, p0, Lru5;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    invoke-static {v1, v0, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->a(Lnr7;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    return-void
.end method
