.class public final synthetic Lpg6;
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

    iput p1, p0, Lpg6;->b:I

    iput-object p2, p0, Lpg6;->c:Ljava/lang/Object;

    iput-object p3, p0, Lpg6;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lpg6;->b:I

    iget-object v1, p0, Lpg6;->d:Ljava/lang/Object;

    iget-object p0, p0, Lpg6;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lyads/fg6;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

    check-cast v1, Landroidx/camera/core/SurfaceRequest;

    invoke-static {p0, v1}, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->b(Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsStateSubscriber;

    check-cast v1, Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;

    invoke-static {p0, v1}, Lcom/google/firebase/remoteconfig/internal/rollouts/RolloutsStateSubscriptionsHandler;->b(Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsStateSubscriber;Lcom/google/firebase/remoteconfig/interop/rollouts/RolloutsState;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/imagecapture/ProcessingRequest;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {p0, v1}, Landroidx/camera/core/imagecapture/ProcessingNode;->b(Landroidx/camera/core/imagecapture/ProcessingRequest;Landroid/graphics/Bitmap;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
