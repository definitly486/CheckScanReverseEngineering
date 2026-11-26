.class public final synthetic Lvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;
.implements Lxl3;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lvq;->b:I

    iput-object p1, p0, Lvq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public align(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget-object p0, p0, Lvq;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/Arrangement;->a(Landroidx/compose/ui/Alignment$Vertical;ILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    return p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lvq;->b:I

    iget-object p0, p0, Lvq;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;->g(Lcom/google/firebase/inappmessaging/internal/RateLimiterClient;Lcom/google/firebase/inappmessaging/internal/RateLimitProto$RateLimit;)Lqq1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lqv;

    invoke-virtual {p0, p1}, Lqv;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc18;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(Ljava/lang/Object;)V
    .locals 3

    iget-object p0, p0, Lvq;->c:Ljava/lang/Object;

    check-cast p0, Lg86;

    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg86;->c:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lh86;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Lh86;-><init>(Landroid/net/Uri;Landroid/content/Context;Lg86;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    sget-object v0, Lqo2;->a:Loi2;

    sget-object v0, Lsh2;->c:Lsh2;

    invoke-static {p1, v0}, Lud3;->b(Lhd3;Lo22;)Lhd3;

    move-result-object p1

    new-instance v0, Lj86;

    invoke-direct {v0, p0, v2}, Lj86;-><init>(Lg86;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance p1, Lk86;

    invoke-direct {p1, p0, v2}, Lk86;-><init>(Lg86;Le02;)V

    new-instance p0, Lde3;

    invoke-direct {p0, v1, p1}, Lde3;-><init>(Lhd3;Ldm3;)V

    sget-object p1, Luy4;->a:Lhu3;

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    invoke-static {p0, p1}, Lpx;->h(Lhd3;Ly22;)Ls68;

    return-void
.end method

.method public onRefresh()V
    .locals 1

    iget-object p0, p0, Lvq;->c:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment;->j:Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/view/CompletedTasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/completedTasks/presenter/CompletedTasksPresenter;->refreshContent()V

    return-void
.end method
