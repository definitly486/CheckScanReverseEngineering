.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$15"
    f = "DesktopPresenter.kt"
    l = {}
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
        "Lb36<",
        "+",
        "Led3;",
        "+",
        "Lri8;",
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
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->l:Ljava/lang/Object;

    check-cast p1, Lb36;

    iget-object v0, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Led3;

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Lri8;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$f;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    if-eqz v0, :cond_2

    iget-object v1, v0, Led3;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showFloatingButton(Led3;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Ljf6;

    move-result-object p1

    invoke-interface {p1}, Ljf6;->Z0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showScanButton(Z)V

    :cond_1
    new-instance p0, Lkd$e$c$a$a$a$b;

    iget-object p1, v0, Led3;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "shows"

    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkd$e$c$a$a$a;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->c()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->hideFloatingButton()V

    :cond_3
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Ljf6;

    move-result-object v0

    invoke-interface {v0}, Ljf6;->Z0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz v0, :cond_4

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$showScanButtonInTab(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Lri8;)Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showScanButton(Z)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
