.class public final Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter$setUpPaginator$2$items$1"
    f = "SelectionsPresenter.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lpz3;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

.field public final synthetic n:Ljava/lang/Integer;

.field public final synthetic o:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;Ljava/lang/Integer;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;",
            "Ljava/lang/Integer;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->n:Ljava/lang/Integer;

    iput p3, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->o:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->n:Ljava/lang/Integer;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->o:I

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;-><init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;Ljava/lang/Integer;ILe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->access$getFetchSelectionsByFilterUseCase$p(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)Le83;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->l:I

    iget-object p1, p1, Le83;->a:Luj6;

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->n:Ljava/lang/Integer;

    iget v2, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$c$a;->o:I

    const/16 v3, 0xa

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1, v2, v3, p0}, Luj6;->a(IIILf02;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2, v3, p0}, Luj6;->d(IILf02;)Ljava/io/Serializable;

    move-result-object p0

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method
