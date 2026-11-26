.class public final Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;",
        ">;"
    }
.end annotation


# instance fields
.field private final authInteractor:Lkv;

.field private final flowRouter:Luf3;


# direct methods
.method public constructor <init>(Luf3;Lkv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->authInteractor:Lkv;

    return-void
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->onBtnGoClicked$lambda$2(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->onBtnGoClicked$lambda$1(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->onFirstViewAttach$lambda$0(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;Ljava/lang/Object;)V

    return-void
.end method

.method private static final onBtnGoClicked$lambda$1(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onBtnGoClicked$lambda$2(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private static final onFirstViewAttach$lambda$0(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object p1, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, p1}, Lo87;->g(Ldf7;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lc00;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc00;-><init>(Ldf7;)V

    new-instance v1, Lvz;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lso1;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v2}, Lo87;->b([Lso1;)V

    return-void
.end method

.method public final declared-synchronized onBtnGoClicked()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->authInteractor:Lkv;

    invoke-virtual {v0}, Lkv;->d()Lrz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V

    new-instance v2, Lyq7;

    invoke-direct {v2, v1}, Lyq7;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$a;)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lzq7;

    invoke-direct {v0, p0}, Lzq7;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V

    invoke-virtual {p0, v2, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree(Lmz7;Lnl3;Lnl3;)Lcp2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->flowRouter:Luf3;

    new-instance v1, Lxq7;

    invoke-direct {v1, p0}, Lxq7;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;)V

    invoke-virtual {v0, v1}, Luf3;->l(Lt57;)V

    return-void
.end method

.method public final declared-synchronized onSendFeedback()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->isRequestInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lkd$a$h$d;

    invoke-direct {v0}, Lkd$a$h$d;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;->startFeedback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
