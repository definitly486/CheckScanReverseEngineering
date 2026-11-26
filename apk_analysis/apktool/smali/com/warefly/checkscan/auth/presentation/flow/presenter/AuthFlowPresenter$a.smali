.class public final Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.auth.presentation.flow.presenter.AuthFlowPresenter$onFirstViewAttach$1"
    f = "AuthFlowPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lg6$a;",
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

.field public final synthetic m:Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->m:Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->m:Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg6$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Lg6$a;

    sget-object v0, Lg6$a$b;->a:Lg6$a$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter$a;->m:Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;->access$setAuthorized$p(Lcom/warefly/checkscan/auth/presentation/flow/presenter/AuthFlowPresenter;Z)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
