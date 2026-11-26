.class public final Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.upridWeb.presenter.UpridWebPresenter$sendLink$1$1$1"
    f = "UpridWebPresenter.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
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

.field public final synthetic m:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

.field public final synthetic n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->m:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->n:Ljava/lang/String;

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

    new-instance p1, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->m:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->n:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;-><init>(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;Ljava/lang/String;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->l:I

    const/4 v2, 0x1

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

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->m:Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;

    invoke-static {p1}, Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;->access$getDesktopInteractor$p(Lcom/warefly/checkscan/presentation/upridWeb/presenter/UpridWebPresenter;)Lzl2;

    move-result-object p1

    new-instance v1, Lzl2$a$a;

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->n:Ljava/lang/String;

    invoke-direct {v1, v3}, Lzl2$a$a;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/warefly/checkscan/presentation/upridWeb/presenter/a;->l:I

    invoke-virtual {p1, v1, p0}, Lzl2;->a(Lzl2$a;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
