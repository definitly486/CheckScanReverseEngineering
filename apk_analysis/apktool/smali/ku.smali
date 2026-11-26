.class public final synthetic Lku;
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

    iput p1, p0, Lku;->b:I

    iput-object p2, p0, Lku;->d:Ljava/lang/Object;

    iput-object p3, p0, Lku;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lku;->b:I

    iget-object v1, p0, Lku;->c:Ljava/lang/Object;

    iget-object p0, p0, Lku;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/Surface;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-static {p0, v1}, Landroidx/camera/camera2/impl/MeteringRepeating;->b(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/DeferrableSurface;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p0}, Landroidx/camera/core/impl/DeferrableSurface;->c(Ljava/lang/String;Landroidx/camera/core/impl/DeferrableSurface;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->n(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
