.class public final Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$onFirstViewAttach$4"
    f = "LoadingSplashPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/util/List<",
        "+",
        "Lhv6;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->m:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->m:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$k;->m:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)Ls47;

    move-result-object p1

    if-eqz v0, :cond_1

    const v1, 0x7f1400b3

    goto :goto_1

    :cond_1
    const v1, 0x7f1400b4

    :goto_1
    invoke-interface {p1, v1}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->setSplashLoadingTitle(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->setWithoutSplashLoadingTitle(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)Ls47;

    move-result-object v1

    if-eqz v0, :cond_4

    const v0, 0x7f1400b1

    goto :goto_2

    :cond_4
    const v0, 0x7f1400b2

    :goto_2
    invoke-interface {v1, v0}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->setFinishedTitle(Ljava/lang/String;)V

    :cond_5
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->access$imitateLoading(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
