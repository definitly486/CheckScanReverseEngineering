.class public final synthetic Lrh;
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

    iput p2, p0, Lrh;->b:I

    iput-object p1, p0, Lrh;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lrh;->b:I

    iget-object p0, p0, Lrh;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Landroidx/work/WorkerKt;->b(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    new-instance v0, Lv89$b;

    invoke-direct {v0}, Lv89$b;-><init>()V

    sget-object v1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->g(Lv89;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/core/SurfaceRequest;

    invoke-static {p0}, Landroidx/camera/core/SurfaceRequest;->d(Landroidx/camera/core/SurfaceRequest;)V

    return-void

    :pswitch_2
    check-cast p0, Lio/appmetrica/analytics/impl/Gb;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Gb;->a(Lio/appmetrica/analytics/impl/Gb;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    sget v0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->C:I

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->b()V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->a(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
