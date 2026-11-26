.class public final Lj6;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.account.domain.useCases.ActivateAccountPromocodeUseCase$invoke$1"
    f = "ActivateAccountPromocodeUseCase.kt"
    l = {
        0xc,
        0xe
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lo6;",
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
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lk6;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lk6;Ljava/lang/String;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lj6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj6;->n:Lk6;

    iput-object p2, p0, Lj6;->o:Ljava/lang/String;

    iput-object p3, p0, Lj6;->p:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Lj6;

    iget-object v1, p0, Lj6;->o:Ljava/lang/String;

    iget-object v2, p0, Lj6;->p:Ljava/lang/String;

    iget-object p0, p0, Lj6;->n:Lk6;

    invoke-direct {v0, p0, v1, v2, p2}, Lj6;-><init>(Lk6;Ljava/lang/String;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lj6;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lj6;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lj6;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lj6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lj6;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lj6;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lj6;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, p0, Lj6;->n:Lk6;

    iget-object p1, p1, Lk6;->a:Lk5;

    iput-object v1, p0, Lj6;->m:Ljava/lang/Object;

    iput v4, p0, Lj6;->l:I

    iget-object v4, p0, Lj6;->o:Ljava/lang/String;

    iget-object v5, p0, Lj6;->p:Ljava/lang/String;

    invoke-interface {p1, v4, v5, p0}, Lk5;->a(Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lo6;

    if-eqz p1, :cond_5

    iput-object v2, p0, Lj6;->m:Ljava/lang/Object;

    iput v3, p0, Lj6;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_5
    const-string p0, "result banner can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method
