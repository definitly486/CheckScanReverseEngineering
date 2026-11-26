.class public final Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.queue.afterScanSplash.presenter.LoadingSplashPresenter$imitateLoadingWithoutSplash$1"
    f = "LoadingSplashPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->imitateLoadingWithoutSplash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/Long;",
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
.field public final synthetic l:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;->l:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;->l:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter$e;->l:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0xbb8

    invoke-interface {p0, v0, v1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;->startProgressAnimationWithoutSplash(J)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
