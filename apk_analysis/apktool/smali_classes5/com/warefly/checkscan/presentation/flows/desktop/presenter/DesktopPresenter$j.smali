.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$20"
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
        "Ljava/lang/Boolean;",
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
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

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

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb36;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->l:Ljava/lang/Object;

    check-cast p1, Lb36;

    iget-object v0, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Lri8;

    sget-object v1, Lri8;->Cheques:Lri8;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v4, Lri8;->Bonuses:Lri8;

    if-ne p1, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    sget-object v5, Lri8;->Tasks:Lri8;

    if-ne p1, v5, :cond_2

    move p1, v3

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-eqz v0, :cond_4

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$j;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    if-eqz p0, :cond_5

    invoke-interface {p0, v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showUnreadNotificationsBadge(Z)V

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
