.class public final Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.qrHand.presenter.QrHandPresenter$onFirstViewAttach$1"
    f = "QrHandPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;->onFirstViewAttach()V
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
        "Lg93;",
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->m:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->m:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;-><init>(Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->l:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter$i;->m:Lcom/warefly/checkscan/presentation/qrHand/presenter/QrHandPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;

    if-eqz p0, :cond_3

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg93;

    iget-boolean v2, v0, Lg93;->e:Z

    if-nez v2, :cond_1

    iget-boolean v0, v0, Lg93;->f:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/qrHand/view/QrHandView;->handleSendButton(Z)V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
