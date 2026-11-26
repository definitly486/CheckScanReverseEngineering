.class public final Lpp0$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.main.presenter.BonusesAutoScrollState$startAutoScroll$1$1"
    f = "BonusesAutoScrollState.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpp0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lqp0;


# direct methods
.method public constructor <init>(Lqp0;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqp0;",
            "Le02<",
            "-",
            "Lpp0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpp0$a;->l:Lqp0;

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

    new-instance p1, Lpp0$a;

    iget-object p0, p0, Lpp0$a;->l:Lqp0;

    invoke-direct {p1, p0, p2}, Lpp0$a;-><init>(Lqp0;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lpp0$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lpp0$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lpp0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lpp0$a;->l:Lqp0;

    iget-object p1, p0, Lqp0;->a:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$a;

    iget-object p0, p0, Lqp0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    iget-object p1, p1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$a;->a:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-virtual {p1}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->scrollNextSpecials(I)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
