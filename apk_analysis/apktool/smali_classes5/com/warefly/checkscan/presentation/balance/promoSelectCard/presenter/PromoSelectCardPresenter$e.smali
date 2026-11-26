.class public final Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.balance.promoSelectCard.presenter.PromoSelectCardPresenter$sendCardPreviewAction$1"
    f = "PromoSelectCardPresenter.kt"
    l = {
        0x100,
        0x102
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->sendCardPreviewAction(ILjava/lang/String;)V
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

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

.field public final synthetic o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;",
            "I",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->n:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    iput p3, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->o:I

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

    new-instance p1, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->n:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->o:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->m:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;-><init>(Ljava/lang/String;Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;ILe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->l:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "checkscan://"

    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iget v5, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->o:I

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->n:Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;

    if-eqz v1, :cond_4

    const-string v1, "checkscan://open_url"

    invoke-static {p1, v1, v4}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v6}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->access$getSendBankCardEventUseCase$p(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)Llo7;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->l:I

    iget-object p1, p1, Llo7;->a:Lr90;

    const-string v1, "PREVIEW_OPEN_INFO"

    invoke-interface {p1, v5, v1, p0}, Lr90;->a(ILjava/lang/String;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    :goto_1
    if-ne p0, v0, :cond_6

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;->access$getSendBankCardEventUseCase$p(Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter;)Llo7;

    move-result-object p1

    iput v3, p0, Lcom/warefly/checkscan/presentation/balance/promoSelectCard/presenter/PromoSelectCardPresenter$e;->l:I

    iget-object p1, p1, Llo7;->a:Lr90;

    const-string v1, "PREVIEW_CLICK"

    invoke-interface {p1, v5, v1, p0}, Lr90;->a(ILjava/lang/String;Lpg8;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Lj59;->a:Lj59;

    :goto_2
    if-ne p0, v0, :cond_6

    :goto_3
    return-object v0

    :cond_6
    :goto_4
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
