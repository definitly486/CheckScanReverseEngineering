.class public final Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$3"
    f = "BonusesMainNewPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lti7;",
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
            "Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lti7;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->l:Ljava/lang/Object;

    check-cast p1, Lti7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_1

    sget-object v0, Lti7;->Up:Lti7;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->changeSearchVisibility(Z)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
