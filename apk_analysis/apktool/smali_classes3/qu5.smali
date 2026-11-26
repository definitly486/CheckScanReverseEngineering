.class public final synthetic Lqu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

.field public final synthetic c:I

.field public final synthetic d:[B

.field public final synthetic e:Lnr7;

.field public final synthetic f:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLnr7;Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu5;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iput p2, p0, Lqu5;->c:I

    iput-object p3, p0, Lqu5;->d:[B

    iput-object p4, p0, Lqu5;->e:Lnr7;

    iput-object p5, p0, Lqu5;->f:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lqu5;->e:Lnr7;

    iget-object v1, p0, Lqu5;->f:Landroidx/media3/common/Format;

    iget-object v2, p0, Lqu5;->b:Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    iget v3, p0, Lqu5;->c:I

    iget-object p0, p0, Lqu5;->d:[B

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->d(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;I[BLnr7;Landroidx/media3/common/Format;)V

    return-void
.end method
