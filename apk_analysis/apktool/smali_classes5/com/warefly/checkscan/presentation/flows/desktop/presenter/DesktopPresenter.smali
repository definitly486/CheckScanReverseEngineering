.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;"
    }
.end annotation


# instance fields
.field private final accountInteractor:Lc4;

.field private final accountState:Lg6;

.field private final avatarState:Lkz;

.field private final cashbackInteractor:Lp51;

.field private final desktopInteractor:Lzl2;

.field private final desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

.field private final flowRouter:Luf3;

.field private final internetConnected:Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly68<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final notificationsInteractor:Lpp5;

.field private final preferencesRepository:Ljf6;

.field private final resetOnboardingUseCase:Lx37;

.field private final sendBannerWatchUseCase:Lmo7;

.field private final sseInteractor:Lda7;

.field private final subscriptionInteractor:Lic8;

.field private final welcomeBannersInteractor:Lnh9;


# direct methods
.method public constructor <init>(Luf3;Lc4;Ljf6;Lpp5;Lp51;Lzl2;Lnh9;Lic8;Lda7;Lkz;Lg6;Lqm5;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;Lx37;Lmo7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->notificationsInteractor:Lpp5;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopInteractor:Lzl2;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->welcomeBannersInteractor:Lnh9;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->subscriptionInteractor:Lic8;

    iput-object p9, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->sseInteractor:Lda7;

    iput-object p10, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->avatarState:Lkz;

    iput-object p11, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountState:Lg6;

    iput-object p14, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->resetOnboardingUseCase:Lx37;

    iput-object p15, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-interface {p12}, Lqm5;->a()Lhd3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p2

    new-instance p3, Lw68;

    const-wide/16 p4, 0x1388

    const-wide p6, 0x7fffffffffffffffL

    invoke-direct {p3, p4, p5, p6, p7}, Lw68;-><init>(JJ)V

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3, p4}, Lbf3;->d(Lhd3;Ly22;Leu7;Ljava/lang/Object;)Lgy6;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->internetConnected:Ly68;

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    new-instance p2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)V

    invoke-direct {p1, p13, p0, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    return-void
.end method

.method public static final synthetic access$getCashbackInteractor$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lp51;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    return-object p0
.end method

.method public static final synthetic access$getDesktopInteractor$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lzl2;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopInteractor:Lzl2;

    return-object p0
.end method

.method public static final synthetic access$getDesktopTabsState$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    return-object p0
.end method

.method public static final synthetic access$getInternetConnected$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Ly68;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->internetConnected:Ly68;

    return-object p0
.end method

.method public static final synthetic access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Ljf6;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionInteractor$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lic8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->subscriptionInteractor:Lic8;

    return-object p0
.end method

.method public static final synthetic access$onFirstViewAttach$lambda$0(Led3;Lri8;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onFirstViewAttach$lambda$0(Led3;Lri8;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFirstViewAttach$lambda$1(ZLri8;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onFirstViewAttach$lambda$1(ZLri8;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshAllTabs(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->refreshAllTabs(Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showScanButtonInTab(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Lri8;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->showScanButtonInTab(Lri8;)Z

    move-result p0

    return p0
.end method

.method private static final synthetic onFirstViewAttach$lambda$0(Led3;Lri8;Le02;)Ljava/lang/Object;
    .locals 0

    new-instance p2, Lb36;

    invoke-direct {p2, p0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static final onFirstViewAttach$lambda$1(ZLri8;Le02;)Ljava/lang/Object;
    .locals 0

    new-instance p2, Lb36;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private final refreshAllTabs(Le02;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopInteractor:Lzl2;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    sget-object v2, Lri8;->Bonuses:Lri8;

    invoke-virtual {v1, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d(Lri8;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lzl2$a$d;->a:Lzl2$a$d;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    sget-object v4, Lri8;->Cheques:Lri8;

    invoke-virtual {v3, v4}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d(Lri8;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lzl2$a$g;->a:Lzl2$a$g;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    sget-object v5, Lri8;->Discount:Lri8;

    invoke-virtual {v4, v5}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d(Lri8;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lzl2$a$i;->a:Lzl2$a$i;

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    iget-object v5, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    sget-object v6, Lri8;->Balance:Lri8;

    invoke-virtual {v5, v6}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d(Lri8;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lzl2$a$c;->a:Lzl2$a$c;

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    iget-object v6, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    sget-object v7, Lri8;->Tasks:Lri8;

    invoke-virtual {v6, v7}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d(Lri8;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lzl2$a$h;->a:Lzl2$a$h;

    goto :goto_4

    :cond_4
    move-object v6, v2

    :goto_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    sget-object v7, Lri8;->Games:Lri8;

    invoke-virtual {p0, v7}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d(Lri8;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object v2, Lzl2$a$e;->a:Lzl2$a$e;

    :cond_5
    const/4 p0, 0x6

    new-array p0, p0, [Lzl2$a;

    const/4 v7, 0x0

    aput-object v1, p0, v7

    const/4 v1, 0x1

    aput-object v3, p0, v1

    const/4 v1, 0x2

    aput-object v4, p0, v1

    const/4 v1, 0x3

    aput-object v5, p0, v1

    const/4 v1, 0x4

    aput-object v6, p0, v1

    const/4 v1, 0x5

    aput-object v2, p0, v1

    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    new-array v1, v7, [Lzl2$a;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lzl2$a;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lzl2$a;

    invoke-virtual {v0, p0, p1}, Lzl2;->b([Lzl2$a;Le02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final requestPushPermission()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->requestPushPermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final showScanButtonInTab(Lri8;)Z
    .locals 2

    sget-object v0, Lri8;->Cheques:Lri8;

    if-eq p1, v0, :cond_2

    sget-object v0, Lri8;->Bonuses:Lri8;

    if-eq p1, v0, :cond_2

    sget-object v0, Lri8;->Discount:Lri8;

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->G0()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->Z()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final animCoinShowed()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    iget-object p0, p0, Lp51;->d:Lhi0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lhi0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCurrentTab()Lri8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    invoke-static {p0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object p0

    iget-object p0, p0, Lgy6;->b:Ly68;

    invoke-interface {p0}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lri8;

    return-object p0
.end method

.method public final onBackFromTabClicked()V
    .locals 4

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lri8;->Bonuses:Lri8;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b(Lri8;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->onCloseDesktopTabs()V

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lri8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomItem(Lri8;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c(Lri8;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    return-void
.end method

.method public onCloseDesktopTabs()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 12

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    invoke-virtual {v0}, Lc4;->a()Lyz7;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$i;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v3, v2, v4}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$m;

    invoke-direct {v2, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$m;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v5, Ldf3;

    invoke-direct {v5, v0, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v5}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    iget-object v2, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->a:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-virtual {v0, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->a(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)Lri8;

    move-result-object v5

    iget-object v6, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    iget-object v7, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;

    invoke-virtual {v7}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$b;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v6, v7}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationTabs(Z)V

    invoke-interface {v6, v5, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {v0, v5}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->c(Lri8;)V

    sget-object v7, Lri8;->Bonuses:Lri8;

    if-eq v5, v7, :cond_0

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e:Ljava/util/Stack;

    invoke-virtual {v0, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v6, v5}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->setBottomNavigationSelectedIcon(Lri8;)V

    instance-of v0, v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Bonuses;

    if-eqz v0, :cond_1

    check-cast v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Bonuses;

    iget-object v0, v2, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Bonuses;->c:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v6, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a$a;->openDesktopUrlDeeplinkInBrowser(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    iget-object v0, v0, Lc4;->b:Lj5;

    invoke-interface {v0}, Lj5;->r()Lu08;

    move-result-object v0

    sget-object v2, Li4;->g:Li4;

    new-instance v5, Lv3;

    invoke-direct {v5, v2}, Lv3;-><init>(Lnl3;)V

    new-instance v2, Lp08;

    invoke-direct {v2, v0, v5}, Lp08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v2, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$n;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$n;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)V

    invoke-static {v0, v3, v2, v4}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    const-string v2, "isNeedToUpdate"

    invoke-virtual {p0, v0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    iget-object v2, v0, Lc4;->b:Lj5;

    invoke-interface {v2}, Lj5;->f()Lp08;

    move-result-object v2

    new-instance v5, Le4;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Le4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lk3;

    invoke-direct {v0, v5, v6}, Lk3;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Le08;

    invoke-direct {v5, v2, v0}, Le08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v5, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    sget-object v2, Lrm3;->d:Lrm3$e;

    sget-object v5, Lrm3;->e:Lrm3$l;

    invoke-virtual {v0, v2, v5}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->S0()Z

    move-result v0

    const/4 v7, 0x3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;

    invoke-direct {v8, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    invoke-static {v0, v3, v3, v8, v7}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_2
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    iget-object v8, v0, Lc4;->b:Lj5;

    invoke-interface {v8}, Lj5;->i()Lp08;

    move-result-object v8

    new-instance v9, Lf4;

    invoke-direct {v9, v0, v6}, Lf4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lz3;

    invoke-direct {v0, v9, v6}, Lz3;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lh08;

    invoke-direct {v9, v8, v0}, Lh08;-><init>(Lmz7;Lxl3;)V

    invoke-virtual {v9, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v8

    invoke-virtual {v0, v8}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    sget-object v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$p;->f:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$p;

    const/4 v9, 0x2

    invoke-static {v0, v8, v3, v9}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    iget-object v0, v0, Lp51;->a:Lu51;

    invoke-interface {v0}, Lu51;->a()Lh08;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v8

    invoke-virtual {v0, v8}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    invoke-static {v0, v3, v3, v7}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    invoke-virtual {v0}, Lc4;->c()Loq1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v8

    invoke-virtual {v0, v8}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    invoke-static {v0, v3, v3, v7}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    const-string v8, "updateAccountInfo"

    invoke-virtual {p0, v0, v8}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->avatarState:Lkz;

    iget-object v0, v0, Lkz;->a:Ly68;

    new-instance v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$q;

    invoke-direct {v8, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$q;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v9, Ldf3;

    invoke-direct {v9, v0, v8}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v9}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->subscriptionInteractor:Lic8;

    iget-object v0, v0, Lic8;->c:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$r;

    invoke-direct {v8, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$r;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v9, Ldf3;

    invoke-direct {v9, v0, v8}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v9}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    iget-object v0, v0, Lp51;->d:Lhi0;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v8

    invoke-virtual {v0, v8}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$s;

    invoke-direct {v8, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$s;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)V

    invoke-static {v0, v3, v8, v7}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v8

    new-instance v9, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$t;

    invoke-direct {v9, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$t;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    invoke-virtual {v0, v8, v9}, Lzl2;->c(Ly22;Lbm3;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->welcomeBannersInteractor:Lnh9;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lmh9;

    invoke-direct {v8, v0, v3}, Lmh9;-><init>(Lnh9;Le02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v8}, Ltb7;-><init>(Lbm3;)V

    new-instance v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$c;

    invoke-direct {v8, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v9, Ldf3;

    invoke-direct {v9, v0, v8}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$d;

    invoke-direct {v0, v7, v3}, Lpg8;-><init>(ILe02;)V

    new-instance v8, Lde3;

    invoke-direct {v8, v9, v0}, Lde3;-><init>(Lhd3;Ldm3;)V

    invoke-virtual {p0, v8}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    iget-object v0, v0, Lp51;->f:Lgy6;

    iget-object v8, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    iget-object v8, v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    invoke-static {v8}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v8

    new-instance v9, Lcf3;

    invoke-direct {v9, v8}, Lcf3;-><init>(Lhd3;)V

    sget-object v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$e;

    new-instance v10, Lff3;

    invoke-direct {v10, v0, v9, v8}, Lff3;-><init>(Lhd3;Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v8, Ldf3;

    invoke-direct {v8, v10, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v8}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->requestPushPermission()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->internetConnected:Ly68;

    new-instance v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$g;

    invoke-direct {v8, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v9, Ldf3;

    invoke-direct {v9, v0, v8}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v9}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountInteractor:Lc4;

    iget-object v8, v0, Lc4;->j:Lvp;

    invoke-interface {v8}, Lvp;->a()Lhi0;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lzq5;

    invoke-direct {v9, v8}, Lzq5;-><init>(Ltq5;)V

    sget-object v8, Lj4;->g:Lj4;

    new-instance v10, Lw3;

    invoke-direct {v10, v8, v6}, Lw3;-><init>(Lnl3;I)V

    sget v8, Lgg3;->b:I

    const-string v11, "bufferSize"

    invoke-static {v8, v11}, Lnq5;->b(ILjava/lang/String;)V

    instance-of v11, v9, Lkd7;

    if-eqz v11, :cond_4

    check-cast v9, Lkd7;

    invoke-interface {v9}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    sget-object v8, Ldr5;->b:Ldr5;

    goto :goto_0

    :cond_3
    new-instance v9, Ltr5$b;

    invoke-direct {v9, v8, v10}, Ltr5$b;-><init>(Ljava/lang/Object;Lxl3;)V

    move-object v8, v9

    goto :goto_0

    :cond_4
    new-instance v11, Lzr5;

    invoke-direct {v11, v9, v10, v8}, Lzr5;-><init>(Lzq5;Lw3;I)V

    move-object v8, v11

    :goto_0
    new-instance v9, Ln4;

    invoke-direct {v9, v0, v6}, Ln4;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lx3;

    invoke-direct {v0, v9, v6}, Lx3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Las5;

    invoke-direct {v9, v8, v0}, Las5;-><init>(Ltq5;Lx3;)V

    new-instance v0, Lzq5;

    invoke-direct {v0, v9}, Lzq5;-><init>(Ltq5;)V

    sget-object v8, Ln00;->LATEST:Ln00;

    invoke-virtual {v0, v8}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object v0

    sget-object v8, Lyx6;->a:[Lpy1;

    new-instance v8, Let6;

    const/4 v9, -0x2

    sget-object v10, Lcu0;->SUSPEND:Lcu0;

    sget-object v11, Lgx2;->b:Lgx2;

    invoke-direct {v8, v0, v11, v9, v10}, Let6;-><init>(Lgg3;Lo22;ILcu0;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    invoke-static {v8, v0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->notificationsInteractor:Lpp5;

    iget-object v0, v0, Lpp5;->e:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    iget-object v8, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    iget-object v8, v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->d:Lz68;

    invoke-static {v8}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v8

    new-instance v9, Lcf3;

    invoke-direct {v9, v8}, Lcf3;-><init>(Lhd3;)V

    sget-object v8, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$h;->c:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$h;

    new-instance v10, Lff3;

    invoke-direct {v10, v0, v9, v8}, Lff3;-><init>(Lhd3;Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v8, Ldf3;

    invoke-direct {v8, v10, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v8}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->notificationsInteractor:Lpp5;

    iget-object v8, v0, Lpp5;->a:Lrp5;

    invoke-interface {v8}, Lrp5;->b()Lp08;

    move-result-object v8

    new-instance v9, Lnp5;

    invoke-direct {v9, v0, v6}, Lnp5;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lvk1;

    invoke-direct {v0, v9, v7}, Lvk1;-><init>(Lgh4;I)V

    new-instance v6, Lsz7;

    invoke-direct {v6, v8, v0}, Lsz7;-><init>(Lmz7;Lqx1;)V

    invoke-virtual {v6, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lmz7;->g(Lqx1;Lqx1;)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v4, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->sseInteractor:Lda7;

    iget-object v1, v0, Lda7;->a:Lka7;

    invoke-interface {v1}, Lka7;->c()Lfy6;

    move-result-object v1

    new-instance v2, Laa7;

    invoke-direct {v2, v0, v3}, Laa7;-><init>(Lda7;Le02;)V

    new-instance v4, Lce3;

    invoke-direct {v4, v1, v2}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v1, Lba7;

    invoke-direct {v1, v0, v3}, Lba7;-><init>(Lda7;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v4, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    new-instance v1, Lca7;

    invoke-direct {v1, v7, v3}, Lpg8;-><init>(ILe02;)V

    new-instance v4, Lde3;

    invoke-direct {v4, v2, v1}, Lde3;-><init>(Lhd3;Ldm3;)V

    iget-object v0, v0, Lda7;->f:Lr22;

    invoke-static {v4, v0}, Lud3;->b(Lhd3;Lo22;)Lhd3;

    move-result-object v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    invoke-static {v0, v1}, Lpx;->h(Lhd3;Ly22;)Ls68;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$k;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    invoke-static {v0, v3, v3, v1, v7}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->accountState:Lg6;

    iget-object v0, v0, Lg6;->b:Lfy6;

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->resetOnboardingUseCase:Lx37;

    iget-object p0, p0, Lx37;->a:Lmw5;

    invoke-interface {p0}, Lmw5;->a()V

    return-void
.end method

.method public final onFloatingClick(Led3;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$c$a$a$a$a;

    iget-object v1, p1, Led3;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "clicks"

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/util/Map;

    invoke-direct {v0, v2}, Lkd$e$c$a$a$a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->cashbackInteractor:Lp51;

    iget-object v0, v0, Lp51;->e:Lz68;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lz68;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v3, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;

    invoke-direct {v3, p0, p1, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Led3;Le02;)V

    const/4 v4, 0x3

    invoke-static {v0, v2, v2, v3, v4}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    iget-boolean p1, p1, Led3;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p1}, Ljf6;->G0()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    new-instance p1, Lix;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v2, v1}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onMenuItemClicked(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$a;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lkd$a$i$a;->e:Lkd$a$i$a;

    invoke-virtual {p1}, Lkd;->a()V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p1}, Ljf6;->G0()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lkd$a$h$c;

    invoke-direct {p1}, Lkd$a$h$c;-><init>()V

    invoke-virtual {p1}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    new-instance p1, Lqh7;

    sget-object v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;

    invoke-direct {p1, v0}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_1
    new-instance p1, Lkd$a$h$a;

    invoke-direct {p1}, Lkd$a$h$a;-><init>()V

    invoke-virtual {p1}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    new-instance p1, Lix;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void

    :cond_2
    sget-object p1, Lkd$v$a$b;->e:Lkd$v$a$b;

    invoke-virtual {p1}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    new-instance p1, Lqh7;

    sget-object v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;

    invoke-direct {p1, v0}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showOrdAdDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->l1()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showTasksAnimatedBadge(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$v;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final onScanClicked()V
    .locals 7

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->flowRouter:Luf3;

    new-instance v0, Lwh7;

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lwh7;-><init>(Ljava/lang/String;ZJLjava/lang/String;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onTabClicked(Lri8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->desktopTabsState:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->b(Lri8;)V

    return-void
.end method

.method public final onTryAgainSelectionOfTabs()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$w;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->internetConnected:Ly68;

    invoke-interface {p0}, Ly68;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showNoInternetConnection(Z)V

    :cond_0
    return-void
.end method

.method public openDesktopUrlDeeplinkInBrowser(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final pushPermissionNotAllowed()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showPushPermissionDialog()V

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->i0()V

    return-void
.end method

.method public final sendBannerWatched(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-virtual {p0, p1}, Lmo7;->a(I)V

    return-void
.end method

.method public setBonusesToolbar()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showToolbar(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpDefaultToolbar()V

    :cond_1
    return-void
.end method

.method public setBottomItem(Lri8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBottomItem(Lri8;)V

    :cond_0
    return-void
.end method

.method public setBottomNavigationSelectedIcon(Lri8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBottomSelectedIcon(Lri8;)V

    :cond_0
    return-void
.end method

.method public setBottomNavigationTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    :cond_0
    return-void
.end method

.method public setBottomNavigationTabs(Z)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBottomTabs(Z)V

    :cond_0
    return-void
.end method

.method public setChequesToolbar()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpChequesToolbar()V

    :cond_0
    return-void
.end method

.method public setDiscountToolbar()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showToolbar(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpDiscountToolbar()V

    :cond_1
    return-void
.end method

.method public setGamesToolbar()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showToolbar(Z)V

    :cond_0
    return-void
.end method

.method public setTasksToolbar()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showToolbar(Z)V

    :cond_0
    return-void
.end method

.method public showToolbar(Z)V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showToolbar(Z)V

    :cond_0
    return-void
.end method
