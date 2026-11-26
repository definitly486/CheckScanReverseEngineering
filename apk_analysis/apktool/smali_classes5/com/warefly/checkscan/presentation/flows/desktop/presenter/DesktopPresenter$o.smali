.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFirstViewAttach$4"
    f = "DesktopPresenter.kt"
    l = {
        0x69
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
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

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

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getCashbackInteractor$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lp51;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$o;->l:I

    iget-object v1, p1, Lp51;->c:Ljf6;

    invoke-interface {v1}, Ljf6;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p0}, Lp51;->b(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Lp51;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
