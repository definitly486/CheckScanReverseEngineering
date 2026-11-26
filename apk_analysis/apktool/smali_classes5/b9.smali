.class public final synthetic Lb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lxl3;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/my/target/c1$a;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lb9;->b:I

    iput-object p1, p0, Lb9;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb9;->b:I

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lae1;

    invoke-virtual {p0, p1}, Lae1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    check-cast p0, Lpn0;

    invoke-virtual {p0, p1}, Lpn0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqq1;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, p1}, Landroidx/camera/video/internal/encoder/EncodedDataImpl;->a(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/ca;

    sget v0, Lcom/my/target/ca;->i:I

    iput-object p1, p0, Lcom/my/target/ca;->f:Le6a;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    check-cast p0, Lyads/bw4;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/eq2;->c(Lyads/bw4;Lyads/iw4;)V

    return-void
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->n:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/addScreenshots/view/AddScreenshotsFragment;->o()Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/addScreenshots/presenter/AddScreenshotsPresenter;->getUriShopScreenshot(Landroid/net/Uri;)V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavController;

    invoke-static {p0, p1}, Landroidx/navigation/ui/NavigationUI;->e(Landroidx/navigation/NavController;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRefresh()V
    .locals 1

    iget-object p0, p0, Lb9;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;

    sget-object v0, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->r:Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/view/UniversalWebViewFragment;->q()Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/shared/universalWebView/presentation/presenter/UniversalWebViewPresenter;->onRefreshRequested()V

    return-void
.end method
