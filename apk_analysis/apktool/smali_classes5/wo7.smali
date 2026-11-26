.class public final Lwo7;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.support.domain.useCases.SendSupportFormUseCase$invoke$1"
    f = "SendSupportFormUseCase.kt"
    l = {
        0xd,
        0xc
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lwe8;",
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

.field public final synthetic n:Lxo7;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lxo7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxo7;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lwo7;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lwo7;->n:Lxo7;

    iput-object p2, p0, Lwo7;->o:Ljava/lang/String;

    iput-object p3, p0, Lwo7;->p:Ljava/lang/String;

    iput-object p4, p0, Lwo7;->q:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
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

    new-instance v0, Lwo7;

    iget-object v3, p0, Lwo7;->p:Ljava/lang/String;

    iget-object v4, p0, Lwo7;->q:Ljava/lang/String;

    iget-object v1, p0, Lwo7;->n:Lxo7;

    iget-object v2, p0, Lwo7;->o:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lwo7;-><init>(Lxo7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lwo7;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lwo7;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lwo7;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lwo7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lwo7;->l:I

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
    iget-object v1, p0, Lwo7;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lwo7;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, p0, Lwo7;->n:Lxo7;

    iget-object p1, p1, Lxo7;->a:Llf8;

    iput-object v1, p0, Lwo7;->m:Ljava/lang/Object;

    iput v4, p0, Lwo7;->l:I

    iget-object v4, p0, Lwo7;->o:Ljava/lang/String;

    iget-object v5, p0, Lwo7;->p:Ljava/lang/String;

    iget-object v6, p0, Lwo7;->q:Ljava/lang/String;

    invoke-interface {p1, v4, v5, v6, p0}, Llf8;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    iput-object v2, p0, Lwo7;->m:Ljava/lang/Object;

    iput v3, p0, Lwo7;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
