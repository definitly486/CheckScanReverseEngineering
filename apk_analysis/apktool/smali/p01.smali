.class public final synthetic Lp01;
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

    iput p1, p0, Lp01;->b:I

    iput-object p2, p0, Lp01;->c:Ljava/lang/Object;

    iput-object p3, p0, Lp01;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lp01;->b:I

    iget-object v1, p0, Lp01;->d:Ljava/lang/Object;

    iget-object p0, p0, Lp01;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/tapjoy/internal/s2;

    check-cast v1, Lcom/tapjoy/b0;

    invoke-static {p0, v1}, Lcom/tapjoy/internal/p1;->a(Lcom/tapjoy/internal/s2;Lcom/tapjoy/TJOfferwallDiscoverRequestListener;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseThreads;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {p0, v1}, Landroidx/camera/camera2/impl/UseCaseThreads;->a(Landroidx/camera/camera2/impl/UseCaseThreads;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;

    check-cast v1, Landroid/net/Uri;

    invoke-static {p0, v1}, Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;->a(Landroidx/browser/trusted/TrustedWebActivityServiceConnectionPool;Landroid/net/Uri;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/imagecapture/TakePictureRequest;

    check-cast v1, Landroidx/camera/core/ImageProxy;

    invoke-static {p0, v1}, Landroidx/camera/core/imagecapture/TakePictureRequest;->c(Landroidx/camera/core/imagecapture/TakePictureRequest;Landroidx/camera/core/ImageProxy;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {p0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->a(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    check-cast v1, Landroidx/camera/core/SurfaceRequest;

    invoke-static {p0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->l(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/camera/view/CameraController;

    check-cast v1, Landroidx/camera/core/CameraSelector;

    invoke-static {p0, v1}, Landroidx/camera/view/CameraController;->e(Landroidx/camera/view/CameraController;Landroidx/camera/core/CameraSelector;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
