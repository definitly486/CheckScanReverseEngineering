.class public final synthetic Lsu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lsu5;->b:I

    iput-object p2, p0, Lsu5;->c:Ljava/lang/Object;

    iput-object p3, p0, Lsu5;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lsu5;->b:I

    iget-object v1, p0, Lsu5;->d:Ljava/lang/Object;

    iget-object p0, p0, Lsu5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/core/util/Consumer;

    check-cast v1, Landroid/view/Surface;

    invoke-static {p0, v1}, Landroidx/camera/core/SurfaceRequest;->e(Landroidx/core/util/Consumer;Landroid/view/Surface;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    check-cast v1, Lnr7;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->b(Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;Lnr7;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
