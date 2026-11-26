.class public final Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesMainNewPresenter$onFirstViewAttach$1"
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
        "Lzl2$a;",
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
            "Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzl2$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->l:Ljava/lang/Object;

    check-cast p1, Lzl2$a;

    instance-of p1, p1, Lzl2$a$d;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;->m:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->access$getBonusBlockInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)Lwl0;

    move-result-object p1

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->access$getPresenterScope(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)Ly22;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lwl0;->k(Z)Ldf3;

    move-result-object p1

    invoke-static {p1, p0}, Lpx;->h(Lhd3;Ly22;)Ls68;

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
