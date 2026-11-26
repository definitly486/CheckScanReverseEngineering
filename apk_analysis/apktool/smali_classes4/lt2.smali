.class public final synthetic Llt2;
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

    iput p1, p0, Llt2;->b:I

    iput-object p2, p0, Llt2;->c:Ljava/lang/Object;

    iput-object p3, p0, Llt2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Llt2;->b:I

    iget-object v1, p0, Llt2;->d:Ljava/lang/Object;

    iget-object p0, p0, Llt2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ne6;

    check-cast v1, Lyads/ji0;

    invoke-virtual {p0, v1}, Lyads/ne6;->c(Lyads/ji0;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/my/target/h6;

    check-cast v1, Lh14;

    sget v0, Lcom/my/target/h6;->r:I

    iget v0, v1, Lxha;->b:I

    iget v1, v1, Lxha;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/my/target/o4;->a(II)Landroid/util/Size;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/my/target/h6;->q:Lcom/my/target/i6;

    invoke-virtual {p0}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/my/target/i6;->getImageView()Lcom/my/target/zh;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(Lcom/google/firebase/messaging/FirebaseMessaging;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;

    check-cast v1, Landroidx/camera/core/SurfaceRequest;

    invoke-static {p0, v1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;->g(Landroidx/camera/core/processing/concurrent/DualSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
