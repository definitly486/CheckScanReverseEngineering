.class public final synthetic Lc21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Lze6;
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Lyads/tt3;
.implements Ls0a$b;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lgv9;
.implements Lcom/my/target/c1$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lc21;->b:I

    iput-object p1, p0, Lc21;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/CameraX;

    invoke-static {p0, p1}, Landroidx/camera/core/CameraX;->c(Landroidx/camera/core/CameraX;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 2

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/w1;

    iget-object v0, p0, Lcom/my/target/w1;->k:Lv2a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lv2a;->e:Z

    iget-object v1, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object v0, v0, Lv2a;->a:Lxda;

    iget-object v1, v1, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    invoke-virtual {v1, v0}, Lcom/my/target/p0;->b(Lao9;)V

    invoke-virtual {p0}, Lcom/my/target/w1;->A()V

    :cond_0
    return-void
.end method

.method public d(Le6a;)V
    .locals 1

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/y1;

    sget v0, Lcom/my/target/y1;->q:I

    iput-object p1, p0, Lcom/my/target/y1;->k:Le6a;

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lc21;->b:I

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/ye6;

    check-cast p1, Lyads/iw4;

    invoke-static {p0, p1}, Lyads/bq2;->a(Lyads/ye6;Lyads/iw4;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->w(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Lcom/my/tracker/obfuscated/m0$c;

    invoke-static {p0, p1}, Lcom/my/tracker/obfuscated/m0$b;->b(Lcom/my/tracker/obfuscated/m0$c;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;

    sget-object p2, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->l:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsFragment;->o()Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0, p3, p2, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->scrollChanged(III)V

    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lc21;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$j;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->l(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$j;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
