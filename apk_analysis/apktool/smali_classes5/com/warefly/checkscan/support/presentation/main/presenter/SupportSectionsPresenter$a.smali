.class public final Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.support.presentation.main.presenter.SupportSectionsPresenter$loadContent$1"
    f = "SupportSectionsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;->loadContent()V
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
        "Ljava/util/List<",
        "+",
        "Lwf8;",
        ">;>;",
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

.field public final synthetic m:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->m:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->m:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;-><init>(Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter$a;->m:Lcom/warefly/checkscan/support/presentation/main/presenter/SupportSectionsPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showError(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz p0, :cond_7

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showLoading(Z)V

    goto/16 :goto_1

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showError(Z)V

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz p0, :cond_7

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showLoading(Z)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showError(Z)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showLoading(Z)V

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;

    if-eqz p0, :cond_7

    sget-object v0, Lal7;->a:Lal7;

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwf8;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lag8;

    invoke-direct {v3, v2}, Lag8;-><init>(Lwf8;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-static {v1, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/support/presentation/main/view/SupportSectionsView;->showContent(Ljava/util/List;)V

    :cond_7
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
