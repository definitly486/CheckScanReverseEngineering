.class public final synthetic Le7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Le7;->b:I

    iput-object p1, p0, Le7;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Le7;->b:I

    iget-object p0, p0, Le7;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/monetization/ads/exo/source/dash/i;

    invoke-virtual {p0}, Lcom/monetization/ads/exo/source/dash/i;->f()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/tapjoy/c0;

    invoke-virtual {p0}, Lcom/tapjoy/c0;->a()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/video/VideoCapture;

    invoke-static {p0}, Landroidx/camera/video/VideoCapture;->e(Landroidx/camera/video/VideoCapture;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-static {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->a(Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
