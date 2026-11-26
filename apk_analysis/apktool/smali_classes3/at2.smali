.class public final synthetic Lat2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lat2;->b:I

    iput-object p1, p0, Lat2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lat2;->d:Ljava/lang/Object;

    iput-object p3, p0, Lat2;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lat2;->b:I

    iget-object v1, p0, Lat2;->e:Ljava/lang/Object;

    iget-object v2, p0, Lat2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lat2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast v2, Lnr7;

    check-cast v1, Lks;

    invoke-static {p0, v2, v1}, Landroidx/media3/common/util/Util;->c(Lcom/google/common/util/concurrent/ListenableFuture;Lnr7;Lks;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    check-cast v2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener;

    check-cast v1, Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
