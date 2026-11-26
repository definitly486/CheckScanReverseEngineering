.class public final synthetic La9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lxl3;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, La9;->b:I

    iput-object p1, p0, La9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, La9;->b:I

    iget-object p0, p0, La9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/base/a;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/operations/base/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_1
    check-cast p0, Ls51;

    invoke-virtual {p0, p1}, Ls51;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgq6;

    return-object p0

    :pswitch_2
    check-cast p0, Lrn0;

    invoke-virtual {p0, p1}, Lrn0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La9;->c:Ljava/lang/Object;

    check-cast p0, Lyads/bw4;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->b(Lyads/bw4;Lyads/iw4;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, La9;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->o()Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->getUriBankScreenshot(Landroid/net/Uri;)V

    return-void
.end method
