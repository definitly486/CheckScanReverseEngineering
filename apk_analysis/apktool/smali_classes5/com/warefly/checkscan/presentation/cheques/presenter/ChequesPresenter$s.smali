.class public final Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.cheques.presenter.ChequesPresenter$onFirstViewAttach$1"
    f = "ChequesPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->onFirstViewAttach()V
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->m:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->m:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;-><init>(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lzl2$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->l:Ljava/lang/Object;

    check-cast p1, Lzl2$a;

    instance-of p1, p1, Lzl2$a$g;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter$s;->m:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->access$loadScreenContent(Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
