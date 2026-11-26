.class public final Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onPromocodeButtonActivate$1"
    f = "BonusesMainNewPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onPromocodeButtonActivate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Li57<",
        "+",
        "Lo6;",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->dismissLoadingDialog()V

    :cond_0
    instance-of v0, p1, Li57$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showPromocodeErrorBottomSheet(Lm6;)V

    goto :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showLoadingDialog()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_3

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lo6;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->access$handlePromocodeActivationResult(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Lo6;)Lj59;

    :cond_3
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
