.class public final synthetic Lo32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo32;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lo32;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$State;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->M(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    iget-object p0, p0, Lo32;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;

    sget-object v0, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->q:Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment$a;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/tasks/main/view/TasksFragment;->o()Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/tasks/main/presenter/TasksPresenter;->refreshContent(Z)V

    return-void
.end method

.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    iget-object p0, p0, Lo32;->b:Ljava/lang/Object;

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;

    sget-object p1, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->m:[Lze4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/view/CouponNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;

    move-result-object p0

    invoke-virtual {p0, p5, p3}, Lcom/warefly/checkscan/presentation/bonuses/couponPage/presenter/CouponNewPresenter;->setFloatingButtonVisibility(II)V

    return-void
.end method
