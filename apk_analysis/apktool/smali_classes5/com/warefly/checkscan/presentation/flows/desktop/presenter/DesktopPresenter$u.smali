.class public final Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.flows.desktop.presenter.DesktopPresenter$onFloatingClick$1"
    f = "DesktopPresenter.kt"
    l = {
        0x129,
        0x12b
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onFloatingClick(Led3;)V
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

.field public final synthetic n:Led3;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Led3;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;",
            "Led3;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->n:Led3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

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

    new-instance p1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->n:Led3;

    invoke-direct {p1, v0, p0, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;Led3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->m:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getCashbackInteractor$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lp51;

    move-result-object p1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->n:Led3;

    iget-wide v5, v1, Led3;->a:J

    iput v3, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->l:I

    iget-object v1, p1, Lp51;->c:Ljf6;

    invoke-interface {v1, v5, v6}, Ljf6;->o(J)V

    invoke-interface {v1}, Ljf6;->j()Z

    move-result v1

    iget-object p1, p1, Lp51;->a:Lu51;

    if-eqz v1, :cond_4

    invoke-interface {p1, v5, v6, p0}, Lu51;->j(JLf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lj59;->a:Lj59;

    goto :goto_0

    :cond_4
    invoke-interface {p1, v5, v6, p0}, Lu51;->k(JLf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p1, Lj59;->a:Lj59;

    :goto_0
    if-ne p1, v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {v4}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getPreferencesRepository$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Ljf6;

    move-result-object p1

    invoke-interface {p1}, Ljf6;->S()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {v4}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->access$getDesktopInteractor$p(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;)Lzl2;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter$u;->l:I

    sget-object v1, Lzl2$a$d;->a:Lzl2$a$d;

    invoke-virtual {p1, v1, p0}, Lzl2;->a(Lzl2$a;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
