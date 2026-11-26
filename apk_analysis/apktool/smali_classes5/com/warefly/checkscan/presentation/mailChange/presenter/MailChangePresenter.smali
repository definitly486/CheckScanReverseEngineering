.class public final Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountDataFormatValidator:Li3;

.field private final accountInteractor:Lc4;

.field private final flowRouter:Luf3;

.field private final mailChangeInteractor:Lpy4;

.field private final preferencesRepository:Ljf6;


# direct methods
.method public constructor <init>(Li3;Lc4;Ljf6;Lpy4;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->accountDataFormatValidator:Li3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->accountInteractor:Lc4;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->preferencesRepository:Ljf6;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->mailChangeInteractor:Lpy4;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->flowRouter:Luf3;

    return-void
.end method

.method public static final synthetic access$loadEmail(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->loadEmail(Ljava/lang/String;)V

    return-void
.end method

.method private static final changeMail$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final changeMail$lambda$1(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->finishChangeMail()V

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->changeMail$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->changeMail$lambda$1(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;)V

    return-void
.end method

.method private final loadEmail(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->mailChangeInteractor:Lpy4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lpy4;->b:Lct6;

    invoke-virtual {v1, p1}, Lct6;->onNext(Ljava/lang/Object;)V

    iget-object v0, v0, Lpy4;->a:Ljf6;

    invoke-interface {v0, p1}, Ljf6;->I(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showMailUser(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final changeMail(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->accountDataFormatValidator:Li3;

    invoke-virtual {v0, p1}, Li3;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->accountInteractor:Lc4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lc4;->b:Lj5;

    invoke-static {p1}, Lta8;->f0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lj5;->n(Ljava/lang/String;)Lmz7;

    move-result-object v0

    new-instance v2, Ln3;

    sget-object v3, Lo4;->f:Lo4;

    invoke-direct {v2, v3}, Ln3;-><init>(Lnl3;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp08;

    invoke-direct {v3, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v3, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$a;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$a;-><init>(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;)V

    new-instance v3, Lre1;

    invoke-direct {v3, v2, v1}, Lre1;-><init>(Lgh4;I)V

    new-instance v2, Lxz7;

    invoke-direct {v2, v0, v3}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lqy4;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lqy4;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V

    new-instance v3, Luz7;

    invoke-direct {v3, v2, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$c;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;)V

    invoke-virtual {p0, v3, v0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->subscribeIfPayloadIsFree(Lmz7;Lnl3;Lnl3;)Lcp2;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showIncorrectMailMessage(Z)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized checkMailInput(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->accountDataFormatValidator:Li3;

    invoke-virtual {v1, p1}, Li3;->c(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showIncorrectMailMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

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

    throw p1
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 1

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->mailChangeInteractor:Lpy4;

    iget-object v0, v0, Lpy4;->a:Ljf6;

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->loadEmail(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized onMailChange(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;->accountDataFormatValidator:Li3;

    invoke-virtual {v0, p1}, Li3;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->setMailAllowed(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;

    if-eqz v0, :cond_1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;->showIncorrectMailMessage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
