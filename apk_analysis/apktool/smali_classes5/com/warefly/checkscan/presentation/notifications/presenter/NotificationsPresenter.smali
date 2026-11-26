.class public final Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lvo5$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;",
        ">;",
        "Lvo5$a;"
    }
.end annotation


# instance fields
.field private final flowRouter:Luf3;

.field private lastVisibleItemPosition:I

.field private final notificationsInteractor:Lpp5;

.field private paginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Lpp5;Ljf6;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->notificationsInteractor:Lpp5;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->flowRouter:Luf3;

    const/4 p1, -0x1

    iput p1, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->lastVisibleItemPosition:I

    return-void
.end method

.method public static final synthetic access$getLastVisibleItemPosition$p(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->lastVisibleItemPosition:I

    return p0
.end method

.method public static final synthetic access$getNotificationsInteractor$p(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)Lpp5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->notificationsInteractor:Lpp5;

    return-object p0
.end method

.method private final openNotification(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lkd$v$a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "GoToUrl"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lkd$v$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    const-string v0, "{user_id}"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->replacePlaceholder(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final replacePlaceholder(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->T0()J

    move-result-wide v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v3}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->U0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, v3, p0}, Lvp3;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public final onCreate()V
    .locals 4

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$a;

    new-instance v3, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)V

    invoke-direct {v2, v3}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$c;)V

    invoke-direct {v0, v1, v2}, Ls26;-><init>(Lnl3;Ls26$m;)V

    invoke-virtual {v0}, Ls26;->c()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->paginator:Ls26;

    return-void
.end method

.method public onDestroy()V
    .locals 7

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->notificationsInteractor:Lpp5;

    iget-object v0, v0, Lpp5;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lpn1;

    invoke-direct {v1, v0}, Lpn1;-><init>(Ljava/lang/Iterable;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)V

    new-instance v2, Lf29;

    new-instance v3, Lpa3;

    new-instance v4, Lm44;

    invoke-direct {v4, v1}, Lm44;-><init>(Lpn1;)V

    new-instance v1, Lvy1;

    const/4 v5, 0x4

    invoke-direct {v1, v0, v5}, Lvy1;-><init>(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    invoke-direct {v3, v4, v0, v1}, Lpa3;-><init>(Lzo7;ZLnl3;)V

    new-instance v1, Lwu2;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Lwu2;-><init>(I)V

    invoke-direct {v2, v3, v1}, Lf29;-><init>(Lzo7;Lnl3;)V

    sget-object v1, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;->f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;

    invoke-static {v2, v1}, Ljp7;->k(Lzo7;Lnl3;)Lpa3;

    move-result-object v1

    sget-object v2, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$g;->f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$g;

    invoke-static {v1, v2}, Ljp7;->o(Lzo7;Lnl3;)Lpa3;

    move-result-object v1

    invoke-static {v1}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->notificationsInteractor:Lpp5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lpp5;->a:Lrp5;

    invoke-interface {v4, v1}, Lrp5;->c(Ljava/util/List;)Ljq1;

    move-result-object v1

    invoke-interface {v4}, Lrp5;->b()Lp08;

    move-result-object v4

    new-instance v5, Lnp5;

    invoke-direct {v5, v2, v3}, Lnp5;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lvk1;

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6}, Lvk1;-><init>(Lgh4;I)V

    new-instance v5, Lsz7;

    invoke-direct {v5, v4, v2}, Lsz7;-><init>(Lmz7;Lqx1;)V

    invoke-virtual {v1, v5}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v1

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v1, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v1

    sget-object v2, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$d;->f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$d;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v1

    invoke-static {p0, v1, v5, v0, v5}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnTermination$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->notificationsInteractor:Lpp5;

    iget-object v0, p0, Lpp5;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iput-boolean v3, p0, Lpp5;->b:Z

    iput-boolean v3, p0, Lpp5;->c:Z

    return-void
.end method

.method public final onItemIsSeen(I)V
    .locals 2

    iget v0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->lastVisibleItemPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->lastVisibleItemPosition:I

    if-le p1, v1, :cond_0

    iput p1, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->lastVisibleItemPosition:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public onNotificationCardClicked(ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;->showAgreementDialog(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->openNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationOrdClicked(Lb06;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$d;

    const-string v2, "Notification_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Ord"

    invoke-direct {v1, v2, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;->showOrdInfoDialog(Lb06;)V

    :cond_1
    return-void
.end method

.method public final onScrolledToTheBottom()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->paginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    :cond_0
    return-void
.end method
