.class public final Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$a;

.field private static final SPLASH_DURATION:J = 0x3L


# instance fields
.field private final appCoroutineScope:Ly22;

.field private final bannersAfterScanInteractor:Lb68;

.field private final chequeRequestQueueInteractor:Lyg1;

.field private firstCheckScanned:Z

.field private final flowRouter:Luf3;

.field private final preferencesRepository:Ljf6;

.field private final resourceProvider:Ls47;

.field private final sendBannerWatchUseCase:Lmo7;

.field private final splash:Lhc0$c;

.field private final subscriptionInteractor:Lic8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->Companion:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$a;

    return-void
.end method

.method public constructor <init>(Luf3;Ljf6;Lyg1;Lb68;Ls47;Lic8;Lmo7;Ly22;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->chequeRequestQueueInteractor:Lyg1;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->bannersAfterScanInteractor:Lb68;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->resourceProvider:Ls47;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->subscriptionInteractor:Lic8;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->sendBannerWatchUseCase:Lmo7;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->appCoroutineScope:Ly22;

    invoke-virtual {p4}, Lb68;->a()Lhc0$c;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    return-void
.end method

.method public static final synthetic access$getBannersAfterScanInteractor$p(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)Lb68;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->bannersAfterScanInteractor:Lb68;

    return-object p0
.end method

.method public static final synthetic access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)Ls47;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->resourceProvider:Ls47;

    return-object p0
.end method

.method public static final synthetic access$getSendBannerWatchUseCase$p(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)Lmo7;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->sendBannerWatchUseCase:Lmo7;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptionInteractor$p(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)Lic8;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->subscriptionInteractor:Lic8;

    return-object p0
.end method

.method public static final synthetic access$imitateLoading(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->imitateLoading()V

    return-void
.end method

.method private final imitateLoading()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-object v0, v0, Lyg1;->g:Lz68;

    :cond_0
    invoke-virtual {v0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-virtual {v0, v1, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->imitateLoadingWithSplash()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->imitateLoadingWithoutSplash()V

    return-void
.end method

.method private final imitateLoadingWithSplash()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->showLoadingWithSplash(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->showLoadingWithoutSplash(Z)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->chequeRequestQueueInteractor:Lyg1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lug1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Ltb7;

    invoke-direct {v1, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$b;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v1, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$c;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, v3, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$d;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final imitateLoadingWithoutSplash()V
    .locals 4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->showLoadingWithSplash(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->showLoadingWithoutSplash(Z)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->chequeRequestQueueInteractor:Lyg1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lug1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Ltb7;

    invoke-direct {v1, v0}, Ltb7;-><init>(Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v3, Lce3;

    invoke-direct {v3, v1, v0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$f;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v1, Lbe3;

    invoke-direct {v1, v3, v0}, Lbe3;-><init>(Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$g;

    invoke-direct {v0, p0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method private final replacePlaceholder(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->T0()J

    move-result-wide v1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v3}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->U0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p1, v3, p0}, Lvp3;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->openDeeplink(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final snapshotScannedCheques()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->firstCheckScanned:Z

    return-void
.end method


# virtual methods
.method public final checkCountScanCheque()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->skip()V

    :cond_0
    return-void
.end method

.method public final finishScannerFlow()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->flowRouter:Luf3;

    new-instance v0, Lcom/warefly/checkscan/presentation/f;

    sget-object v1, Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Cheques;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop$Cheques;

    invoke-direct {v0, v1}, Lcom/warefly/checkscan/presentation/f;-><init>(Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->g(Ldf7;)V

    return-void
.end method

.method public final onAccept()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$g$a$d$a;

    iget v0, v0, Lhc0$c;->a:I

    const-string v2, "Accept"

    invoke-static {v0, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lkd$g$a$d;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->c()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lhc0$c;->g:Lb06;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Lkd$e0$g;

    const-string v2, "Splash_"

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

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lhc0$c;->e:Ljava/lang/String;

    const-string v1, "{user_id}"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->replacePlaceholder(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->openDeeplink(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onAdInfoDialog(Lb06;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lb06;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lb06;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lkd$e0$h;

    const-string v2, "Splash_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "description"

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Ord"

    invoke-direct {v1, v2, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->showAdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->subscriptionInteractor:Lic8;

    iget-object p0, p0, Lic8;->e:Lz68;

    :cond_0
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lwc8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 5

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->snapshotScannedCheques()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lkd$g$a$d$b;

    iget v3, v0, Lhc0$c;->a:I

    const-string v4, "Shows"

    invoke-static {v3, v4}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Lkd$g$a$d;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lkd;->c()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->showSplash(Lhc0$c;)V

    :cond_0
    iget-object v2, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->appCoroutineScope:Ly22;

    new-instance v3, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$j;

    invoke-direct {v3, p0, v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Lhc0$c;Le02;)V

    const/4 v0, 0x3

    invoke-static {v2, v1, v1, v3, v0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->chequeRequestQueueInteractor:Lyg1;

    iget-object v0, v0, Lyg1;->h:Lgy6;

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;

    invoke-direct {v2, v0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;-><init>(Lgy6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i;

    invoke-direct {v0, v2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$h;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;

    invoke-direct {v2, p0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v0, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onSkip()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->splash:Lhc0$c;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lhc0$c;->g:Lb06;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$i;

    const-string v2, "Splash_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "skip"

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Ord"

    invoke-direct {v1, v2, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->finishScannerFlow()V

    return-void
.end method
