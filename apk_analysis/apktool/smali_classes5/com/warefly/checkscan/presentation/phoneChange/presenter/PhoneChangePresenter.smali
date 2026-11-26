.class public final Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountDataFormatValidator:Li3;

.field private final bankInteractor:Lca0;

.field private final flowRouter:Luf3;

.field private final phoneSubject:Lct6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lct6<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final preferencesRepository:Ljf6;

.field private final resourceProvider:Ls47;


# direct methods
.method public constructor <init>(Ljf6;Li3;Lca0;Luf3;Ls47;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->preferencesRepository:Ljf6;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->accountDataFormatValidator:Li3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->bankInteractor:Lca0;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->flowRouter:Luf3;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->resourceProvider:Ls47;

    new-instance p1, Lct6;

    invoke-direct {p1}, Lct6;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->phoneSubject:Lct6;

    return-void
.end method

.method public static final synthetic access$getAccountDataFormatValidator$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Li3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->accountDataFormatValidator:Li3;

    return-object p0
.end method

.method public static final synthetic access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Luf3;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->flowRouter:Luf3;

    return-object p0
.end method

.method public static final synthetic access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Ls47;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->resourceProvider:Ls47;

    return-object p0
.end method

.method public static final synthetic access$sendRequestForChangePhone(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->sendRequestForChangePhone(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->requestCode$lambda$1(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V

    return-void
.end method

.method public static synthetic f(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$d;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->requestCode$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final requestCode(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->bankInteractor:Lca0;

    sget-object v1, Lcw1;->SMS:Lcw1;

    invoke-virtual {v0, p1, v1}, Lca0;->b(Ljava/lang/String;Lcw1;)Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V

    new-instance v2, Ll76;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ll76;-><init>(Lgh4;I)V

    new-instance v1, Lxz7;

    invoke-direct {v1, v0, v2}, Lxz7;-><init>(Lmz7;Lqx1;)V

    new-instance v0, Lm76;

    invoke-direct {v0, p0, v3}, Lm76;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;I)V

    new-instance v2, Luz7;

    invoke-direct {v2, v1, v0}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$e;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$e;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const-string v0, "requestCode"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final requestCode$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final requestCode$lambda$1(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showLoading(Z)V

    :cond_0
    return-void
.end method

.method private final sendRequestForChangePhone(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->requestCode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final changePhone(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->bankInteractor:Lca0;

    invoke-virtual {v0}, Lca0;->a()Lp08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$a;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized checkPhoneInput(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->accountDataFormatValidator:Li3;

    invoke-virtual {v1, p1}, Li3;->d(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showIncorrectPhoneMessage(Z)V
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

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->U0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showAccountPhone(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->phoneSubject:Lct6;

    sget-object v1, Ln00;->LATEST:Ln00;

    invoke-virtual {v0, v1}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lgg3;->h(Lhe7;)Lqh3;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)V

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lyb8;->i(Lgg3;Lnl3;I)Lih4;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final onPhoneChanged(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->phoneSubject:Lct6;

    invoke-virtual {p0, p1}, Lct6;->onNext(Ljava/lang/Object;)V

    return-void
.end method
