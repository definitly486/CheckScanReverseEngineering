.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$22"
    f = "DesktopPresenter.kt"
    l = {
        0xd7
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onFirstViewAttach()V
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
.field public l:I

.field public final synthetic m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

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

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg6$a;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->l:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getDesktopTabsState$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/a;->e()V

    iput v2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$l;->l:I

    invoke-static {v3, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$refreshAllTabs(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->getCurrentTab()Lri8;

    move-result-object p0

    sget-object p1, Lri8;->Bonuses:Lri8;

    if-ne p0, p1, :cond_3

    invoke-virtual {v3}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->setBonusesToolbar()V

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
