.class public final synthetic Lph;
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

    iput p2, p0, Lph;->b:I

    iput-object p1, p0, Lph;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lph;->b:I

    iget-object p0, p0, Lph;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/q25;

    invoke-static {p0}, Lyads/q25;->c(Lyads/q25;)V

    return-void

    :pswitch_0
    check-cast p0, Lyads/gl;

    invoke-virtual {p0}, Lyads/gl;->b()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;

    new-instance v0, Lv89$f;

    invoke-direct {v0}, Lv89$f;-><init>()V

    sget-object v1, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->f:Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog$a;

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/upridWeb/veiw/UpridWebFullScreenDialog;->g(Lv89;)V

    return-void

    :pswitch_2
    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->h(Ljava/util/concurrent/ExecutorService;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;

    invoke-static {p0}, Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;->a(Lcom/warefly/checkscan/tasks/ui/images/AnimatedImageView;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView$Companion;->c(Landroidx/compose/ui/platform/AndroidComposeView;)V

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
