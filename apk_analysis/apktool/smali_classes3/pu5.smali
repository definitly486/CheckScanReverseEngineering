.class public final synthetic Lpu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:Lnr7;

.field public final synthetic d:Landroidx/media3/exoplayer/drm/DrmSession;


# direct methods
.method public synthetic constructor <init>(Lnr7;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lpu5;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput-object p1, p0, Lpu5;->c:Lnr7;

    iput-object p2, p0, Lpu5;->d:Landroidx/media3/exoplayer/drm/DrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpu5;->c:Lnr7;

    iget-object v1, p0, Lpu5;->d:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object p0, p0, Lpu5;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->e(Lnr7;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    return-void
.end method
