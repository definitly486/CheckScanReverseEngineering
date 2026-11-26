.class public final Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onOpenPromoLink$1"
    f = "BonusesMainNewPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onOpenPromoLink(I)V
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
        "Ljava/lang/String;",
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

.field public final synthetic m:I

.field public final synthetic n:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;


# direct methods
.method public constructor <init>(ILe02;Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V
    .locals 0

    iput p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->m:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->n:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;

    iget v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->m:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->n:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-direct {v0, v1, p2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;-><init>(ILe02;Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_0

    new-instance v0, Lkd$m$b$a;

    iget v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->m:I

    invoke-direct {v0, v1}, Lkd$m$b$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;->n:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_0

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
