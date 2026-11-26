.class public final synthetic Lh11;
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

    iput p1, p0, Lh11;->b:I

    iput-object p2, p0, Lh11;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh11;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lh11;->b:I

    iget-object v1, p0, Lh11;->d:Ljava/lang/Object;

    iget-object p0, p0, Lh11;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ne6;

    check-cast v1, Lyads/ji0;

    invoke-virtual {p0, v1}, Lyads/ne6;->d(Lyads/ji0;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/constraintlayout/motion/widget/ViewTransition;

    check-cast v1, [Landroid/view/View;

    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->a(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/tapjoy/TJCorePlacement;

    check-cast v1, Lcom/tapjoy/TJPlacement;

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->b(Lcom/tapjoy/TJPlacement;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/core/impl/CameraInternal;

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-static {p0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->d(Landroidx/camera/core/impl/CameraInternal;Landroidx/lifecycle/Observer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
